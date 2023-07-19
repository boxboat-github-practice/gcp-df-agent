agent_map = {
  agent1 = {
    display_name               = "df-agent1"
    location                   = "global"
    default_language_code      = "en"
    supported_language_codes   = ["es"]
    time_zone                  = "America/New_York"
    description                = "example1"
    enable_stackdriver_logging = true
    enable_spell_correction    = true
    security_settings          = "projects/boxboat-dev/locations/global/securitySettings/c1da59c7b3f06a75"
    enable_speech_adaptation   = true
    }, agent2 = {
    display_name               = "df-agent2"
    location                   = "global"
    default_language_code      = "en"
    supported_language_codes   = ["es"]
    time_zone                  = "America/New_York"
    description                = "example2"
    enable_stackdriver_logging = true
    enable_spell_correction    = true
    security_settings          = "projects/boxboat-dev/locations/global/securitySettings/c1da59c7b3f06a75"
    enable_speech_adaptation   = true
  }
}


