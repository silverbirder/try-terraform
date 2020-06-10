module "provider" {
  source = "../../modules/providers"
  
  tags {
    primary_region = var.primary_region
    project_id = var.project_id
  }
}