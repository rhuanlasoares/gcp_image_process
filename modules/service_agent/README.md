# service_agent

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | 7.15.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_project_service_identity.service_agent](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_project_service_identity) | resource |
| [time_sleep.wait_for_identity](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |
| <a name="input_service_agents"></a> [service\_agents](#input\_service\_agents) | Map of service agents to be created. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_agent_email"></a> [service\_agent\_email](#output\_service\_agent\_email) | n/a |
| <a name="output_service_agent_member"></a> [service\_agent\_member](#output\_service\_agent\_member) | n/a |
<!-- END_TF_DOCS -->
