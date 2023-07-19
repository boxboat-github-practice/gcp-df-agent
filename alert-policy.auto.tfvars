alert_policy_map = {
  alert-1 = {
    project                           = "boxboat-dev"
    display_name                      = "My Alert Policy"
    combiner                          = "OR"
    enabled                           = true
    notification_channels             = ["projects/boxboat-dev/notificationChannels/17444659692466700134"]
    as_nrl_period                     = null
    as_auto_close                     = "302400s"
    as_ncs_notification_channel_names = null
    as_ncs_renotify_interval          = null
    conditions_list = [
      {
        cond_display_name            = "test condition"
        condition_type               = "threshold"
        ca_filter                    = null
        ca_duration                  = null
        ca_agg_per_series_aligner    = null
        ca_agg_group_by_fields       = null
        ca_agg_alignment_period      = null
        ca_agg_cross_series_reducer  = null
        ca_trig_percent              = null
        ca_trig_count                = null
        cmqt_query                   = null
        cmqt_duration                = null
        cmqt_evaluation_missing_data = null
        cmqt_trig_count              = null
        cmqt_trig_percent            = null
        cml_filter                   = null
        cml_label_extractors         = null
        ct_threshold_value           = null
        ct_filter                    = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        ct_duration                  = "60s"
        ct_comparison                = "COMPARISON_GT"
        ct_evaluation_missing_data   = "EVALUATION_MISSING_DATA_INACTIVE"
        ct_denominator_filter        = null
        ct_dagg_per_series_aligner   = null
        ct_dagg_group_by_fields      = null
        ct_dagg_alignment_period     = null
        ct_dagg_cross_series_reducer = null
        ct_agg_per_series_aligner    = "ALIGN_RATE"
        ct_agg_group_by_fields       = null
        ct_agg_alignment_period      = "60s"
        ct_agg_cross_series_reducer  = null
        ct_trig_percent              = null
        ct_trig_count                = null
      },
      {
        cond_display_name            = "test condition2"
        condition_type               = "threshold"
        ct_threshold_value           = null
        ct_filter                    = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        ct_duration                  = "120s"
        ct_comparison                = "COMPARISON_GT"
        ct_evaluation_missing_data   = "EVALUATION_MISSING_DATA_INACTIVE"
        ct_denominator_filter        = null
        ct_dagg_per_series_aligner   = null
        ct_dagg_group_by_fields      = null
        ct_dagg_alignment_period     = null
        ct_dagg_cross_series_reducer = null
        ct_agg_per_series_aligner    = "ALIGN_RATE"
        ct_agg_group_by_fields       = null
        ct_agg_alignment_period      = "120s"
        ct_agg_cross_series_reducer  = null
        ct_trig_percent              = null
        ct_trig_count                = null
      },
      {
        cond_display_name            = "test condition3"
        condition_type               = "threshold"
        ct_threshold_value           = null
        ct_filter                    = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        ct_duration                  = "180s"
        ct_comparison                = "COMPARISON_GT"
        ct_evaluation_missing_data   = "EVALUATION_MISSING_DATA_INACTIVE"
        ct_denominator_filter        = null
        ct_dagg_per_series_aligner   = null
        ct_dagg_group_by_fields      = null
        ct_dagg_alignment_period     = null
        ct_dagg_cross_series_reducer = null
        ct_agg_per_series_aligner    = "ALIGN_RATE"
        ct_agg_group_by_fields       = null
        ct_agg_alignment_period      = "180s"
        ct_agg_cross_series_reducer  = null
        ct_trig_percent              = null
        ct_trig_count                = null
      }
    ]
  },
  alert-2 = {
    combiner                          = "OR"
    project                           = "boxboat-dev"
    display_name                      = "dialogflow-webhook-alerts"
    combiner                          = "OR"
    enabled                           = true
    notification_channels             = ["projects/boxboat-dev/notificationChannels/17444659692466700134", ]
    as_auto_close                     = "302400s"
    as_nrl_period                     = "7200s"
    as_ncs_notification_channel_names = ["projects/boxboat-dev/notificationChannels/17444659692466700134]"]
    as_ncs_renotify_interval          = "3600s"
    conditions_list = [
      {
        cond_display_name    = "url-error"
        condition_type       = "matched_log"
        cml_filter           = "97e1e4df-5eeb-4895-98f3-db045bc3aaba resource.labels.project_id = \"gcp-abs-svav-prod-prj-01\" URL_ERROR severity=ERROR\n"
        cml_label_extractors = null
      },
      {
        cond_display_name    = "url-error"
        condition_type       = "matched_log"
        cml_filter           = "97e1e4df-5eeb-4895-98f3-db045bc3aaba resource.labels.project_id = \"gcp-abs-svav-prod-prj-01\" URL_ERROR severity=ERROR\n"
        cml_label_extractors = null
      },
    ]
} }
