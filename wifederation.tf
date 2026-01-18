module "wipool" {
  depends_on = [module.iam]
  source     = "./modules/wipool"

  project_id                         = var.project_id
  workload_identity_pool_provider_id = var.workload_identity_pool_provider_id
  display_name_wip                   = var.display_name_wip
  display_name_wip_provider          = var.display_name_wip_provider
  owner_and_repository               = var.owner_and_repository
  workload_identity_pool_id          = var.workload_identity_pool_id
  sa_wifederation_email              = module.service_account.sa_wifederation_email
}
