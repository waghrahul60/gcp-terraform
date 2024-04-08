############### Creating GCS bucket #################

module "my_gcs" {
  source     = "../../modules/gcs"
  bucketname = "test-bucket-545658354"
  project_id = "test-417517"
  region     = "us-west1"
  versioning = true
  labels     = merge(local.required_gcs_labels, { "Components" : "testBucket" })
  iam_roles  = { "roles/storage.admin" : ["serviceAccount:396413313591-compute@developer.gserviceaccount.com"] }
  #kms_key = google_kms_crypto_key.example-key.id
}
