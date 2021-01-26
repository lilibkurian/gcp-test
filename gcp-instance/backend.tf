terraform {
  backend "gcs" {
    bucket = "terraformtest0104"
    prefix = "terraform2"
    credentials = "../auth/gcp-key.json"
  }
}
