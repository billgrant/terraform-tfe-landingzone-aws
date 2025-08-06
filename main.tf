provider "tfe" {
  # Change the hostname for self-hosted (TFE)
  hostname = "app.terraform.io"
  token    = var.token
}

provider "github" {
  token = tostring(ephemeral.vault_kv_secret_v2.githubtoken.data.token)
}

provider "vault" {
  auth_login_userpass {
    # remove the namespace if you are not using HCP Vault Dedicated
    namespace = "admin"
  }
}