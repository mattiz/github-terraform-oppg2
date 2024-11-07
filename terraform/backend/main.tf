data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg_backend" {
  name     = var.rg_backend_name
  location = var.rg_backend_location
}

resource "random_string" "random_string" {
  length  = 10
  special = false
  upper   = false
}

resource "azurerm_storage_account" "sa_backend" {
  name                     = "${lower(var.sa_backend_name)}${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.rg_backend.name
  location                 = azurerm_resource_group.rg_backend.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "sc_backend" {
  name                  = var.sc_backend_name
  storage_account_name  = azurerm_storage_account.sa_backend.name
  container_access_type = "private"
}
