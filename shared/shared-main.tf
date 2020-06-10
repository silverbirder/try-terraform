resource "google_storage_bucket" "tfstate" {
  name     = "${var.project_id}-storage-bucket"
  location = var.gcs_location

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
