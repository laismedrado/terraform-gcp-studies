variable "project" {
  type    = string
  default = "terraform-gcp-studies"
}

resource "google_project_service" "secretmanager" {
  service = "secretmanager.googleapis.com"
}

variable "env" {
  type        = string
  description = "Environment"
}

resource "google_secret_manager_secret" "secrets" {
  count      = length(var.secret_names)
  depends_on = [google_project_service.secretmanager]

  project   = "terraform-gcp-studies"
  secret_id = "gcp-studies-${var.env}-${var.secret_names[count.index]}"
  labels = {
    module = "gcp-studies"
    env    = var.env
  }
  replication {
    user_managed {
      replicas {
        location = "northamerica-northeast1"
      }
    }
  }
}

resource "google_storage_bucket" "terraform-state-bucket" {
  name     = data.google_secret_manager_secret_version.google_auth_client_id.secret_data
  location = "northamerica-northeast1"
  project  = "terraform-gcp-studies"
}
