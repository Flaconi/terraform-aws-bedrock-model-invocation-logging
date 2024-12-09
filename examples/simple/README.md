# Example

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.73 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_logging"></a> [logging](#module\_logging) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | The name of the S3 bucket to be created. | `string` | n/a | yes |
| <a name="input_embedding_data_delivery_enabled"></a> [embedding\_data\_delivery\_enabled](#input\_embedding\_data\_delivery\_enabled) | Indicates whether embedding data delivery is enabled. | `bool` | `false` | no |
| <a name="input_image_data_delivery_enabled"></a> [image\_data\_delivery\_enabled](#input\_image\_data\_delivery\_enabled) | Indicates whether image data delivery is enabled. | `bool` | `false` | no |
| <a name="input_text_data_delivery_enabled"></a> [text\_data\_delivery\_enabled](#input\_text\_data\_delivery\_enabled) | Indicates whether text data delivery is enabled. | `bool` | `false` | no |
| <a name="input_key_prefix"></a> [key\_prefix](#input\_key\_prefix) | The key prefix for logging configuration in S3. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resources"></a> [resources](#output\_resources) | Information about created resources |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
