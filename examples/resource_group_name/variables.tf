variable "ant_api_endpoint" {
  description = "The url for the Azure Naming Tool"
  type        = string
}

variable "ant_api_key" {
  description = "The api key for the Azure Naming Tool"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Environment"
  default     = "dev"
  type        = string
  validation {
    condition     = contains(["dev", "tst", "stg"], var.environment)
    error_message = "The environment must be one of: dev, tst"
  }
}

variable "location" {
  description = "Location / region"
  default     = "uksouth"
  type        = string
  validation {
    condition     = var.location == "uksouth" || var.location == "ukwest"
    error_message = "The location must be one of: uksouth, ukwest"
  }
}

variable "project" {
  description = "Project name"
  default     = "project"
  type        = string
  validation {
    condition     = length(regexall("pro*|sol*", var.project)) > 0
    error_message = "The project, application or service must start with one of: proj, sol"
  }
}