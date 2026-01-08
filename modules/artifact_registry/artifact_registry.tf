resource "google_artifact_registry_repository" "artreg_cloud_run_image_processing" {
  cleanup_policy_dry_run = true
  description            = "Artifact Registry Repository for Cloud Run service Image Processing"
  format                 = "DOCKER"

  location      = var.region
  mode          = "STANDARD_REPOSITORY"
  project       = var.project_id
  repository_id = var.repository_id
}
