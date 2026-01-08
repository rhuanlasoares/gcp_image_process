# eventarc

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
| [google_eventarc_trigger.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/eventarc_trigger) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name_input"></a> [bucket\_name\_input](#input\_bucket\_name\_input) | Name of the input bucket. | `string` | n/a | yes |
| <a name="input_name_eventarc_trigger"></a> [name\_eventarc\_trigger](#input\_name\_eventarc\_trigger) | Name of the Eventarc trigger. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the resource. | `string` | n/a | yes |
| <a name="input_sa_eventarc_email"></a> [sa\_eventarc\_email](#input\_sa\_eventarc\_email) | Service account email for Eventarc IAM bindings. | `string` | n/a | yes |
| <a name="input_service_name_cloud_run"></a> [service\_name\_cloud\_run](#input\_service\_name\_cloud\_run) | Name of the Cloud Run service. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
