variable "project_id" {
  type        = string
  description = "Project ID of the project."
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