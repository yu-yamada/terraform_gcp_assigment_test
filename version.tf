terraform {
  required_version = "~> 1.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.36.0"
    }
    google-beta = {
      source  = "yu-yamada/google-beta"
      version = "9.99.9"
    }
  }
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_regions["us-central"]
}

provider "google-beta" {
  project = var.gcp_project
  region  = var.gcp_regions["us-central"]
}
