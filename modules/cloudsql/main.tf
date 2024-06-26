data "google_compute_network" "private_network" {
  project = var.project_id
  name    = var.private_network
}

# data "google_sql_database_instance" "master" {
#   name    = var.instance_name
#   project = var.project_id
# }

####################### create Master Instance #######################
resource "google_sql_database_instance" "master" {
  name                = var.instance_name
  project             = var.project_id
  region              = var.region
  database_version    = var.database_version
  encryption_key_name = ""

  settings {
    tier                        = var.tier
    deletion_protection_enabled = var.deletion_protection
    availability_type           = var.availability_type
    disk_autoresize             = var.disk_autoresize
    disk_size                   = var.disk_size
    disk_type                   = var.disk_type

    location_preference {
      zone           = var.zone
      secondary_zone = var.secondary_zone
    }

    ip_configuration {
      ipv4_enabled    = false
      private_network = data.google_compute_network.private_network.self_link
      require_ssl     = true
    }

    backup_configuration {
      enabled                        = var.backup_enabled
      binary_log_enabled             = var.backup_enabled && local.database_type == "MYSQL" ? false : false
      location                       = var.backup_location
      start_time                     = var.bcakup_start_time
      point_in_time_recovery_enabled = local.point_in_time_recovery_enabled
      transaction_log_retention_days = var.transaction_log_retention_days
      backup_retention_settings {
        retained_backups = var.retained_backups
        retention_unit   = var.retention_unit
      }
    }

    dynamic "maintenance_window" {
      for_each = var.maintenance_window
      content {

        day          = lookup(maintenance_window.value, "day", null)
        hour         = lookup(maintenance_window.value, "hour", null)
        update_track = lookup(maintenance_window.value, "update_track", null)

      }

    }

    dynamic "insights_config" {
      for_each = var.insights_config != null ? [var.insights_config] : []

      content {
        query_insights_enabled  = lookup(insights_config.value, "query_insights_enabled", true)
        query_string_length     = lookup(insights_config.value, "query_string_length", 1024)
        record_application_tags = lookup(insights_config.value, "record_application_tags", true)
        record_client_address   = lookup(insights_config.value, "record_client_address", true)

      }

    }

    dynamic "database_flags" {
      for_each = local.database_flags
      content {
        name  = lookup(database_flags.value, "name", null)
        value = lookup(database_flags.value, "value", null)
      }

    }

    user_labels = local.user_labels


  }

  root_password = var.root_password

  deletion_protection = var.deletion_protection
}


########## Create DB ############

resource "google_sql_database" "database" {
  count    = var.db_names == null ? 0 : length(var.db_names)
  name     = var.db_names[count.index]
  project  = var.project_id
  instance = google_sql_database_instance.master.name
}

resource "google_sql_user" "iam_account" {
  for_each = {
    for u in local.iam_users :
    "${u.email} ${u.is_service_account}" => u
  }

  project = var.project_id


  name = each.value.is_service_account ? (local.database_type == "MYSQL" ? each.value.email : trimsuffix(each.value.email, ".com")) : (each.value.email)


  instance = google_sql_database_instance.master.name
  type     = each.value.is_service_account ? "CLOUD_IAM_SERVICE_ACCOUNT" : "CLOUD_IAM_USER"

  host = local.database_type == "MYSQL" ? null : ""

  deletion_policy = var.deletion_policy

  lifecycle {
    ignore_changes = [
      host
    ]
  }

  depends_on = [
    google_sql_database_instance.master
  ]
}


resource "google_sql_user" "default" {
  count           = length(var.user_names)
  project         = var.project_id
  name            = var.user_names[count.index]
  instance        = google_sql_database_instance.master.name
  host            = ""
  password        = sensitive(var.user_passwords[count.index])
  deletion_policy = var.deletion_policy
  depends_on = [
    google_sql_database_instance.master

  ]

}
