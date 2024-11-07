output "app_domain" {
  value       = azurerm_linux_web_app.app.default_hostname
  description = "The domain for the app server"
}
