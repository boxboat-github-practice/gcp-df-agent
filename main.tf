resource "google_storage_bucket" "test-df" {
  name          = "test_df_bucket-1212323246"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}
