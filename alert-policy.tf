module "alert_policy" {
  source                = "./module/alert-policy"
  for_each              = var.alert_policy_map
  project               = each.value.project
  display_name          = each.value.display_name
  combiner              = each.value.combiner
  enabled               = each.value.enabled
  notification_channels = each.value.notification_channels
  # variable doc_content {}
  # variable doc_mime_type {}
  as_auto_close                     = each.value.as_auto_close
  as_nrl_period                     = each.value.as_nrl_period
  as_ncs_notification_channel_names = each.value.as_ncs_notification_channel_names
  as_ncs_renotify_interval          = each.value.as_ncs_renotify_interval
  conditions_list                   = each.value.conditions_list
}
