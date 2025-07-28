output "cli_workspace" {
  value = tfe_workspace.cli.name
}

output "cli_branch" {
  value = "${github_repository.development.html_url}/tree/${github_branch.cli.branch}"
}

output "development_workspace" {
  value = tfe_workspace.development.name
}

output "development_repository" {
  value = github_repository.development.html_url
}

output "production_workspace" {
  value = tfe_workspace.production.name
}

output "production_repository" {
  value = github_repository.production.html_url
}

