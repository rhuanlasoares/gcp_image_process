output "service_agent_member" {
  value = {
    for sa in google_project_service_identity.service_agent :
    sa.service => sa.member
  }
}