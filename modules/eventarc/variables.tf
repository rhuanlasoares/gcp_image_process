variable "name_eventarc_trigger" {
  type        = string
  description = "Name of the Eventarc trigger."
}

variable "project_id" {
  type        = string
  description = "Project ID of the project."
}

variable "region" {
  type        = string
  description = "Region of the resource."
}

variable "bucket_name_input" {
  type        = string
  description = "Name of the input bucket."
}

variable "service_name_cloud_run" {
  type        = string
  description = "Name of the Cloud Run service."
}

variable "sa_eventarc_email" {
  type        = string
  description = "Service account email for Eventarc IAM bindings."
}