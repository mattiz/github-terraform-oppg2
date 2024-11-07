locals {
  location = "westeurope"

  workspaces_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  basename = "${var.project_code}-${local.workspaces_suffix}"
  rgname   = "rg-${local.basename}"

  common_tags = {
    company      = var.company
    project      = "${var.company}-${var.project_code}"
    billing_code = var.billing_code
    environment  = local.workspaces_suffix
  }
}
