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
    condition     = var.environment == "dev" || var.environment == "tst"
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
    condition     = var.project_application_service == "tn" || var.project_application_service == "cs"
    error_message = "The project, application or service must be one of: tn, cs"
  }
}

variable "resource_type" {
  description = "The resource type as defined in ANT"
  default     = null
  type        = string
}