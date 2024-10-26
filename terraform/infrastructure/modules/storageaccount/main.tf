terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

resource "random_string" "random_string" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_storage_account" "sa" {
  name                     = local.saname
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.storagetype
  tags                     = var.common_tags
}

resource "azurerm_storage_container" "sc" {
  name                  = local.scname
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
