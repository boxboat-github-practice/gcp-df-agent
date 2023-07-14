
locals {
  info_type_object = {
    for key, val in var.info_types :
    key => merge({
      name = val.name
    })
  }
}


resource "google_data_loss_prevention_inspect_template" "inspection-template" {
  parent       = var.parent
  description  = var.description
  display_name = var.display_name


  inspect_config {
    dynamic "info_types" {
      for_each = local.info_type.name
      content {
        name = local.info_type["name"]
      }
    }

    min_likelihood = "LIKELY"
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
      max_findings_per_item    = 10
      max_findings_per_request = 50
      max_findings_per_info_type {
        max_findings = "75"
        info_type {
          name = "PERSON_NAME"
        }
      }
      max_findings_per_info_type {
        max_findings = "80"
        info_type {
          name = "LAST_NAME"
        }
      }
    }
  }
}

