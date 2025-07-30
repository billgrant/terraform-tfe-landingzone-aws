provider "tfe" {
  # Change the hostname for self-hosted (TFE)
  hostname = "app.terraform.io"
  token    = var.token
}

provider "github" {
  token = var.gh_token
}

# provider "vault" {}