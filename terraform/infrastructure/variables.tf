#
# Subscription
#
variable "subscription_id" {
  type        = string
  description = "The subscription ID"
}

variable "basename" {
  type        = string
  description = "The base name of the resources"
  default     = "res"
}

#
# Resource group
#
variable "rgname" {
  type        = string
  description = "The name of the resource group"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
}

#
# Tags
#
variable "environment" {
  type        = string
  description = "The environment containing the resources"
  default     = "development"
}

variable "company" {
  type        = string
  description = "Company name"
}

variable "project" {
  type        = string
  description = "Project name"
}

variable "billing_code" {
  type        = string
  description = "Billing code"
}

#
# Service Plan
#
variable "os_types" {
  type        = map(string)
  description = "OS type alternatives"
  default = {
    "windows"           = "Windows"
    "linux"             = "Linux"
    "windows_container" = "WindowsContainer"
  }
}

variable "sku_names" {
  type        = map(string)
  description = "SKU name alternatives"
  default = {
    "linux_small"  = "P0v3"
    "linux_medium" = "P1v3"
    "linux_large"  = "P1mv3"
  }
}

#
# Database
#
variable "database_user" {
  type        = string
  description = "The name of the database admin user"
}

variable "database_pass" {
  type        = string
  description = "The password of the database admin user"
}
