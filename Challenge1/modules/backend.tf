provider "template" {
  #version = "~>2.1.2"
}

provider "google" {
  #version = "=3.23.0"
  project = var.project_id
}

provider "google-beta" {
  #version = "=3.23.0"
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  required_version = "=1.0.0"
  backend "gcs" {
    bucket = var.backend_bucket
    prefix = var.backend_prefix
  }
}
