variable "subscription_id" {
  type = string
  description = "The subscription ID"
}

variable "rg_backend_name" {
  type        = string
  description = "Name of the resource group"
}

variable "rg_backend_location" {
  type        = string
  description = "Location of the resource group"
}

variable "sa_backend_name" {
  type        = string
  description = "Name of the storage account"
}

variable "sc_backend_name" {
  type        = string
  description = "Name of the storage container"
}
