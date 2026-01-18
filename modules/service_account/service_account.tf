resource "google_service_account" "sa_cloud_run" {
  account_id   = var.account_id_sa_cloud_run
  display_name = var.display_name_sa_cloud_run
  project      = var.project_id
}

resource "google_service_account" "sa_eventarc" {
  account_id   = var.account_id_sa_eventarc
  display_name = var.display_name_sa_eventarc
  project      = var.project_id
}

resource "google_service_account" "sa_wifederation" {
  account_id   = var.account_id_sa_wifederation
  display_name = var.display_name_sa_wifederation
  project      = var.project_id
}
