variable "api_endpoint" {
  description = "the API endpoint uri"
  default     = null
  type        = string
}

variable "api_key" {
  description = "The API key to create names within ANT"
  type        = string
  default     = null
  sensitive   = true
}

variable "environment" {
  description = "The environment"
  default     = null
  type        = string
  validation {
    condition     = contains(["dev", "tst", "stg"], var.environment)
    error_message = "The environment must be one of: dev, tst"
  }
}

variable "location" {
  description = "The location"
  default     = null
  type        = string
  validation {
    condition     = var.location == "uks" || var.location == "ukw"
    error_message = "The location must be one of: uks, ukw"
  }
}

variable "project_application_service" {
  description = "The project"
  default     = null
  type        = string
  validation {
    condition     = length(regexall("tn*|cs*", var.project_application_service)) > 0
    error_message = "The project, application or service must start with one of: tn, cs"
  }
}

variable "uniqueness" {
  description = "A uniqueness value - sourced from random"
  default     = null
  type        = string
}

variable "resource_type" {
  description = "The resource type as defined in ANT"
  default     = null
  type        = string
}