# module "full_agent" {
#   source                     = "./module/dialogflow"
#   for_each                   = var.agent_map
#   display_name               = each.value.display_name
#   location                   = each.value.location
#   default_language_code      = each.value.default_language_code
#   supported_language_codes   = each.value.supported_language_codes
#   time_zone                  = each.value.time_zone
#   description                = each.value.description
#   enable_stackdriver_logging = each.value.enable_stackdriver_logging
#   enable_spell_correction    = each.value.enable_spell_correction
#   security_settings          = each.value.security_settings
#   enable_speech_adaptation   = each.value.enable_speech_adaptation

# }
