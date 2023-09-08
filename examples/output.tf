output "resource_group_name" {
    description = "Auto-generated resource group name"
    value = module.generate_resource_group_name.response_name.body
}