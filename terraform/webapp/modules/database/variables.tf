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

variable "adminuser" {
  type        = string
  description = "The user name for the database"
}

variable "adminpass" {
  type        = string
  description = "The password for the database"
}
