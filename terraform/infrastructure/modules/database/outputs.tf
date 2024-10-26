output "domain_name" {
  value       = azurerm_mssql_server.mssqlserver.fully_qualified_domain_name
  description = "The domain name of the database server"
}

output "database_name" {
  value       = azurerm_mssql_database.mssqldb.name
  description = "The name of the database"
}
