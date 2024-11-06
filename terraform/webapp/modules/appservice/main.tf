resource "azurerm_service_plan" "sp" {
  name                = local.spname
  resource_group_name = var.rgname
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = var.common_tags
}

resource "azurerm_linux_web_app" "app" {
  name                = local.appname
  resource_group_name = var.rgname
  location            = var.location
  service_plan_id     = azurerm_service_plan.sp.id
  tags                = var.common_tags

  site_config {}
}

# TODO: connect to virtual network provided by var.subnet_id
