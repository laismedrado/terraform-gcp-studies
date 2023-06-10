provider "google" {
  project = "terraform-gcp-studies"
  region  = "northamerica-northeast1"
}

resource "google_storage_bucket" "terraform-state-bucket" {
  name     = "terraform-gcp-studies-bucket"
  location = "northamerica-northeast1"
  project  = var.project
}