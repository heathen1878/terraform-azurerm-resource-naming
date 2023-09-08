output "resource_name" {
  value = jsondecode(data.http.generate_resource_name.response_body)
}