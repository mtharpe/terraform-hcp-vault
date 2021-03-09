# terraform-hcp-vault

## Requirements

Terraform Cloud or Terraform Enterprise
HCP Vault

## Providers

| Name | Version |
|------|---------|
| vault | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [vault_aws_secret_backend](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_secret_backend) |
| [vault_aws_secret_backend_role](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_secret_backend_role) |
| [vault_generic_secret](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_secret) |
| [vault_policy](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| address | n/a | `any` | n/a | yes |
| aws\_access\_key | n/a | `any` | n/a | yes |
| aws\_secret\_key | n/a | `any` | n/a | yes |
| token | n/a | `any` | n/a | yes |

## Outputs

No output.