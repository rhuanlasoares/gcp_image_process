module "cloud_run" {
  depends_on = [
    module.apis,
    module.network
  ]
  source = "./modules/cloud_run"

  service_name_cloud_run          = var.service_name_cloud_run
  project_id                      = var.project_id
  region                          = var.region
  image_cloud_run                 = var.image_cloud_run
  service_account_email_cloud_run = module.service_account.sa_cloud_run_email
  bucket_name_input               = var.bucket_name_input
  bucket_name_output              = var.bucket_name_output
  vpc_name                        = var.vpc_name
  subnet_name                     = var.subnet_name
}
