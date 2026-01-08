module "network" {
  depends_on = [module.apis]
  source     = "./modules/network"

  project_id           = var.project_id
  region               = var.region
  vpc_name             = var.vpc_name
  subnet_name          = var.subnet_name
  ip_cidr_range_subnet = var.ip_cidr_range_subnet
  router_name          = var.router_name
  nat_name             = var.nat_name
}