# network

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
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router_nat.nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.subnet_gcr](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_cidr_range_subnet"></a> [ip\_cidr\_range\_subnet](#input\_ip\_cidr\_range\_subnet) | IP CIDR range of the subnetwork. | `string` | n/a | yes |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | The name of the Cloud NAT. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the resource. | `string` | n/a | yes |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | The name of the Cloud Router. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the subnetwork. | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC network. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
