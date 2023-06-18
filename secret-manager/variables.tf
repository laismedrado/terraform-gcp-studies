variable "secret_names" {
  type    = list(string)
  default = ["google_auth_client_id", "google_auth_client_secret", "auth0_client_id", "auth0_client_secret", "sendgrid_api_key"]
}

data "google_secret_manager_secret_version" "google_auth_client_id" {
  project = "terraform-gcp-studies"
  secret  = google_secret_manager_secret.secrets[index(var.secret_names, "google_auth_client_id")].secret_id
  version = "latest"
}


