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

variable "os_type" {
  type        = string
  description = "The OS type of the Service Plan"
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the Service Plan"
}
