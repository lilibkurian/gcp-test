/*
resource "google_compute_snapshot" "snapdisk1" {
  name        = "my-snapshot-region1"
  source_disk = google_compute_region_disk.regiondisk.name
  zone        = "us-central1-a"
}

resource "google_compute_disk" "snap_disk" {
  name  = "my-snapshot-disk"
  #image = "debian-cloud/debian-9"
  snapshot = google_compute_snapshot.snapdisk1.self_link
  size  = 50
  type  = "pd-ssd"
  zone  = "us-central1-f"
} */


/*
resource "google_compute_instance" "default1" {
  name         = "test1"
  machine_type = "e2-medium"
  zone         = "us-central1-f"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      #type = "pd-ssd"
    }
  }


  // Local SSD disk
//  scratch_disk {
//    interface = "SCSI"
//  } 

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"


  attached_disk {
      source = google_compute_region_disk.regiondisk.self_link
  }


  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

}

resource "google_compute_attached_disk" "default" {
    disk     = google_compute_region_disk.regiondisk.id
    instance = google_compute_instance.default1.id
    forceattach = true
}

*/