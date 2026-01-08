variable "project_id" {
  type        = string
  description = "Project ID of the project."
}

variable "api_list" {
  type        = list(string)
  description = "List of APIs to enable in the project."
}