terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a6a54a1d-45bd-4635-b7f4-7e6fd92e20cf"
}