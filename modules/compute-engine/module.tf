resource "google_compute_instance" "default" {
  name                      = "sample-gce"
  machine_type              = "n1-standard-1"
  zone                      = var.zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
  }

  service_account {
    email  = var.gce-user_email
    scopes = ["cloud-platform"]
  }
}