resource "random_id" "resource_group" {

  keepers = {
    environment                 = var.environment
    location                    = var.location
    project_application_service = var.project
  }
  byte_length = 6
}