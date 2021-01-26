resource "google_compute_instance" "db_instance" {
  name = "terraform-instance4"
  machine_type = "e2-small"

  tags = ["env", "dev"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 /*
  network_interface {
    network = "default"
    access_config {
    }
  } */

  network_interface {
    network = "default"
      dynamic "access_config" {
        for_each = var.access_config
        content {
          nat_ip       = access_config.value.nat_ip
          network_tier = access_config.value.network_tier
        }
      }
    }

}
