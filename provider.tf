provider "google" {
  credentials = file("./auth/gcp-key.json")
  project     = "sigma-hallway-297803"
  region      = "us-central1"
  zone        = "us-central1-c"
}