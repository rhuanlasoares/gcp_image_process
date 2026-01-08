module "bucket" {
  depends_on = [module.apis]
  source     = "./modules/bucket"

  project_id         = var.project_id
  region             = var.region
  bucket_name_input  = var.bucket_name_input
  bucket_name_output = var.bucket_name_output
}