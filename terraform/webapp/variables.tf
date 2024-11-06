#
# Subscription
#
variable "subscription_id" {
  type        = string
  description = "The subscription ID"
}

#
# Tags
#
variable "company" {
  type        = string
  description = "The name of the company"
  default     = "OperaTerra"
}

variable "project_code" {
  type        = string
  description = "The project code"
  default     = "oppg2"
}

variable "billing_code" {
  type        = string
  description = "The billing code"
  default     = "10001"
}

#
# Database
#
variable "database_user" {
  type        = string
  description = "The user name of the database admin user"
}

variable "database_pass" {
  type        = string
  description = "The password of the database admin user"
}
