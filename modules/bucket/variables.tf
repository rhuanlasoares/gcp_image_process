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

variable "bucket_name_output" {
  type        = string
  description = "Name of the output bucket."
}