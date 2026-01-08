# artifact_registry

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
| [google_artifact_registry_repository.artreg_cloud_run_image_processing](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the resource. | `string` | n/a | yes |
| <a name="input_repository_id"></a> [repository\_id](#input\_repository\_id) | ID of the Artifact Registry repository. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
