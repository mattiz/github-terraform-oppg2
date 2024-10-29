output "sa_primary_access_key" {
  value       = azurerm_storage_account.sa.primary_access_key
  description = "The primary access key for the storage account"
}

output "sa_connection_string" {
  value       = azurerm_storage_account.sa.primary_connection_string
  description = "The primary connection string for the storage account"
}
