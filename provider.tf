terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.15.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 7.15.0"
    }
  }
  backend "gcs" {
    bucket = "TODO"
    prefix = "TODO"
  }
}