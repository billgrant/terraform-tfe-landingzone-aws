provider "tfe" {
  # Change the hostname for self-hosted (TFE)
  hostname = "app.terraform.io"
  token    = var.token
}
data "tfe_organization" "org" {
  name = var.organization_name
}

data "tfe_project" "project" {
  name        = var.project_name
  organization = data.tfe_organization.org.name
}