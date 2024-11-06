resource "azurerm_network_security_group" "nsg" {
  name                = local.nsgname
  location            = var.location
  resource_group_name = var.rgname
  tags                = var.common_tags

  security_rule {
    name                       = "allow-ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = var.admin_source_address
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "allow-ping"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = var.admin_source_address
    destination_address_prefix = "*"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnetname
  location            = var.location
  resource_group_name = var.rgname
  address_space       = var.vnet_address_space
  tags                = var.common_tags
}

resource "azurerm_subnet" "subnet" {
  name                 = local.subnetname
  resource_group_name  = var.rgname
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_subnet_network_security_group_association" "snsga" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
