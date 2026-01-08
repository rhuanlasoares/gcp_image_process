resource "google_project_service" "allow_api" {
  for_each           = toset(var.api_list)
  project            = var.project_id
  service            = each.value
  disable_on_destroy = false
}
