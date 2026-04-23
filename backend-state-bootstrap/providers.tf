# Configure required Terraform providers and Azure provider settings for this backend bootstrap project.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  # Use this Azure subscription to create the backend resources.
  # Replace the value below with the subscription ID for your Azure account.
  subscription_id = "e35bf934-b130-43e2-8202-61e2a4d8e670"

  features {}
}