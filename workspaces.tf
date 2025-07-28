data "tfe_organization" "org" {
  name = var.organization_name
}

data "tfe_project" "project" {
  name         = var.project_name
  organization = data.tfe_organization.org.name
}

data "tfe_oauth_client" "client" {
  organization     = data.tfe_organization.org.name
  service_provider = "github"
}

resource "tfe_workspace" "cli" {
  name         = "${var.service_name}-cli"
  organization = data.tfe_organization.org.name
  auto_apply   = true
  project_id   = data.tfe_project.project.id
  force_delete = true
  tags = {
    environment = "development"
    team_owner  = "Bill"
  }
}

resource "tfe_workspace" "development" {
  name                 = "${var.service_name}-development"
  organization         = data.tfe_organization.org.name
  queue_all_runs       = true
  auto_apply = true
  project_id   = data.tfe_project.project.id
  force_delete = true
  vcs_repo {
    branch             = "main"
    identifier         = github_repository.development.full_name
    oauth_token_id     = data.tfe_oauth_client.client.oauth_token_id
  }
}

resource "tfe_workspace" "production" {
  name                 = "${var.service_name}-production"
  organization         = data.tfe_organization.org.name
  queue_all_runs       = true
  auto_apply = true
  project_id   = data.tfe_project.project.id
  force_delete = true
  vcs_repo {
    branch             = "main"
    identifier         = github_repository.production.full_name
    oauth_token_id     = data.tfe_oauth_client.client.oauth_token_id
  }
}