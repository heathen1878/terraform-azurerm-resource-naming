variable "ant_api_endpoint" {
  description = "The url for the Azure Naming Tool"
  type = string
}

variable "ant_api_key" {
  description = "The api key for the Azure Naming Tool"
  type = string
  sensitive = true
}

variable "environment" {
  description = "Environment"
  default     = "env"
  type = string
}

variable "location" {
  description = "Location / region"
  default = "uksouth"
  type = string
}

variable "project" {
  description = "Project name"
  default = "project"
  type = string
}