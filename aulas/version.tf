# terraform {
#   required_version = "~> 1.4.6"
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "4.66.0"
#     }
#   }
# }

terraform {
  required_version = "~> 1.4.6"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.66.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}