resource "azurerm_public_ip" "pip" {
  name                = local.pipname
  location            = var.location
  resource_group_name = var.rgname
  allocation_method   = "Static"
  tags                = var.common_tags
}

resource "azurerm_lb" "lb" {
  name                = local.lbname
  location            = var.location
  resource_group_name = var.rgname
  tags                = var.common_tags

  frontend_ip_configuration {
    name                 = local.fipname
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}
