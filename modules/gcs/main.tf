resource "google_storage_bucket" "bucket" {
  name                        = var.bucketname
  project                     = var.project_id
  location                    = var.region
  storage_class               = var.storage_class
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = true
  labels                      = merge(local.default_labels)

  versioning {
    enabled = var.versioning
  }

  # encryption {
  #   default_kms_key_name = local.kms_key
  # }

  dynamic "retention_policy" {
    for_each = [for v in var.retention : {
      period = v
    }]
    content {
      retention_period = retension_policy.value.period * 24 * 3600
    }
  }

  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_rules
    content {
      action {
        type          = lifecycle_rule.value.action.type
        storage_class = lookup(lifecycle_rule.value.action, "storage_class", null)
      }

      condition {
        age                   = lookup(lifecycle_rule.value.condition, "age", null)
        created_before        = lookup(lifecycle_rule.value.condition, "created_before", null)
        with_state            = lookup(lifecycle_rule.value.condition, "with_state", null)
        matches_storage_class = lookup(lifecycle_rule.value.condition, "matches_storage_class", null)
        num_newer_versions    = lookup(lifecycle_rule.value.condition, "num_newer_versions", null)

      }
    }
  }
}

resource "google_storage_bucket_iam_binding" "storage_admin" {
  count   = length(local.storage_admin_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.admin"
  members = toset(local.storage_admin_members)
}

resource "google_storage_bucket_iam_binding" "storage_object_admin" {
  count   = length(local.storage_object_admin_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.objectAdmin"
  members = toset(local.storage_object_admin_members)

}

resource "google_storage_bucket_iam_binding" "storage_object_creator" {
  count   = length(local.storage_object_creator_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.objectCreator"
  members = toset(local.storage_object_creator_members)

}

resource "google_storage_bucket_iam_binding" "storage_object_viewer" {
  count   = length(local.storage_object_viewer_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.objectViewer"
  members = toset(local.storage_object_viewer_members)

}

resource "google_storage_bucket_iam_binding" "storage_legacy_bucket_owner" {
  count   = length(local.storage_legacy_bucket_owner_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.legacyBucktOwner"
  members = toset(local.storage_legacy_bucket_owner_members)
}

resource "google_storage_bucket_iam_binding" "storage_legacy_bucket_reader" {
  count   = length(local.storage_legacy_bucket_reader_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.legacyBucketReader"
  members = toset(local.storage_legacy_bucket_reader_members)

}

resource "google_storage_bucket_iam_binding" "storage_legacy_bucket_writer" {
  count   = length(local.storage_legacy_bucket_writer_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.legacyBucketWriter"
  members = toset(local.storage_legacy_bucket_writer_members)

}

resource "google_storage_bucket_iam_binding" "storage_legacy_object_owner" {
  count   = length(local.storage_legacy_object_owner_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.legacyObjectOwner"
  members = toset(local.storage_legacy_object_owner_members)

}

resource "google_storage_bucket_iam_binding" "storage_legacy_object_reader" {
  count   = length(local.storage_legacy_object_reader_members) > 0 ? 1 : 0
  bucket  = google_storage_bucket.bucket.name
  role    = "roles/storage.legacyObjectReader"
  members = toset(local.storage_legacy_object_reader_members)

}


###################  Notification  ###################

resource "google_storage_notification" "notification" {
  for_each           = { for s in local.notifications : "${s.topic}-${s.object_name_prefix}" => s }
  bucket             = var.bucketname
  payload_format     = each.value.payload_format
  topic              = each.value.topic
  event_types        = each.value.event_types
  object_name_prefix = each.value.object_name_prefix
  custom_attributes  = each.value.custom_attributes
  depends_on         = [google_storage_bucket.bucket]

}
