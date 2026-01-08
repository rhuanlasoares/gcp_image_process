# iam

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 7.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_artifact_registry_repository_iam_member.member](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository_iam_member) | resource |
| [google_compute_subnetwork_iam_member.cloud_run_network_user](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork_iam_member) | resource |
| [google_project_iam_member.eventarc_permissions](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.pub_sub_publisher](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.pub_sub_token_creator](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_storage_bucket_iam_member.storage_reader](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_member) | resource |
| [google_storage_project_service_account.gcs_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/storage_project_service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name_input"></a> [bucket\_name\_input](#input\_bucket\_name\_input) | Name of the storage bucket. | `string` | n/a | yes |
| <a name="input_bucket_name_output"></a> [bucket\_name\_output](#input\_bucket\_name\_output) | Name of the output bucket. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the resource. | `string` | n/a | yes |
| <a name="input_repository_id"></a> [repository\_id](#input\_repository\_id) | ID of the Artifact Registry repository. | `string` | n/a | yes |
| <a name="input_roles_sa_cloud_run_bucket"></a> [roles\_sa\_cloud\_run\_bucket](#input\_roles\_sa\_cloud\_run\_bucket) | Map of roles to be assigned to the Cloud Run service account. | `map(string)` | n/a | yes |
| <a name="input_roles_sa_eventarc"></a> [roles\_sa\_eventarc](#input\_roles\_sa\_eventarc) | Map of roles to be assigned to the Eventarc service account. | `map(string)` | n/a | yes |
| <a name="input_sa_cloud_run_member"></a> [sa\_cloud\_run\_member](#input\_sa\_cloud\_run\_member) | Service Account member of Cloud Run for IAM bindings. | `string` | n/a | yes |
| <a name="input_sa_eventarc_member"></a> [sa\_eventarc\_member](#input\_sa\_eventarc\_member) | Service account member for Eventarc IAM bindings. | `string` | n/a | yes |
| <a name="input_service_agent_pubsub_member"></a> [service\_agent\_pubsub\_member](#input\_service\_agent\_pubsub\_member) | Service agent member for Pub/Sub IAM bindings. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the subnetwork. | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC network. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
