resource "azurerm_service_plan" "sp" {
  name                = local.spname
  resource_group_name = var.rgname
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = var.common_tags
}
