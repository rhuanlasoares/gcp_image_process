module "service_account" {
  depends_on = [module.apis]
  source     = "./modules/service_account"

  project_id                = var.project_id
  account_id_sa_cloud_run   = var.account_id_sa_cloud_run
  display_name_sa_cloud_run = var.display_name_sa_cloud_run
  account_id_sa_eventarc    = var.account_id_sa_eventarc
  display_name_sa_eventarc  = var.display_name_sa_eventarc
}