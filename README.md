# Terraform AWS Cognito Client

This module will create AWS Cognito User Pool Client

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 3 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| user\_pool\_id | (Required) The Id of the user pool where the resource server is applied for. | `string` | n/a | yes |
| clients | (Optional) A list of objects with the clients definitions. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| client\_secrets | The secrets of all created Cognito User Pool Client resources. |
| clients | All Cognito User Pool Client resources associated with the Cognito User Pool. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
