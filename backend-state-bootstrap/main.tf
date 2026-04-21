# Create a resource group using the generated random name
resource "azurerm_resource_group" "example" {
  location = var.resource_group_location
  name     = var.resource_group_name
}

# Create a storage account for Terraform backend
resource "azurerm_storage_account" "backend" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  access_tier              = var.access_tier
}

# Create a blob container for Terraform state files
resource "azurerm_storage_container" "backend" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.backend.id
  container_access_type = "private"
}