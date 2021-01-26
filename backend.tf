terraform {
  backend "gcs" {
    bucket      = "terraformtest0104"
    prefix      = "terraform3"
    credentials = "./auth/gcp-key.json"
  }
}