terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.68.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.6.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 5.1.0"
    }
  }
}


