terraform {
  backend "azurerm" {
    resource_group_name  = "rg-mathbje-oppg2-backend"
    storage_account_name = "mbo2bd8oyt9t8ng"
    container_name       = "tfstate"
    key                  = "terraform-backend.tfstate"
  }
}
