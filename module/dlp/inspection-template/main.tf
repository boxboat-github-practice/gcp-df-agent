
locals {
  info_type = {
    for key, val in var.info_types :
    key => merge({
      name = val.name
    })
  }

}
output "print_info_type" {
  value = local.info_type
}

resource "google_data_loss_prevention_inspect_template" "inspection-template" {
  parent       = var.parent
  description  = var.description
  display_name = var.display_name

  inspect_config {
    dynamic "info_types" {
      for_each = local.info_type
      content {
        name = info_types.value.name
      }
    }

    min_likelihood = var.inspect_config["min_likelihood"]
    rule_set {
      info_types {
        name = "EMAIL_ADDRESS"
      }
      rules {
        exclusion_rule {
          regex {
            pattern = ".+@example.com"
          }
          matching_type = "MATCHING_TYPE_FULL_MATCH"
        }
      }
    }
    rule_set {
      info_types {
        name = "EMAIL_ADDRESS"
      }
      info_types {
        name = "DOMAIN_NAME"
      }
      info_types {
        name = "PHONE_NUMBER"
      }
      info_types {
        name = "PERSON_NAME"
      }
      info_types {
        name = "FIRST_NAME"
      }
      rules {
        exclusion_rule {
          dictionary {
            word_list {
              words = ["TEST"]
            }
          }
          matching_type = "MATCHING_TYPE_PARTIAL_MATCH"
        }
      }
    }

    rule_set {
      info_types {
        name = "PERSON_NAME"
      }
      rules {
        hotword_rule {
          hotword_regex {
            pattern = "patient"
          }
          proximity {
            window_before = 50
          }
          likelihood_adjustment {
            fixed_likelihood = "VERY_LIKELY"
          }
        }
      }
    }
    limits {
      max_findings_per_item    = var.inspect_config["limits"].max_findings_per_item
      max_findings_per_request = var.inspect_config["limits"].max_findings_per_item
      dynamic "max_findings_per_info_type" {
        for_each = var.inspect_config["limits"].limits_list_mfpit
        content {
          max_findings = max_findings_per_info_type.value.max_findings_per_item
          info_type {
            name = max_findings_per_info_type.value.name
          }
        }
      }
    }
  }
}

