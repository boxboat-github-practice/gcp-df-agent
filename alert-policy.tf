module "alert_policy" {
  source          = "./module/alert-policy"
  for_each        = var.alert_policy_map
  display_name    = each.value.display_name
  combiner        = each.value.combiner
  conditions_list = each.value.conditions_list
}
