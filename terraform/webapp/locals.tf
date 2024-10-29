locals {
  workspaces_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  basename = "${var.basename}-${local.workspaces_suffix}"
  rgname   = "rg-${var.basename}"

  common_tags = {
    company      = var.company
    project      = "${var.company}-${var.project}"
    billing_code = var.billing_code
    environment  = local.workspaces_suffix
  }
}
