variable "project_id" {
  type        = string
  description = "Project ID of the project."
}

variable "roles_sa_eventarc" {
  type        = map(string)
  description = "Map of roles to be assigned to the Eventarc service account."
}

variable "sa_eventarc_member" {
  type        = string
  description = "Service account member for Eventarc IAM bindings."
}

variable "roles_sa_cloud_run_bucket" {
  type        = map(string)
  description = "Map of roles to be assigned to the Cloud Run service account."
}

variable "bucket_name_input" {
  type        = string
  description = "Name of the storage bucket."
}

variable "bucket_name_output" {
  type        = string
  description = "Name of the output bucket."
}

variable "sa_cloud_run_member" {
  type        = string
  description = "Service Account member of Cloud Run for IAM bindings."
}

variable "service_agent_pubsub_member" {
  type        = string
  description = "Service agent member for Pub/Sub IAM bindings."
}

variable "region" {
  type        = string
  description = "Region of the resource."
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC network."
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnetwork."
}

variable "repository_id" {
  type        = string
  description = "ID of the Artifact Registry repository."
}

variable "sa_wifederation_member" {
  type        = string
  description = "Service Account member of Workload Identity Federation for IAM bindings."
}

variable "service_name_cloud_run" {
  type        = string
  description = "Name of the Cloud Run service."
}

variable "roles_sa_wifederation_bucket" {
  type        = map(string)
  description = "Map of roles to be assigned to the Workload Identity Federation service account."
}

variable "sa_wifederation_name" {
  type        = string
  description = "Name of the Service Account user for Workload Identity Federation."
}
