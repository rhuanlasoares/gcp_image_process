# cloud_run

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
| [google_cloud_run_v2_service.cloud_run_image_process](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name_input"></a> [bucket\_name\_input](#input\_bucket\_name\_input) | Name of the input bucket. | `string` | n/a | yes |
| <a name="input_bucket_name_output"></a> [bucket\_name\_output](#input\_bucket\_name\_output) | Name of the output bucket. | `string` | n/a | yes |
| <a name="input_image_cloud_run"></a> [image\_cloud\_run](#input\_image\_cloud\_run) | Container image to be deployed in Cloud Run service. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the resource. | `string` | n/a | yes |
| <a name="input_service_account_email_cloud_run"></a> [service\_account\_email\_cloud\_run](#input\_service\_account\_email\_cloud\_run) | Service account email to be used by Cloud Run service. | `string` | n/a | yes |
| <a name="input_service_name_cloud_run"></a> [service\_name\_cloud\_run](#input\_service\_name\_cloud\_run) | Name of the Cloud Run service. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the subnetwork to be used by Cloud Run service. | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC network to be used by Cloud Run service. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
