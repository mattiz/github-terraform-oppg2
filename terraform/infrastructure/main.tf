resource "azurerm_resource_group" "rg" {
  name     = local.rgname
  location = var.rg_location
  tags     = local.common_tags
}


module "network" {
  source      = "./modules/network"
  basename    = local.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
}

module "storageaccount" {
  source      = "./modules/storageaccount"
  basename    = var.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
}

module "serviceplan" {
  source      = "./modules/serviceplan"
  basename    = local.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
  os_type     = var.os_types.linux
  sku_name    = var.sku_names.linux_small
}

module "database" {
  source      = "./modules/database"
  basename    = local.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
  adminuser   = var.database_user
  adminpass   = var.database_pass
}

module "loadbalancer" {
  source      = "./modules/loadbalancer"
  basename    = var.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
}
