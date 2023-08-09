data "http" "generate_resource_name" {

  method = "POST"
  request_body = jsonencode({
    resourceEnvironment = var.environment,
    resourceLocation    = var.location
    resourceProjAppSvc  = var.project_application_service
    resourceType        = var.resource_type
  })
  request_headers = {
    accept       = "*/*"
    APIKey       = sensitive(var.api_key)
    Content-Type = "application/json"
  }
  url = format("https://%s/api/ResourceNamingRequests/RequestName", var.api_endpoint)
  
}
