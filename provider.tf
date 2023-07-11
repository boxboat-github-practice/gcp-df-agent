provider "google" {
  project = "boxboat-dev"
  region  = "us-central1"
  zone    = "us-central1-c"
}

terraform {
  required_version = "1.5.2"

  backend "gcs" {
    bucket = "df-terra"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}
