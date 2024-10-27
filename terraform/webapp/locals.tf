locals {
  workspaces_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  rgname   = "${var.rgname}-${local.workspaces_suffix}"
  basename = "${var.basename}-${local.workspaces_suffix}"

  common_tags = {
    company      = var.company
    project      = "${var.company}-${var.project}"
    billing_code = var.billing_code
    environment  = var.environment # TODO - bruk workspace
  }
}
