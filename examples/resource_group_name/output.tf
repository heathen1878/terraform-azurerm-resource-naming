output "resource_group_name" {
  description = "Auto-generated resource group name"
  value = {
    for key, value in module.generate_resource_group_name : key => {
      name = value.resourceName
    }
  }
}