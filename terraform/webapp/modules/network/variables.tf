variable "rgname" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location/region of the resources group"
}

variable "common_tags" {
  type        = map(string)
  description = "Common tags"
  default     = {}
}

variable "basename" {
  type        = string
  description = "The basename of the resources"
}

variable "vnet_address_space" {
  type        = set(string)
  description = "The address space for the virtal network"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the subnet"
}

variable "admin_source_address" {
  type        = string
  description = "The source address prefix for the administrator managing the resources"
}
