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

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "Tier of the storage account."
}

variable "account_replication_type" {
  type        = string
  default     = "LRS"
  description = "Replication type of the storage account."
}

variable "account_kind" {
  type        = string
  default     = "StorageV2"
  description = "Kind of the storage account."
}

variable "access_tier" {
  type        = string
  default     = "Hot"
  description = "Access tier of the storage account."
}
