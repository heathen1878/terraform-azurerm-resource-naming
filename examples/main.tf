module "generate_resource_group_name" {

  source = "../"

  api_endpoint  = var.ant_api_endpoint
  api_key       = var.ant_api_key
  environment   = var.environment
  location      = local.locations[var.location].short_code
  project       = var.project
  uniqueness    = random_id.resource_group.id
  resource_type = "rg"

}

locals {

  locations = {
    uksouth = {
      short_code = "us"
    }
    ukwest = {
      short_code = "uw"
    }
  }







}