# # variable "" {}

#it_ inspection template
variable "it_parent" {}
variable "it_description" {}
variable "it_display_name" {}














# variable "infotypet-infotype" {
#   default = "FIRST_NAME"
#   type    = string
# }

#   parent       = "projects/boxboat-dev"
#   description  = "My description sample"
#   display_name = "dlp-inspect"

#   inspect_config {
#     info_types {
#       name = "EMAIL_ADDRESS"
#     }
#     info_types {
#       name = "PERSON_NAME"
#     }
#     info_types {
#       name = "LAST_NAME"
#     }
#     info_types {
#       name = "DOMAIN_NAME"
#     }
#     info_types {
#       name = "PHONE_NUMBER"
#     }
#     info_types {
#       name = "FIRST_NAME"
#     }

#     min_likelihood = "LIKELY"
#     rule_set {
#       info_types {
#         name = "EMAIL_ADDRESS"
#       }
#       rules {
#         exclusion_rule {
#           regex {
#             pattern = ".+@example.com"
#           }
#           matching_type = "MATCHING_TYPE_FULL_MATCH"
#         }
#       }
#     }
#     rule_set {
#       info_types {
#         name = "EMAIL_ADDRESS"
#       }
#       info_types {
#         name = "DOMAIN_NAME"
#       }
#       info_types {
#         name = "PHONE_NUMBER"
#       }
#       info_types {
#         name = "PERSON_NAME"
#       }
#       info_types {
#         name = "FIRST_NAME"
#       }
#       rules {
#         exclusion_rule {
#           dictionary {
#             word_list {
#               words = ["TEST"]
#             }
#           }
#           matching_type = "MATCHING_TYPE_PARTIAL_MATCH"
#         }
#       }
#     }

#     rule_set {
#       info_types {
#         name = "PERSON_NAME"
#       }
#       rules {
#         hotword_rule {
#           hotword_regex {
#             pattern = "patient"
#           }
#           proximity {
#             window_before = 50
#           }
#           likelihood_adjustment {
#             fixed_likelihood = "VERY_LIKELY"
#           }
#         }
#       }
#     }

#     limits {
#       max_findings_per_item    = 10
#       max_findings_per_request = 50
#       max_findings_per_info_type {
#         max_findings = "75"
#         info_type {
#           name = "PERSON_NAME"
#         }
#       }
#       max_findings_per_info_type {
#         max_findings = "80"
#         info_type {
#           name = "LAST_NAME"
#         }
#       }
#     }
#   }
# }
