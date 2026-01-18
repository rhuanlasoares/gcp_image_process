resource "google_project_iam_member" "eventarc_permissions" {
  project = var.project_id
  role    = "roles/eventarc.eventReceiver"
  member  = var.sa_eventarc_member
}

resource "google_storage_bucket_iam_member" "storage" {
  for_each = var.roles_sa_cloud_run_bucket
  bucket   = each.key
  role     = each.value
  member   = var.sa_cloud_run_member
}

resource "google_project_iam_member" "pub_sub_token_creator" {
  project = var.project_id
  role    = "roles/iam.serviceAccountTokenCreator"
  member  = var.service_agent_pubsub_member
}

data "google_storage_project_service_account" "gcs_account" {
  project = var.project_id
}
resource "google_project_iam_member" "pub_sub_publisher" {
  project = var.project_id
  role    = "roles/pubsub.publisher"
  member  = "serviceAccount:${data.google_storage_project_service_account.gcs_account.email_address}"
}

resource "google_compute_subnetwork_iam_member" "cloud_run_network_user" {
  project    = var.project_id
  region     = var.region
  subnetwork = var.subnet_name
  role       = "roles/compute.networkUser"
  member     = var.sa_cloud_run_member
}

resource "google_artifact_registry_repository_iam_member" "cloud_run_artreg_reader" {
  project    = var.project_id
  location   = var.region
  repository = var.repository_id
  role       = "roles/artifactregistry.reader"
  member     = var.sa_cloud_run_member
}

resource "google_artifact_registry_repository_iam_member" "sa_wifederation_artreg_admin" {
  project    = var.project_id
  location   = var.region
  repository = var.repository_id
  role       = "roles/artifactregistry.admin"
  member     = var.sa_wifederation_member
}

resource "google_compute_subnetwork_iam_member" "sa_wifederation_network_admin" {
  project    = var.project_id
  region     = var.region
  subnetwork = var.subnet_name
  role       = "roles/compute.networkAdmin"
  member     = var.sa_wifederation_member
}

resource "google_storage_bucket_iam_member" "storage_admin" {
  for_each = var.roles_sa_wifederation_bucket
  bucket   = each.key
  role     = each.value
  member   = var.sa_wifederation_member
}

resource "google_cloud_run_v2_service_iam_member" "wifederation_admin" {
  project  = var.project_id
  location = var.region
  name     = var.service_name_cloud_run
  role     = "roles/run.admin"
  member   = var.sa_wifederation_member
}

resource "google_cloud_run_v2_service_iam_member" "eventarc_invoker" {
  project  = var.project_id
  location = var.region
  name     = var.service_name_cloud_run
  role     = "roles/run.invoker"
  member   = var.sa_eventarc_member
}

resource "google_service_account_iam_member" "sa_cloud_run_actAs" {
  service_account_id = var.sa_wifederation_name
  role               = "roles/iam.serviceAccountUser"
  member             = var.sa_wifederation_member
}
