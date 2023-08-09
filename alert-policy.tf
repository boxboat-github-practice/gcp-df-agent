locals {
  alert_policy_map = jsondecode(file(var.alert_policy_map))["alert_policy"]
}
module "alert_policy" {
  source                = "./module/alert-policy"
  for_each              = local.alert_policy_map
  project               = each.value.project
  display_name          = each.value.display_name
  policy_type           = each.value.policy_type
  enabled               = each.value.enabled
  combiner              = each.value.combiner
  content               = each.value.doc_content
  mime_type             = each.value.doc_mime_type
  notification_channels = each.value.notification_channels
  as_auto_close         = each.value.as_auto_close
  as_nrl_period         = each.value.as_nrl_period
  # as_ncs_notification_channel_names = each.value.as_ncs_notification_channel_names
  # as_ncs_renotify_interval          = each.value.as_ncs_renotify_interval
  conditions_list = each.value.conditions_list
}
