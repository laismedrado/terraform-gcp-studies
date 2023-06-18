output "secrets" {
  depends_on = [
    google_secret_manager_secret.secrets
  ]
  description = "List of Secret Manager secret IDs utilized by the module"
  value = tolist([
    google_secret_manager_secret.secrets
  ])

}

