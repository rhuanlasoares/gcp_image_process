module "service_agent" {
  depends_on = [module.apis]
  source     = "./modules/service_agent"

  project_id     = var.project_id
  service_agents = var.service_agents
}