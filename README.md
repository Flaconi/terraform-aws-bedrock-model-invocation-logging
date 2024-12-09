# terraform-aws-bedrock-model-invocation-logging

Terraform module for Amazon Bedrock Agent resources

[![lint](https://github.com/flaconi/terraform-aws-bedrock-model-invocation-logging/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-aws-bedrock-model-invocation-logging/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-aws-bedrock-model-invocation-logging/workflows/test/badge.svg)](https://github.com/flaconi/terraform-aws-bedrock-model-invocation-logging/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-aws-bedrock-model-invocation-logging.svg)](https://github.com/flaconi/terraform-aws-bedrock-model-invocation-logging/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)


<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_bucket"></a> [bucket](#input\_bucket)

Description: The name of the S3 bucket to be created.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_embedding_data_delivery_enabled"></a> [embedding\_data\_delivery\_enabled](#input\_embedding\_data\_delivery\_enabled)

Description: Indicates whether embedding data delivery is enabled.

Type: `bool`

Default: `false`

### <a name="input_image_data_delivery_enabled"></a> [image\_data\_delivery\_enabled](#input\_image\_data\_delivery\_enabled)

Description: Indicates whether image data delivery is enabled.

Type: `bool`

Default: `false`

### <a name="input_text_data_delivery_enabled"></a> [text\_data\_delivery\_enabled](#input\_text\_data\_delivery\_enabled)

Description: Indicates whether text data delivery is enabled.

Type: `bool`

Default: `false`

### <a name="input_key_prefix"></a> [key\_prefix](#input\_key\_prefix)

Description: The key prefix for logging configuration in S3.

Type: `string`

Default: `""`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: A map of tags to assign to the customization job and custom model.

Type: `map(string)`

Default: `{}`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | The ARN of the created S3 bucket. |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | The name of the created S3 bucket. |
| <a name="output_bucket_policy_id"></a> [bucket\_policy\_id](#output\_bucket\_policy\_id) | The ID of the S3 bucket policy. |
| <a name="output_key_prefix"></a> [key\_prefix](#output\_key\_prefix) | The key prefix used for the Bedrock logging configuration. |
| <a name="output_logging_bucket_name"></a> [logging\_bucket\_name](#output\_logging\_bucket\_name) | The name of the S3 bucket used for Bedrock model invocation logging. |

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2024 **[Flaconi GmbH](https://github.com/flaconi)**
