#it_ inspection template
template_map = {
  template-1 = {
    it_parent       = "projects/boxboat-dev"
    it_description  = "My description sample"
    it_display_name = "dlp-inspect"
    it_inspect_config = {
      min_likelihood = "LIKELY"
      limits = {
        max_findings_per_item    = 2
        max_findings_per_request = 3
        limits_list_mfpit = [{
          max_findings_per_item = "80",
          name                  = "PERSON_NAME"
          }, {
          max_findings_per_item = "75",
          name                  = "LAST_NAME"
        }]
      }
    }
    it_info_types = [
      { "name" : "EMAIL_ADDRESS" },
      { "name" : "PERSON_NAME" },
      { "name" : "DOMAIN_NAME" },
      { "name" : "PHONE_NUMBER" },
    { "name" : "FIRST_NAME" }]

  },
  template-2 = {
    it_parent       = "projects/boxboat-dev"
    it_description  = "My description sample"
    it_display_name = "dlp-inspect-2"
    it_inspect_config = {
      min_likelihood = "LIKELY"
      limits = {
        max_findings_per_item    = 2
        max_findings_per_request = 1
        limits_list_mfpit = [{
          max_findings_per_item = "70",
          name                  = "PERSON_NAME"
          }, {
          max_findings_per_item = "60",
          name                  = "LAST_NAME"
        }]
      }
    }
    it_info_types = [
      { "name" : "EMAIL_ADDRESS" },
      { "name" : "PERSON_NAME" },
      { "name" : "DOMAIN_NAME" },
      { "name" : "PHONE_NUMBER" },
    { "name" : "FIRST_NAME" }]
  }
}

# it_inspect_config = {
#   info_types = [
#     { "name" : "EMAIL_ADDRESS" },
#     { "name" : "PERSON_NAME" },
#     { "name" : "DOMAIN_NAME" },
#     { "name" : "PHONE_NUMBER" },
#   { "name" : "FIRST_NAME" }]
# }
