terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dkc-state-rg"
    storage_account_name = "dkcstatestg1234"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "009fad33-c09c-4841-af38-57dd79870d40"
}