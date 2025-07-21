variable "token" {
  description = "TFE/HCPT API token"
  type        = string
}

variable "organization_name" {
  description = "The name of the TFE/HCPT organization"
  type        = string
}

variable "project_name" {
  description = "The TFE/HCPT project name"
  type        = string
}

variable "service_name" {
  description = "The name of the service being deployed"
  type        = string
}
