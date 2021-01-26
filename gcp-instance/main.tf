provider "google" {}

module "hana_bastion" {
  source                = "./modules/bastion-host"
  instance_name         = "sap-hanstbg"
  instance_type         = "e2-medium"
  project_id            = "sigma-hallway-297803"
  zone                  = "us-central1-c"
  service_account_email = "terraform@sigma-hallway-297803.iam.gserviceaccount.com"
  subnetwork            = "default"
  subnetwork_project    = "sigma-hallway-297803"
  source_image_family   = "windows-2019"
  source_image_project  = "windows-cloud"
  boot_disk_size        = 50
  boot_disk_type        = "pd-ssd"
  autodelete_disk       = true
  network_tags          = ["sap-allow-all"]
  pd_kms_key            = null
  use_public_ip         = false
  install_files_bucket  = "saptest1219/install-files"
}
