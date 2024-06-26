variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "private_network" {
  description = "The name of the private network."
  type        = string
  default = "default"
}

variable "instance_name" {
  description = "The name of the SQL database instance."
  type        = string
  default     = null
}

variable "region" {
  description = "The region for the SQL database instance."
  type        = string
  default     = "us-west1"
}

variable "database_version" {
  description = "The version of the database to be used."
  type        = string
  default     = "POSTGRES_14"
}

variable "tier" {
  description = "The machine tier (e.g., db-n1-standard-1) for the SQL database instance."
  type        = string
  default     = "db-custom"
}

variable "deletion_protection" {
  description = "Whether deletion protection is enabled for the SQL database instance."
  type        = bool
  default = true
}

variable "availability_type" {
  description = "The availability type for the SQL database instance."
  type        = string
  default = "REGIONAL"
}

variable "disk_autoresize" {
  description = "Whether disk auto-resize is enabled for the SQL database instance."
  type        = bool
}

variable "disk_type" {
  description = "The type of disk for the SQL database instance."
  type        = string
  default = "PD_SSD"
}

variable "disk_size" {
  description = "The type of disk for the SQL database instance."
  type        = number
  default = 10
}
variable "zone" {
  description = "The primary zone for the SQL database instance."
  type        = string
  default = ""
}

variable "secondary_zone" {
  description = "The secondary zone for the SQL database instance."
  type        = string
  default = ""
}

variable "backup_enabled" {
  description = "Whether backups are enabled for the SQL database instance."
  type        = bool
  default = true
}

variable "backup_location" {
  description = "The location where backups are stored for the SQL database instance."
  type        = string
}

variable "backup_start_time" {
  description = "The time when backups should start for the SQL database instance."
  type        = string
}

variable "transaction_log_retention_days" {
  description = "The number of days transaction logs are retained for the SQL database instance."
  type        = number
  default = 2
}

variable "retained_backups" {
  description = "The number of retained backups for the SQL database instance."
  type        = number
  default = 4
}

variable "retention_unit" {
  description = "The unit of retention for backups (e.g., days, weeks, months) for the SQL database instance."
  type        = string
  default = "COUNT"
}

variable "maintenance_window" {
  description = "The maintenance window configuration for the SQL database instance."
  type = list(object({
    day          = number
    hour         = number
    update_track = string
  }))
  default = [{
    day = 2, hour = 6, update_track = "canary"
  }]
}

variable "insights_config" {
  description = "The configuration for database insights."
  type = object({
    query_insights_enabled      = bool
    query_string_length         = number
    recorecord_application_tags = bool
    recorecord_client_address   = bool
  })
  default = {
    query_insights_enabled = true
    query_string_length = 500
    recorecord_application_tags = false
    recorecord_client_address = false
  }
}

variable "root_password" {
  description = "The root password for the SQL database instance."
  type        = string
  default = null
  sensitive = true
}

variable "database_flags" {
  description = "Custom database flags for the SQL database instance."
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

variable "db_version" {
  type    = string
  default = "POSTGRES_14"
}


variable "bcakup_start_time" {
  description = "Backup start time added here"
  default = "00:00"

}

variable "labels" {
  type = map(any)
  validation {
    condition = alltrue([
      for t in [
        "user", "region", "service"
      ] : contains(keys(var.labels), t)

    ])
    error_message = "pls include all mandatory labels like user,region,service"
  }

}


############ Iam User variables ########

variable "iam_user_emails" {
  description = "list of IAM users"
  type        = list(string)
  default     = ["admin@iam.gserviceaccount.com"]
}

variable "db_names" {
  description = "List of database names."
  type        = list(string)
}


variable "deletion_policy" {
  description = "Whether deletion protection is enabled for the SQL user."
  type        = string
  default     = "ABANDON"
}


################### static user #################

variable "user_names" {
  description = "SQLServer DB"
  type        = list(string)
  default     = []
  sensitive   = true

}

variable "user_passwords" {
  description = "SQLServer DB user passwords"
  type        = list(string)
  default     = []
  sensitive   = true

}

