module "iam" {
  depends_on = [
    module.apis,
    module.service_account,
    module.network,
    module.artifact_registry,
    module.cloud_run
  ]
  source = "./modules/iam"

  project_id                   = var.project_id
  roles_sa_eventarc            = var.roles_sa_eventarc
  sa_eventarc_member           = module.service_account.sa_eventarc_member
  roles_sa_cloud_run_bucket    = var.roles_sa_cloud_run_bucket
  bucket_name_input            = var.bucket_name_input
  bucket_name_output           = var.bucket_name_output
  sa_cloud_run_member          = module.service_account.sa_cloud_run_member
  service_agent_pubsub_member  = module.service_agent.service_agent_member["pubsub.googleapis.com"]
  vpc_name                     = var.vpc_name
  subnet_name                  = var.subnet_name
  region                       = var.region
  repository_id                = var.repository_id
  service_name_cloud_run       = var.service_name_cloud_run
  sa_wifederation_member       = module.service_account.sa_wifederation_member
  roles_sa_wifederation_bucket = var.roles_sa_wifederation_bucket
  sa_wifederation_name         = module.service_account.sa_cloud_run_name
}
