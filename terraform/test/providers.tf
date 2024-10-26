terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "00000-00000000000-0000000-00000-00-000"
  features {
  }
}
