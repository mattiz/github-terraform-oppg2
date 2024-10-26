variable "subscription_id" {
  type        = string
  description = "The subscription ID"
}

variable "rg_name" {
  type        = string
  description = "Name of the resource group"
  default     = "rg-test"
}

variable "rg_location" {
  type        = string
  description = "Location of the resource group"
  default     = "westeurope"
}
