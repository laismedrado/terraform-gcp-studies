terraform {
  required_version = "~> 1.4.6"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}