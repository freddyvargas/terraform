# Export the resource group name created for backend storage.
output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

# Export the storage account name used by the Terraform backend.
output "storage_account_name" {
  value = azurerm_storage_account.backend.name
}

# Export the blob container name that stores the Terraform state file.
output "container_name" {
  value = azurerm_storage_container.backend.name
}