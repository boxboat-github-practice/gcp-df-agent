# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/data_loss_prevention_inspect_template

module "inspection-template" {
  source       = "./module/dlp/inspection-template"
  for_each     = var.template_map
  parent       = each.value.it_parent
  description  = each.value.it_description
  display_name = each.value.it_display_name
  # min_likelihood = each.value.it_min_likelihood
  info_types     = each.value.it_info_types
  inspect_config = each.value.it_inspect_config
}

