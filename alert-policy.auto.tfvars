alert_policy_map = {
  alert-1 = {
    display_name = "My Alert Policy"
    combiner     = "OR"
    conditions_list = [
      {
        cond_display_name  = "test condition"
        filter             = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        duration           = "60s"
        comparison         = "COMPARISON_GT"
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_RATE"
      },
      {
        cond_display_name  = "test condition2"
        filter             = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        duration           = "120s"
        comparison         = "COMPARISON_GT"
        alignment_period   = "120s"
        per_series_aligner = "ALIGN_RATE"
      }
    ]
  },
  alert-2 = {
    display_name = "My Other Alert Policy"
    combiner     = "OR"
    conditions_list = [
      {
        cond_display_name  = "conditiona"
        filter             = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        duration           = "60s"
        comparison         = "COMPARISON_GT"
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_RATE"
      },
      {
        cond_display_name  = "conditionb"
        filter             = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        duration           = "120s"
        comparison         = "COMPARISON_GT"
        alignment_period   = "120s"
        per_series_aligner = "ALIGN_RATE"
      }
    ]
} }
