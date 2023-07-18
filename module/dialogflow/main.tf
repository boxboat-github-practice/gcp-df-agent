resource "google_dialogflow_cx_agent" "full_agent" {
  display_name               = var.display_name
  location                   = var.location
  default_language_code      = var.default_language_code
  supported_language_codes   = var.supported_language_codes
  time_zone                  = var.time_zone
  description                = var.description
  enable_stackdriver_logging = var.enable_stackdriver_logging
  enable_spell_correction    = var.enable_spell_correction
  security_settings          = var.security_settings
  speech_to_text_settings {
    enable_speech_adaptation = var.enable_speech_adaptation
  }
}

