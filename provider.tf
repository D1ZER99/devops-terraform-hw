terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-bucket-99"
    prefix = "terraform/state" 
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}