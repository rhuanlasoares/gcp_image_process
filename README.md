# gcp_process_image

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 7.15.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | ~> 7.15.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_apis"></a> [apis](#module\_apis) | ./modules/apis | n/a |
| <a name="module_artifact_registry"></a> [artifact\_registry](#module\_artifact\_registry) | ./modules/artifact_registry | n/a |
| <a name="module_bucket"></a> [bucket](#module\_bucket) | ./modules/bucket | n/a |
| <a name="module_cloud_run"></a> [cloud\_run](#module\_cloud\_run) | ./modules/cloud_run | n/a |
| <a name="module_eventarc"></a> [eventarc](#module\_eventarc) | ./modules/eventarc | n/a |
| <a name="module_iam"></a> [iam](#module\_iam) | ./modules/iam | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |
| <a name="module_service_account"></a> [service\_account](#module\_service\_account) | ./modules/service_account | n/a |
| <a name="module_service_agent"></a> [service\_agent](#module\_service\_agent) | ./modules/service_agent | n/a |
| <a name="module_wipool"></a> [wipool](#module\_wipool) | ./modules/wipool | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id_sa_cloud_run"></a> [account\_id\_sa\_cloud\_run](#input\_account\_id\_sa\_cloud\_run) | Account ID for the Cloud Run service account. | `string` | n/a | yes |
| <a name="input_account_id_sa_eventarc"></a> [account\_id\_sa\_eventarc](#input\_account\_id\_sa\_eventarc) | Account ID for the Eventarc service account. | `string` | n/a | yes |
| <a name="input_account_id_sa_wifederation"></a> [account\_id\_sa\_wifederation](#input\_account\_id\_sa\_wifederation) | Account ID for the Workload Identity Fedeartion service account. | `string` | n/a | yes |
| <a name="input_api_list"></a> [api\_list](#input\_api\_list) | List of APIs to enable in the project. | `list(string)` | n/a | yes |
| <a name="input_bucket_name_input"></a> [bucket\_name\_input](#input\_bucket\_name\_input) | Name of the input bucket. | `string` | n/a | yes |
| <a name="input_bucket_name_output"></a> [bucket\_name\_output](#input\_bucket\_name\_output) | Name of the output bucket. | `string` | n/a | yes |
| <a name="input_display_name_sa_cloud_run"></a> [display\_name\_sa\_cloud\_run](#input\_display\_name\_sa\_cloud\_run) | Display name for the Cloud Run service account. | `string` | n/a | yes |
| <a name="input_display_name_sa_eventarc"></a> [display\_name\_sa\_eventarc](#input\_display\_name\_sa\_eventarc) | Display name for the Eventarc service account. | `string` | n/a | yes |
| <a name="input_display_name_sa_wifederation"></a> [display\_name\_sa\_wifederation](#input\_display\_name\_sa\_wifederation) | Account ID for the Workload Identity Fedeartion service account. | `string` | n/a | yes |
| <a name="input_display_name_wip"></a> [display\_name\_wip](#input\_display\_name\_wip) | Display name of the Workload Identity Pool | `string` | n/a | yes |
| <a name="input_display_name_wip_provider"></a> [display\_name\_wip\_provider](#input\_display\_name\_wip\_provider) | Display name of the Workload Identity Provider | `string` | n/a | yes |
| <a name="input_image_cloud_run"></a> [image\_cloud\_run](#input\_image\_cloud\_run) | Container image for the Cloud Run service. | `string` | n/a | yes |
| <a name="input_ip_cidr_range_subnet"></a> [ip\_cidr\_range\_subnet](#input\_ip\_cidr\_range\_subnet) | IP CIDR range of the subnetwork. | `string` | n/a | yes |
| <a name="input_name_eventarc_trigger"></a> [name\_eventarc\_trigger](#input\_name\_eventarc\_trigger) | Name of the Eventarc trigger. | `string` | n/a | yes |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | The name of the Cloud NAT. | `string` | n/a | yes |
| <a name="input_owner_and_repository"></a> [owner\_and\_repository](#input\_owner\_and\_repository) | Owner and the name of the repository. Example: owner/repository. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the resource. | `string` | n/a | yes |
| <a name="input_repository_id"></a> [repository\_id](#input\_repository\_id) | ID of the Artifact Registry repository. | `string` | n/a | yes |
| <a name="input_roles_sa_cloud_run_bucket"></a> [roles\_sa\_cloud\_run\_bucket](#input\_roles\_sa\_cloud\_run\_bucket) | Map of roles to be assigned to the Cloud Run service account. | `map(string)` | n/a | yes |
| <a name="input_roles_sa_wifederation_bucket"></a> [roles\_sa\_wifederation\_bucket](#input\_roles\_sa\_wifederation\_bucket) | Map of roles to be assigned to the Workload Identity Federation service account. | `map(string)` | n/a | yes |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | The name of the Cloud Router. | `string` | n/a | yes |
| <a name="input_service_agents"></a> [service\_agents](#input\_service\_agents) | Map of service agents to be created. | `map(string)` | n/a | yes |
| <a name="input_service_name_cloud_run"></a> [service\_name\_cloud\_run](#input\_service\_name\_cloud\_run) | Name of the Cloud Run service. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the subnet within the VPC network. | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC network. | `string` | n/a | yes |
| <a name="input_workload_identity_pool_id"></a> [workload\_identity\_pool\_id](#input\_workload\_identity\_pool\_id) | The ID used for the pool, which is the final component of the pool resource name | `string` | n/a | yes |
| <a name="input_workload_identity_pool_provider_id"></a> [workload\_identity\_pool\_provider\_id](#input\_workload\_identity\_pool\_provider\_id) | The ID used for the provider, which is the final component of the pool resource name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
