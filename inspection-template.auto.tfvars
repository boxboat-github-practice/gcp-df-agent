#it_ inspection template
template_map = {
  template-1 = {
    it_parent       = "projects/boxboat-dev"
    it_description  = "My description sample"
    it_display_name = "dlp-inspect"
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
