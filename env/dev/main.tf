module "provider" {
  source         = "../../modules/providers"
  primary_region = var.primary_region
  project_id     = var.project_id
}