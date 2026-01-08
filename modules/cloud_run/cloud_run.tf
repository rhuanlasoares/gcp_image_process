resource "google_cloud_run_v2_service" "cloud_run_image_process" {
  name                = var.service_name_cloud_run
  project             = var.project_id
  location            = var.region
  deletion_protection = false
  ingress             = "INGRESS_TRAFFIC_INTERNAL_ONLY"

  scaling {
    min_instance_count = 0
  }

  template {
    timeout         = "3600s"
    service_account = var.service_account_email_cloud_run
    containers {
      image = var.image_cloud_run
      name  = "${var.service_name_cloud_run}-container"
      env {
        name  = "OUTPUT_BUCKET"
        value = var.bucket_name_output
      }
      env {
        name  = "INPUT_BUCKET"
        value = var.bucket_name_input
      }
      resources {
        limits = {
          memory = "512Mi"
          cpu    = "1"
        }
      }
    }
    vpc_access {
      network_interfaces {
        network    = var.vpc_name
        subnetwork = var.subnet_name
      }
    }
  }

  traffic {
    type    = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
    percent = 100
  }
}
