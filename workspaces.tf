resource "tfe_workspace" "cli" {
  name         = "${var.service_name}-cli"
  organization = data.tfe_organization.org.name
    auto_apply   = true
    project_id = data.tfe_project.project.id
  tags         = {
      environment = "development"
      team_owner  = "Bill"
  }
}