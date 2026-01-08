output "service_agent_member" {
  value = {
    for sa in google_project_service_identity.service_agent :
    sa.service => sa.member
  }
}

output "service_agent_email" {
  value = {
    for sa in google_project_service_identity.service_agent :
    sa.service => sa.email
  }
}
