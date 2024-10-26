resource "azurerm_mssql_server" "mssqlserver" {
  name                         = local.mssqlname
  resource_group_name          = var.rgname
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.adminuser
  administrator_login_password = var.adminpass
}

resource "azurerm_mssql_database" "mssqldb" {
  name      = local.mssqldbname
  server_id = azurerm_mssql_server.mssqlserver.id

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = false
  }
}
