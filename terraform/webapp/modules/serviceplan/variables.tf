variable "rgname" {
  type        = string
  description = "The name of the resource group"
  default     = ""
}

variable "location" {
  type        = string
  description = "The location/region of the resources group"
  default     = "westeurope"
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
  default     = "Linux"
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the Service Plan"
  default     = "P1v2"
}
