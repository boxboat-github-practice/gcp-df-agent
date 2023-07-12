resource "google_bigquery_dataset" "dataset" {
  dataset_id    = "svav_example_dataset"
  friendly_name = "svav_poc"
  description   = "This is a test description"
  location      = "US"

  labels = {
    project = "boxboat-dev"
    app     = "svav"
    env     = "dev"
  }

  access {
    role          = "OWNER"
    user_by_email = google_service_account.bqowner.email
  }

  access {
    role          = "READER"
    user_by_email = "jay@boxboat.com"
  }
}

resource "google_service_account" "bqowner" {
  account_id = "113226688192813986706"
}
