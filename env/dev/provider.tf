terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.23.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "test-417517"
  region  = "us-west1"
  zone    = "us-west1-a"
}
