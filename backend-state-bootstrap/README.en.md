# Terraform Backend Bootstrap for Azure

This Terraform configuration creates the necessary Azure resources to set up a remote backend for Terraform state files. It provisions:

- A resource group
- A storage account with blob storage
- A blob container for storing Terraform state files

This allows multiple Terraform projects and tests to share the same backend infrastructure, using different keys in the container.

## Usage

1. Ensure you are logged in to Azure CLI: `az login`

2. Initialize Terraform:
   ```
   terraform init
   ```

3. Plan the deployment:
   ```
   terraform plan
   ```

4. Apply the configuration:
   ```
   terraform apply
   ```

5. Note the output values (resource group name, storage account name, container name) for use in other Terraform projects.

## Configuring Backend in Other Projects

In your main Terraform projects, add the following backend configuration in a `terraform` block:

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "<output_resource_group_name>"
    storage_account_name = "<output_storage_account_name>"
    container_name       = "<output_container_name>"
    key                  = "project-name.tfstate"  # Unique key for each project
  }
}
```

Replace the placeholders with the actual output values from this bootstrap.

## Variables

- `resource_group_location`: Azure region (default: eastus)
- `resource_group_name_prefix`: Prefix for RG name (default: rg)
- `storage_account_name`: Name of storage account (must be globally unique, default: tfbackendstorage)
- `container_name`: Name of blob container (default: tfstate)