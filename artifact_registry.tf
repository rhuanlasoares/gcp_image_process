module "artifact_registry" {
  depends_on = [module.apis]
  source     = "./modules/artifact_registry"

  project_id    = var.project_id
  region        = var.region
  repository_id = var.repository_id
}
