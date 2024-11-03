terraform {
  backend "azurerm" {
    resource_group_name  = "rg-mathbje-oppg2-backend"
    storage_account_name = "mbo2bny6hg1toy6"
    container_name       = "tfstate"
    key                  = "terraform-backend.tfstate"
  }
}
