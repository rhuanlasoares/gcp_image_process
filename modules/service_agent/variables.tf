variable "project_id" {
  type        = string
  description = "Project ID of the project."
}
variable "service_agents" {
  type        = map(string)
  description = "Map of service agents to be created."
}