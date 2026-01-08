resource "google_project_service_identity" "service_agent" {
  provider = google-beta
  for_each = var.service_agents
  project  = var.project_id
  service  = each.value
}

resource "time_sleep" "wait_for_identity" {
  create_duration = "15s"

  depends_on = [
    google_project_service_identity.service_agent,
  ]
}