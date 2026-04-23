# Terraform variable values for backend-state-bootstrap.
# Update these only when deploying a different backend bootstrap configuration.
resource_group_location = "eastus"
resource_group_name = "rg-backend-state-test"
storage_account_name = "tfbackendstatetest"
container_name = "tfstate"

account_tier = "Standard"
account_replication_type = "LRS"
account_kind = "StorageV2"
access_tier = "Hot"
