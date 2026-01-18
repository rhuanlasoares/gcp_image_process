# wipool

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 7.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_iam_workload_identity_pool.github_pool](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool) | resource |
| [google_iam_workload_identity_pool_provider.github_provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider) | resource |
| [google_service_account_iam_binding.github_identity_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_binding) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_display_name_wip"></a> [display\_name\_wip](#input\_display\_name\_wip) | Display name of the Workload Identity Pool | `string` | n/a | yes |
| <a name="input_display_name_wip_provider"></a> [display\_name\_wip\_provider](#input\_display\_name\_wip\_provider) | Display name of the Workload Identity Provider | `string` | n/a | yes |
| <a name="input_owner_and_repository"></a> [owner\_and\_repository](#input\_owner\_and\_repository) | Owner and the name of the repository. Example: owner/repository. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID do projeto utilizado na plataforma. | `string` | n/a | yes |
| <a name="input_sa_wifederation_email"></a> [sa\_wifederation\_email](#input\_sa\_wifederation\_email) | Email of the Service Account used for Workload Identity Federation. | `string` | n/a | yes |
| <a name="input_workload_identity_pool_id"></a> [workload\_identity\_pool\_id](#input\_workload\_identity\_pool\_id) | The ID used for the pool, which is the final component of the pool resource name | `string` | n/a | yes |
| <a name="input_workload_identity_pool_provider_id"></a> [workload\_identity\_pool\_provider\_id](#input\_workload\_identity\_pool\_provider\_id) | The ID used for the provider, which is the final component of the pool resource name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_github_provider_name"></a> [github\_provider\_name](#output\_github\_provider\_name) | n/a |
<!-- END_TF_DOCS -->
