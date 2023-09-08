module "generate_resource_group_name" {

  source = "../"

  api_endpoint  = var.ant_api_endpoint
  api_key       = var.ant_api_key
  environment   = var.environment
  location      = var.location
  project       = var.project
  uniqueness    = random_id.resource_groups.id
  resource_type = "rg"

}