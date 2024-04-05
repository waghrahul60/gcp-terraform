locals {
  notifications = flatten([
    for k, v in var.notification : {
      payload_format = lookup(v, "payload_format", "NONE")
      topic          = lookup(v, "topic", null)
      event_types        = lookup(v, "event_types", null)
      object_name_prefix = lookup(v, "object_name_prefix", null)
      custom_attributes  = lookup(v, "custom_attributes", null)
    }
    ]
  )

  environment = reverse(split("-", var.project_id))[0]

  default_labels = {
    project     = var.project_id
    environment = local.environment
    name        = var.bucketname
  }

  kms_key = var.kms_key != null ? var.kms_key : "abcd"

  storage_admin_members                = lookup(var.iam_roles, "roles/storage.admin, []")
  storage_object_admin_members         = lookup(var.iam_roles, "roles/storage.objectAdmin, []")
  storage_object_creator_members       = lookup(var.iam_roles, "roles/storage.objectCreator, []")
  storage_object_viewer_members        = lookup(var.iam_roles, "roles/storage.objectViewer, []")
  storage_legacy_bucket_owner_members  = lookup(var.iam_roles, "roles/storage.legacyBucketOwner, []")
  storage_legacy_bucket_reader_members = lookup(var.iam_roles, "roles/storage.legacyBucketReader, []")
  storage_legacy_bucket_writer_members = lookup(var.iam_roles, "roles/storage.legacyBucketWriter, []")
  storage_legacy_object_owner_members  = lookup(var.iam_roles, "roles/storage.legacyObjectOwner, []")
  storage_legacy_object_reader_members = lookup(var.iam_roles, "roles/storage.legacyObjectReader, []")
}