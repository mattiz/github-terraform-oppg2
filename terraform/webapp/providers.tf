terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }

  backend "azurerm" {
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {
  }
}
