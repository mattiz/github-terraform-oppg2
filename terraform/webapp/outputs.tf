output "database_domain_name" {
  value       = module.database.domain_name
  description = "The domain name of the database server"
}

output "database_name" {
  value       = module.database.database_name
  description = "The name of the database"
}

output "storage_account_connection_string" {
  value       = module.storageaccount.sa_connection_string
  description = "The connection string of storage account"
  sensitive   = true
}

output "app_domain" {
  value       = module.appservice.app_domain
  description = "The domain for the app server"
}
