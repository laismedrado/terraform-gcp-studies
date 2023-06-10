terraform {
  backend "gcs" {
    bucket = "terraform-gcp-studies-bucket"
    prefix = "terraform-gcp-studies/terraform.tfstate"
  }
}