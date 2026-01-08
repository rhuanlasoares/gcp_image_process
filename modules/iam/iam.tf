resource "google_project_iam_member" "eventarc_permissions" {
  for_each = var.roles_sa_eventarc
  project  = var.project_id
  role     = each.value
  member   = var.sa_eventarc_member
}

resource "google_storage_bucket_iam_member" "storage_reader" {
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

resource "google_project_iam_member" "pub_sub_publisher" {
  project = var.project_id
  role    = "roles/pubsub.publisher"
  member  = var.service_agent_storage_member
}

resource "google_compute_subnetwork_iam_member" "cloud_run_network_user" {
  project    = var.project_id
  region     = var.region
  subnetwork = var.subnet_name
  role       = "roles/compute.networkUser"
  member     = var.sa_cloud_run_member
}