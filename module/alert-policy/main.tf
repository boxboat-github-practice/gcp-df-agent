resource "google_monitoring_alert_policy" "alert_policy" {
  display_name = var.display_name
  combiner     = var.combiner
  dynamic conditions {
    for_each = var.conditions_list
    content {
      display_name = conditions.value.cond_display_name
      condition_threshold {
        filter     = conditions.value.filter
        duration   = conditions.value.duration
        comparison = conditions.value.comparison
        aggregations {
          alignment_period   = conditions.value.alignment_period
          per_series_aligner = conditions.value.per_series_aligner
        }
      }
    }
  }

  user_labels = {
    foo = "bar"
  }
}
