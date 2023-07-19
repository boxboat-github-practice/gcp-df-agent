resource "google_dialogflow_cx_page" "my_page2" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "MyPage2"
}
