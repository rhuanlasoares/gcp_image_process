resource "google_storage_bucket" "bucket_input" {
  name          = var.bucket_name_input
  project       = var.project_id
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = false
  public_access_prevention    = "enforced"

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type          = "SetStorageClass"
      storage_class = "ARCHIVE"
    }
  }
}

resource "google_storage_bucket" "bucket_output" {
  name          = var.bucket_name_output
  project       = var.project_id
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = false
  public_access_prevention    = "enforced"
}

