resource "google_eventarc_trigger" "default" {
  name     = var.name_eventarc_trigger
  project  = var.project_id
  location = var.region

  matching_criteria {
    attribute = "type"
    value     = "google.cloud.storage.object.v1.finalized"
  }

  matching_criteria {
    attribute = "bucket"
    value     = var.bucket_name_input
  }

  destination {
    cloud_run_service {
      service = var.service_name_cloud_run
      region  = var.region
    }
  }

  service_account = var.sa_eventarc_email
}
