# service_account

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
| [google_service_account.sa_cloud_run](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account.sa_eventarc](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account.sa_wifederation](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id_sa_cloud_run"></a> [account\_id\_sa\_cloud\_run](#input\_account\_id\_sa\_cloud\_run) | Account ID for the Cloud Run service account. | `string` | n/a | yes |
| <a name="input_account_id_sa_eventarc"></a> [account\_id\_sa\_eventarc](#input\_account\_id\_sa\_eventarc) | Account ID for the Eventarc service account. | `string` | n/a | yes |
| <a name="input_account_id_sa_wifederation"></a> [account\_id\_sa\_wifederation](#input\_account\_id\_sa\_wifederation) | Account ID for the Workload Identity Fedeartion service account. | `string` | n/a | yes |
| <a name="input_display_name_sa_cloud_run"></a> [display\_name\_sa\_cloud\_run](#input\_display\_name\_sa\_cloud\_run) | Display name for the Cloud Run service account. | `string` | n/a | yes |
| <a name="input_display_name_sa_eventarc"></a> [display\_name\_sa\_eventarc](#input\_display\_name\_sa\_eventarc) | Display name for the Eventarc service account. | `string` | n/a | yes |
| <a name="input_display_name_sa_wifederation"></a> [display\_name\_sa\_wifederation](#input\_display\_name\_sa\_wifederation) | Account ID for the Workload Identity Fedeartion service account. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sa_cloud_run_email"></a> [sa\_cloud\_run\_email](#output\_sa\_cloud\_run\_email) | The email of the Cloud Run service account |
| <a name="output_sa_cloud_run_member"></a> [sa\_cloud\_run\_member](#output\_sa\_cloud\_run\_member) | The member of the Cloud Run service account |
| <a name="output_sa_cloud_run_name"></a> [sa\_cloud\_run\_name](#output\_sa\_cloud\_run\_name) | The name of the Cloud Run service account |
| <a name="output_sa_eventarc_email"></a> [sa\_eventarc\_email](#output\_sa\_eventarc\_email) | The email of the Eventarc service account |
| <a name="output_sa_eventarc_member"></a> [sa\_eventarc\_member](#output\_sa\_eventarc\_member) | The member of the Eventarc service account |
| <a name="output_sa_wifederation_email"></a> [sa\_wifederation\_email](#output\_sa\_wifederation\_email) | The email of the sa\_wifederation service account |
| <a name="output_sa_wifederation_member"></a> [sa\_wifederation\_member](#output\_sa\_wifederation\_member) | The email of the sa\_wifederation service account |
<!-- END_TF_DOCS -->
