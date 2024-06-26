locals {
  project_name = "test-417517"
  default_labels = {
    "env" : "dev",
    "terraform" : "true",
    "user" : "me",
    "owner" : "rahul",
    "region" : "india"
  }
  required_gcs_labels = merge(local.default_labels, {
    "lifecycle_policy_required" : "none",
    "componenet" : "bucket"
  })

}
