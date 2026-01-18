variable "project_id" {
  type        = string
  description = "Project ID of the project."
}

variable "region" {
  type        = string
  description = "Region of the resource."
}

variable "api_list" {
  type        = list(string)
  description = "List of APIs to enable in the project."
}

variable "service_agents" {
  type        = map(string)
  description = "Map of service agents to be created."
}

variable "roles_sa_cloud_run_bucket" {
  type        = map(string)
  description = "Map of roles to be assigned to the Cloud Run service account."
}

variable "bucket_name_input" {
  type        = string
  description = "Name of the input bucket."
}

variable "bucket_name_output" {
  type        = string
  description = "Name of the output bucket."
}

variable "service_name_cloud_run" {
  type        = string
  description = "Name of the Cloud Run service."
}

variable "image_cloud_run" {
  type        = string
  description = "Container image for the Cloud Run service."
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC network."
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet within the VPC network."
}

variable "ip_cidr_range_subnet" {
  type        = string
  description = "IP CIDR range of the subnetwork."
}

variable "router_name" {
  type        = string
  description = "The name of the Cloud Router."
}

variable "nat_name" {
  type        = string
  description = "The name of the Cloud NAT."
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

variable "name_eventarc_trigger" {
  type        = string
  description = "Name of the Eventarc trigger."
}

variable "repository_id" {
  type        = string
  description = "ID of the Artifact Registry repository."
}

variable "workload_identity_pool_id" {
  type        = string
  description = "The ID used for the pool, which is the final component of the pool resource name"
}

variable "display_name_wip" {
  type        = string
  description = "Display name of the Workload Identity Pool"
}

variable "workload_identity_pool_provider_id" {
  type        = string
  description = "The ID used for the provider, which is the final component of the pool resource name"
}

variable "display_name_wip_provider" {
  type        = string
  description = "Display name of the Workload Identity Provider"
}

variable "owner_and_repository" {
  type        = string
  description = "Owner and the name of the repository. Example: owner/repository."
}

variable "roles_sa_wifederation_bucket" {
  type        = map(string)
  description = "Map of roles to be assigned to the Workload Identity Federation service account."
}

variable "account_id_sa_wifederation" {
  type        = string
  description = "Account ID for the Workload Identity Fedeartion service account."
}

variable "display_name_sa_wifederation" {
  type        = string
  description = "Account ID for the Workload Identity Fedeartion service account."
}
