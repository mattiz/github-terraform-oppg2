locals {
  saname = "${lower(var.basename)}${random_string.random_string.result}"
  scname = "sc-${var.basename}"
}
