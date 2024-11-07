resource "azurerm_resource_group" "rg" {
  name     = local.rgname
  location = local.location
  tags     = local.common_tags
}

module "network" {
  source      = "./modules/network"
  basename    = local.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags

  vnet_address_space      = ["10.0.0.0/16"]
  subnet_address_prefixes = ["10.0.1.0/24"]
  admin_source_address    = "81.165.24.83"
}

module "storageaccount" {
  source      = "./modules/storageaccount"
  basename    = "otsa"
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
}

module "appservice" {
  source      = "./modules/appservice"
  basename    = local.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
  subnet_id   = module.network.subnet_id

  os_type  = var.os_types.linux
  sku_name = var.sku_names.linux_small
}

module "database" {
  source      = "./modules/database"
  basename    = local.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
  subnet_id   = module.network.subnet_id

  adminuser = var.database_user
  adminpass = var.database_pass
}

module "loadbalancer" {
  source      = "./modules/loadbalancer"
  basename    = local.basename
  rgname      = azurerm_resource_group.rg.name
  location    = azurerm_resource_group.rg.location
  common_tags = local.common_tags
  subnet_id   = module.network.subnet_id
}
