output "sa_cloud_run_member" {
  description = "The member of the Cloud Run service account"
  value       = google_service_account.sa_cloud_run.member
}

output "sa_cloud_run_email" {
  description = "The email of the Cloud Run service account"
  value       = google_service_account.sa_cloud_run.email
}

output "sa_eventarc_member" {
  description = "The member of the Eventarc service account"
  value       = google_service_account.sa_eventarc.member
}

output "sa_eventarc_email" {
  description = "The email of the Eventarc service account"
  value       = google_service_account.sa_eventarc.email
}

output "sa_wifederation_email" {
  description = "The email of the sa_wifederation service account"
  value       = google_service_account.sa_wifederation.email
}

output "sa_wifederation_member" {
  description = "The email of the sa_wifederation service account"
  value       = google_service_account.sa_wifederation.member
}
