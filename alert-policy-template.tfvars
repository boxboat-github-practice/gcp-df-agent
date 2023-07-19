alert_policy_map = {
  alert-1 = {
    # required - A short name or phrase used to identify policy
    display_name = "My Alert Policy"
    # required - How to combine the results of conditions ["AND", "OR", "AND_WITH_MATCHING_RESOURCE"]
    combiner = "OR"
    # required - a list of conditions for the policy
    conditions_list = [
      {
        # ---------------------------------------------------------------------------------------
        # Condition
        # required - A short name or phrase used to identify the condition
        cond_display_name = "test condition"

        # ------------------------------
        # Condition > Condition_Absent
        # optional - A condition that checks that a time series continues to receive new data points

        # optional - a filter that identifies which time series should be compared with the threshold
        ca_filter = null
        # required - amount of time that a time series must fail to report new data to be considered failing
        ca_duration = null

        # ----------
        # Condition > Condition_Absent > Aggregations
        # 0ptional The approach to be used to align individual time series
        ca_agg_per_series_aligner = null
        # optional - the set of fields to preserve when crossSeriesReducer is specified.
        ca_agg_group_by_fields = null
        # optional - the alignment period for per-time series alignment. Must be multiples of 60 seconds. 
        ca_agg_alignment_period = null
        # optional - The approach to be used to combine time series.
        ca_agg_cross_series_reducer = null

        #  ----------
        # Condition > Condition_Absent > Trigger
        # optional - the percentage of time series that must fail the predicate for the condition to be triggered.
        ca_trig_percent = null
        # optional - the absolute number of time series that must fail to trigger
        ca_trig_count = null

        # ------------------------------
        # Condition > Condition_Monitoring_Query_Language 
        # optional - a Monitoring Query Language query that outputs a boolean stream Structure

        # required - Monitoring Query Language query that outputs a boolean stream.
        cmqt_query = null
        # required - the amount of time that a time series must violate the threshold to be considered failing.
        cmqt_duration = null
        # optional - a condition control that determines how metric-threshold conditions are evaluated when data stops arriving [EVALUATION_MISSING_DATA_INACTIVE, EVALUATION_MISSING_DATA_ACTIVE, EVALUATION_MISSING_DATA_NO_OP]
        cmqt_evaluation_missing_data = null

        #  ----------
        # Condition > Condition_Monitoring_Query_Language > Trigger
        # Optional - the number/percent of time series for which the comparison must hold in order for the condition to trigger
        cmqt_trig_count = null
        # optional - the percentage of time series that must fail the predicate for the condition to be triggered.
        cmqt_trig_percent = null

        # ------------------------------
        # Condition > Condition_Matched_Log
        # optional - a condition that checks for log messages matching given constraints

        # required - a logs-based filter. 
        cml_filter = null
        # optional - a map from a label key to an extractor expression, which is used to extract the value for this label key
        cml_label_extractors = null

        #  ------------------------------
        # Condition > Condition_Threshold
        # optional - condition that compares a time series against a threshold.

        # optional - a value against which to compare the time series.
        ct_threshold_value = null
        # optional - a filter that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold
        ct_filter = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        # required - amount of time that a time series must fail to report new data to be considered failing
        ct_duration = "60s"
        # required - The comparison to apply between the time series and the threshold.
        ct_comparison = "COMPARISON_GT"
        # optional - A condition control that determines how metric-threshold conditions are evaluated when data stops arriving
        ct_evaluation_missing_data = "EVALUATION_MISSING_DATA_INACTIVE"
        # optional - A filter that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold.
        ct_denominator_filter = null

        #  ----------
        # Condition > Condition_Threshold > Denominator_Aggregations
        # optional - Specifies the alignment of data points in individual time series selected by denominatorFilter 
        ct_dagg_per_series_aligner = null
        # optional - The set of fields to preserve when crossSeriesReducer is specified. 
        ct_dagg_group_by_fields = null
        # optional - The alignment period for per-time series alignment. 
        ct_dagg_alignment_period = null
        # optional - The approach to be used to combine time series.
        ct_dagg_cross_series_reducer = null

        #  ----------
        # Condition > Condition_Threshold > Forcast_Options
        # optional - When this field is present, the MetricThreshold condition forecasts whether the time series is predicted to violate the threshold within the forecastHorizon.
        # optional - The length of time into the future to forecast 
        ct_forecast_horizon = "3600s"

        #  ----------
        # Condition > Condition_Threshold > Aggregations
        # optional - aggregation block specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together 
        # optional - the approach to be used to align individual time series.
        ct_agg_per_series_aligner = "ALIGN_RATE"
        # optional - the set of fields to preserve when crossSeriesReducer is specified.
        ct_agg_group_by_fields = null
        # optional - the alignment period for per-time series alignment. Must be multiples of 60 seconds. 
        ct_agg_alignment_period = "60s"
        # optional - The approach to be used to combine time series.
        ct_agg_cross_series_reducer = null

        #  ----------
        # Condition > Condition_Threshold > Trigger
        # optional - the percentage of time series that must fail the predicate for the condition to be triggered.
        ct_trig_percent = null
        #  Optional - the number/percent of time series for which the comparison must hold in order for the condition to trigger
        ct_trig_count = null
        }, {
        cond_display_name = "test condition2"
        # Condition > Condition_Absent
        ca_filter                   = null
        ca_duration                 = null
        ca_agg_per_series_aligner   = null
        ca_agg_group_by_fields      = null
        ca_agg_alignment_period     = null
        ca_agg_cross_series_reducer = null
        ca_trig_percent             = null
        ca_trig_count               = null
        # Condition > Condition_Monitoring_Query_Language 
        cmqt_query                   = null
        cmqt_duration                = null
        cmqt_evaluation_missing_data = null
        cmqt_trig_count              = null
        cmqt_trig_percent            = null
        # Condition > Condition_Matched_Log
        cml_filter           = null
        cml_label_extractors = null
        # Condition > Condition_Threshold
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
        ct_forecast_horizon          = "3600s"
        ct_agg_per_series_aligner    = "ALIGN_RATE"
        ct_agg_group_by_fields       = null
        ct_agg_alignment_period      = "60s"
        ct_agg_cross_series_reducer  = null
        ct_trig_percent              = null
        ct_trig_count                = null
      },
      {
        cond_display_name         = "test condition3"
        ct_filter                 = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        ct_duration               = "120s"
        ct_comparison             = "COMPARISON_GT"
        ct_agg_alignment_period   = "120s"
        ct_agg_per_series_aligner = "ALIGN_RATE"
      }
    ]
  },
  alert-2 = {
    display_name = "My Other Alert Policy"
    combiner     = "OR"
    conditions_list = [
      {
        cond_display_name         = "conditiona"
        ct_filter                 = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        ct_duration               = "60s"
        ct_comparison             = "COMPARISON_GT"
        ct_agg_alignment_period   = "60s"
        ct_agg_per_series_aligner = "ALIGN_RATE"
      },
      {
        cond_display_name         = "conditionb"
        ct_filter                 = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
        ct_duration               = "60s"
        ct_comparison             = "COMPARISON_GT"
        ct_agg_alignment_period   = "60s"
        ct_agg_per_series_aligner = "ALIGN_RATE"
      }
    ]
} }
