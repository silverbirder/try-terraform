module "provider" {
  source     = "../../modules/providers"
  region     = var.region
  project_id = var.project_id
}

module "compute-engine" {
  source         = "../../modules/compute-engine"
  gce-user_email = google_service_account.gce-user.email
  zone           = var.zone
}