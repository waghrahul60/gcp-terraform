# Variable Declarations
variable "bucketname" {
  description = "The name of the Google Cloud Storage bucket."
  type = string
}

variable "project_id" {
  description = "The ID of the Google Cloud project."
  type = string
}

variable "region" {
  description = "The region where the Google Cloud Storage bucket will be located."
  type = string
}

variable "storage_class" {
  description = "The storage class of the Google Cloud Storage bucket."
  type = string
  default = "REGIONAL"
}

variable "force_destroy" {
  description = "Specifies whether to allow the deletion of the bucket and its contents.(destroyed with data)"
  type = bool
  default = false
}

variable "versioning" {
  description = "Specifies whether to enable versioning for the objects in the bucket."
  type = bool
  default = true
}

variable "retention" {
  description = "A list of retention periods for objects in the bucket."
  type = any
  default = []
  validation {
    condition = length(var.retention) <= 1
    error_message = "length  of retention variable be 0 or 1" 
  }
}

variable "kms_key" {
  description = "The default KMS key to use for encrypting objects in the bucket."
  type = string
  default = null
}

variable "lifecycle_rules" {
  description = "A list of lifecycle rules for managing objects in the bucket."
  type = list(object({
    action = object({
      type = string
      storage_class = optional(string)
    })
    condition = object({
      age = optional(number)
      created_before = optional(string)
      with_state = optional(string)
      matches_storage_class = optional(list(string))
      num_newer_versions = optional(number)

    })
  }))
  default = []
}

variable "iam_roles" {
    type = map(list(string))
    default = {}

    validation {
      condition = alltrue(
        [
            for k in keys(var.iam_roles) : contains(["roles/storage.admin", "roles/storage.objectAdmin", "roles/storage.objectCreator", "roles/storage.objectViewer", "roles/storage.legacyBucketOwner", "roles/storage.legacyBucketReader", "roles/storage.legacyBucketWriter", "roles/storage.legacyObjectOwner", "roles/storage.legacyObjectReader" ], k)
        ]
      )
      error_message = "only roles/storage.admin, roles/storage.objectAdmin, roles/storage.objectCreator, roles/storage.objectViewer, roles/storage.legacyBucketOwne, roles/storage.legacyBucketReader, roles/storage.legacyBucketWriter, roles/storage.legacyObjectOwner, roles/storage.legacyObjectReader allwod"
    }
  
}


variable "labels" {
  description = "Default labels to be applied to the bucket."
  type = map(any)

  validation {
    condition = alltrue([
        for t in [
            "user","owner","env","region"
        ] : contains(keys(var.labels), t)
    ])
    error_message = "pls include all manderatory tags"
  }
}


variable "notification" {
  description = "A list of notifications to be set up for the bucket."
  default = []
}