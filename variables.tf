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

}

variable "location" {
  description = "The location"
  default     = null
  type        = string
}

variable "project" {
  description = "The project"
  default     = null
  type        = string
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