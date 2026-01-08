variable "project_id" {
  type        = string
  description = "Project ID of the project."
}

variable "region" {
  type        = string
  description = "Region of the resource."
}

variable "service_name_cloud_run" {
  type        = string
  description = "Name of the Cloud Run service."
}

variable "service_account_email_cloud_run" {
  type        = string
  description = "Service account email to be used by Cloud Run service."
}

variable "image_cloud_run" {
  type        = string
  description = "Container image to be deployed in Cloud Run service."
}

variable "bucket_name_output" {
  type        = string
  description = "Name of the output bucket."
}

variable "bucket_name_input" {
  type        = string
  description = "Name of the input bucket."
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC network to be used by Cloud Run service."
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnetwork to be used by Cloud Run service."
}