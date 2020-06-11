variable "gce-user_roles" {
  default = [
    "roles/compute.instanceAdmin",
  ]
}

resource "google_service_account" "gce-user" {
  account_id = "gce-user"
}

resource "google_project_iam_member" "gce-user" {
  count  = length(var.gce-user_roles)
  role   = element(var.gce-user_roles, count.index)
  member = "serviceAccount:${google_service_account.gce-user.email}"
}