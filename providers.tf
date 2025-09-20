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
  subscription_id = "627441e2-79b8-4c68-9943-3698d337ff77"
  
  features {}
}