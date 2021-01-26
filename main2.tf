resource "google_compute_instance_template" "default" {
  name        = "test-appserver-template"
  description = "This template is used to create app server instances."

  tags = ["foo", "bar"]

  labels = {
    environment = "dev"
  }

  instance_description = "description assigned to instances"
  machine_type         = "e2-medium"
  can_ip_forward       = false

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  // Create a new boot disk from an image
  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  // Use an existing disk resource
  disk {
    // Instance Templates reference disks by name, not self link
    #source      = google_compute_region_disk.regiondisk.name
    source      = google_compute_disk.disk1.name
    auto_delete = false
    boot        = false
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance_from_template" "tpl" {
  name = "test-instance-from-template"
  zone = "us-central1-f"

  source_instance_template = google_compute_instance_template.default.id

  // Override fields from instance template
  #can_ip_forward = false
  labels = {
    my_key = "my_value"
  }
}

resource "google_compute_disk" "disk1" {
  name  = "my-disk1"
  image = "debian-cloud/debian-9"
  size  = 50
  type  = "pd-ssd"
  zone  = "us-central1-f"
}