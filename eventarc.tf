module "eventarc" {
  depends_on = [
    module.apis,
    module.cloud_run,
    module.iam
  ]

  source                 = "./modules/eventarc"
  name_eventarc_trigger  = var.name_eventarc_trigger
  project_id             = var.project_id
  region                 = var.region
  bucket_name_input      = var.bucket_name_input
  service_name_cloud_run = var.service_name_cloud_run
  sa_eventarc_email      = module.service_account.sa_eventarc_email
}