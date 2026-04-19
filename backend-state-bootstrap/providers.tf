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
  # Pega aquí el ID que copiaste
  subscription_id = "e35bf934-b130-43e2-8202-61e2a4d8e670"
  
  features {}
}