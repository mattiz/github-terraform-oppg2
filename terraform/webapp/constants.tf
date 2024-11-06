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
