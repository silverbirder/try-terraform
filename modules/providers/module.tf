provider "google" {
  project = var.project_id
  region  = var.primary_region
  version = "3.25.0"
}