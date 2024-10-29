output "backend_config" {
  value = <<EOT
resource_group_name  = "${azurerm_resource_group.rg_backend.name}"
storage_account_name = "${azurerm_storage_account.sa_backend.name}"
container_name       = "${azurerm_storage_container.sc_backend.name}"
key                  = "terraform.tfstate"
EOT
}

output "storage_account_access_key" {
  description = "Storage account primary key"
  value       = azurerm_storage_account.sa_backend.primary_access_key
  sensitive   = true
}
