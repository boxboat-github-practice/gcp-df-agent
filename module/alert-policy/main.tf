resource "google_monitoring_alert_policy" "alert_policy" {
  project               = var.project
  display_name          = var.display_name
  combiner              = var.combiner
  enabled               = var.enabled
  notification_channels = var.notification_channels
  # documentation {
  #   doc_content   = var.doc_content
  #   doc_mime_type = var.doc_mime_type
  # }
  alert_strategy {
    auto_close = var.as_auto_close
    # notification_rate_limit {
    #   period = var.as_nrl_period
    # }
    # notification_channel_strategy {
    #   notification_channel_names = var.as_ncs_notification_channel_names
    #   renotify_interval          = var.as_ncs_renotify_interval
    # }
  }

  # user_labels = {
  #   foo = var.
  # }
  dynamic conditions {
    for_each = var.conditions_list
    content {
      display_name = conditions.value.cond_display_name

      dynamic condition_absent {
        for_each = conditions.value.condition_type == "absent" ? ["condition_absent"] : []
        content {
          duration = conditions.value.ca_duration
          filter   = conditions.value.ca_filter
          aggregations {
            per_series_aligner   = conditions.value.ca_agg_per_series_aligner
            group_by_fields      = conditions.value.ca_agg_group_by_fields
            alignment_period     = conditions.value.ca_agg_alignment_period
            cross_series_reducer = conditions.value.ca_agg_cross_series_reducer
          }
          trigger {
            percent = conditions.value.ca_trig_percent
            count   = conditions.value.ca_trig_count
          }
        }
      }
      dynamic condition_monitoring_query_language {
        for_each = conditions.value.condition_type == "monitoring_query_language" ? ["condition_monitoring_query_language"] : []
        content {

          query                   = conditions.value.cmqt_query
          duration                = conditions.value.cmqt_duration
          evaluation_missing_data = conditions.value.cmqt_evaluation_missing_data
          trigger {
            percent = conditions.value.cmqt_trig_percent
            count   = conditions.value.cmqt_trig_count
          }
        }
      }
      dynamic condition_matched_log {
        for_each         = conditions.value.condition_type == "matched_log" ? ["condition_matched_log"] : []
        filter           = conditions.value.cml_filter
        label_extractors = conditions.value.cml_label_extractors
      }
      dynamic condition_threshold {
        for_each = conditions.value.condition_type == "threshold" ? ["condition_threshold"] : []
        content {
          threshold_value         = conditions.value.ct_threshold_value
          filter                  = conditions.value.ct_filter
          duration                = conditions.value.ct_duration
          comparison              = conditions.value.ct_comparison
          evaluation_missing_data = conditions.value.ct_evaluation_missing_data
          denominator_filter      = conditions.value.ct_denominator_filter
          denominator_aggregations {
            per_series_aligner   = conditions.value.ct_dagg_per_series_aligner
            group_by_fields      = conditions.value.ct_dagg_group_by_fields
            alignment_period     = conditions.value.ct_dagg_alignment_period
            cross_series_reducer = conditions.value.ct_dagg_cross_series_reducer
          }
          # forecast_options {
          #   forecast_horizon = conditions.value.ct_forecast_horizon
          # }
          aggregations {
            per_series_aligner   = conditions.value.ct_agg_per_series_aligner
            group_by_fields      = conditions.value.ct_agg_group_by_fields
            alignment_period     = conditions.value.ct_agg_alignment_period
            cross_series_reducer = conditions.value.ct_agg_cross_series_reducer
          }
          trigger {
            percent = conditions.value.ct_trig_percent
            count   = conditions.value.ct_trig_count
          }
        }
      }
    }

  }
}
