variable "project_id" {
  type        = string
  description = "Project ID of the project."
}

variable "account_id_sa_cloud_run" {
  type        = string
  description = "Account ID for the Cloud Run service account."
}

variable "display_name_sa_cloud_run" {
  type        = string
  description = "Display name for the Cloud Run service account."
}

variable "account_id_sa_eventarc" {
  type        = string
  description = "Account ID for the Eventarc service account."
}

variable "display_name_sa_eventarc" {
  type        = string
  description = "Display name for the Eventarc service account."
}