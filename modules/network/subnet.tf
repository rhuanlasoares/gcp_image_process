resource "google_compute_subnetwork" "subnet_gcr" {
  project       = var.project_id
  name          = var.subnet_name
  ip_cidr_range = var.ip_cidr_range_subnet
  region        = var.region
  network       = google_compute_network.vpc_network.id
}