# Terraform AWS Cognito Client

This module will create AWS Cognito User Pool Client

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cognito_user_pool_client.client](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_user_pool_id"></a> [user\_pool\_id](#input\_user\_pool\_id) | (Required) The Id of the user pool where the resource server is applied for. | `string` | n/a | yes |
| <a name="input_clients"></a> [clients](#input\_clients) | (Optional) A list of objects with the clients definitions. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_secrets"></a> [client\_secrets](#output\_client\_secrets) | The secrets of all created Cognito User Pool Client resources. |
| <a name="output_clients"></a> [clients](#output\_clients) | All Cognito User Pool Client resources associated with the Cognito User Pool. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
