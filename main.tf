resource "google_dialogflow_cx_agent" "full_agent" {
  display_name               = "dialogflowcx-agent"
  location                   = "global"
  default_language_code      = "en"
  supported_language_codes   = ["es"]
  time_zone                  = "America/New_York"
  description                = "Example description."
  avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
  enable_stackdriver_logging = true
  enable_spell_correction    = true
  security_settings          = "projects/boxboat-dev/locations/global/securitySettings/c1da59c7b3f06a75"
  speech_to_text_settings {
    enable_speech_adaptation = true
  }
}

