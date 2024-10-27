variable "rgname" {
  type        = string
  description = "The name of the resource group"
  default     = "rg-tf-oppg1"
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
  type = string
  description = "The basename of the resources"
}
