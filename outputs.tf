output "cli_workspace" {
  value = "https://app.terraform.io/app/${data.tfe_organization.org.name}/workspaces/${tfe_workspace.cli.name}"
}

output "cli_branch" {
  value = "${github_repository.development.html_url}/tree/${github_branch.cli.branch}"
}

output "development_workspace" {
  value = "https://app.terraform.io/app/${data.tfe_organization.org.name}/workspaces/${tfe_workspace.development.name}"
}

output "development_clone_url" {
  value = github_repository.development.ssh_clone_url
}

output "development_repository" {
  value = github_repository.development.html_url
}

output "production_workspace" {
  value = "https://app.terraform.io/app/${data.tfe_organization.org.name}/workspaces/${tfe_workspace.production.name}"
}

output "production_repository" {
  value = github_repository.production.html_url
}

output "production_clone_url" {
  value = github_repository.production.ssh_clone_url

}

# output "cli_workspace" {
#   description = "See the repository readme for setup instructions"
#     value = {
#      workspace_name = tfe_workspace.cli.name
#      workspace_url  = "https://app.terraform.io/app/${data.tfe_organization.org.name}/workspaces/${tfe_workspace.cli.name}"
#      repository     = github_repository.development.full_name
#      branch        = "${github_repository.development.html_url}/tree/${github_branch.cli.branch}"
#     }
#   }
