variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "rg-backend-state-test"
  description = "Name of the resource group."
}

variable "storage_account_name" {
  type        = string
  default     = "tfbackendstatetest"
  description = "Name of the storage account for Terraform backend. Must be globally unique."
}

variable "container_name" {
  type        = string
  default     = "tfstate"
  description = "Name of the blob container for Terraform state files."
}