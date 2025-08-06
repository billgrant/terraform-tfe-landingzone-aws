variable "token" {
  description = "TFE/HCPT API token"
  type        = string
  default     = ""
}

variable "organization_name" {
  description = "The name of the TFE/HCPT organization"
  type        = string
  default     = ""
}

variable "project_name" {
  description = "The TFE/HCPT project name"
  type        = string
}

variable "service_name" {
  description = "The name of the service being deployed"
  type        = string
}

variable "gh_token" {
  description = "GitHub API token"
  type        = string
  default     = ""
}

variable "gh_owner" {
  description = "GitHub owner for the repository"
  type        = string
  default     = ""
}

variable "gh_template_repository" {
  description = "GitHub template repository to use for the new repository"
  type        = string
}
