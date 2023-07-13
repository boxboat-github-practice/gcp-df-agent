#it_ inspection template
template_map = {
  template-1 = {
    it_parent       = "projects/boxboat-dev"
    it_description  = "My description sample"
    it_display_name = "dlp-inspect"
    it_inspect_config = {
      info_type = "EMAIL_ADDRESS"
    }
  },
  template-2 = {
    it_parent       = "projects/boxboat-dev"
    it_description  = "My description sample"
    it_display_name = "dlp-inspect-2"
    it_inspect_config = {
      info_type = "EMAIL_ADDRESS"
      info_type = "PERSON_NAME"
      info_type = "DOMAIN_NAME"
      info_type = "PHONE_NUMBER"
      info_type = "FIRST_NAME"
    }
  }
}


