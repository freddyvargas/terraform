terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-backend-state-test"
    storage_account_name = "tfbackendstatetest"
    container_name       = "tfstate"
    key                  = "exercises-questions-terraform-004portal.tfstate"
  }
}

variable "project_prefix" {
  type        = string
  default     = "terraform004"
  description = "Prefix used to build the final resource name."
}

resource "random_id" "name_suffix" {
  byte_length = 4
}

locals {
  combined_name = "${var.project_prefix}-${random_id.name_suffix.hex}"
}

resource "null_resource" "example" {
  triggers = {
    combined_name = local.combined_name
  }
}

output "combined_name" {
  value       = local.combined_name
  description = "Combined string using a random_id and variable via a local value."
}
