# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/data_loss_prevention_inspect_template

module "inspection-template" {
  source         = "./module/dlp/inspection-template"
  for_each       = var.template_map
  parent         = each.value.it_parent
  description    = each.value.it_description
  display_name   = each.value.it_display_name
  inspect_config = each.value.it_inspect_config
}

