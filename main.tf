data "http" "generate_resource_name" {

  method = "POST"
  request_body = jsonencode({
    resourceEnvironment = var.environment
    resourceLocation    = var.location
    resourceType        = var.resource_type
    customComponents : {
      project    = var.project
      uniqueness = var.uniqueness
    }
  })
  request_headers = {
    accept       = "*/*"
    APIKey       = sensitive(var.api_key)
    Content-Type = "application/json"
  }
  url = format("https://%s/api/ResourceNamingRequests/RequestName", var.api_endpoint)

}