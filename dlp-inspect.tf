# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/data_loss_prevention_inspect_template

module "inspection-template" {
  source       = "./module/dlp/inspection-template"
  parent       = var.it_parent
  description  = var.it_description
  display_name = var.it_display_name
}

