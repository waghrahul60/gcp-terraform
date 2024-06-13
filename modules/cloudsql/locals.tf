locals {
  environment = reverse(split("-", var.project_id))[0]

  default_labels = {
    project     = var.project_id
    environment = local.environment
    name        = var.instance_name
  }
  
  user_labels = merge(local.default_labels, var.labels)

  database_type = regex("[^_]+", var.db_version)

  mysql_flags = [
    { name = "cloudsql_iam_authentication", value = "on" },
    { name = "general_logs", value = "on" }
  ]

  postgresql_flags = [
    { name = "cloudsql.enable_pgaudit", value = "on" },
    { name = "cloudsql.iam_authentication", value = "on" }
  ]

  cloudsql_flags = local.database_type == "MYSQL" ? concat(local.mysql_flags,var.database_flags) : concat(local.postgresql_flags, var.database_flags)
  
  #  value, you can adjust or replace with your actual database flags for sql server
  database_flags = local.database_type == "SQLSERVER" ? var.database_flags : local.cloudsql_flags


  disk_size = 1000 # Example value, please adjust as per your requirements

  # Example value, you can adjust or replace with your actual user labels
  actual_user_labels = {
    environment = "production"
    app         = "my-app"
  }


  # Example value, you can adjust or replace with your actual point_in_time_recovery_enabled
  point_in_time_recovery_enabled = true

  iam_users = local.database_type == "SQLSERVER" ? [] : [
    for u in var.iam_user_emails : {
      email              = u,
      is_service_account = trimsuffix(u, "gserviceaccount.com") == u ? false : true
    }
  ]
}
