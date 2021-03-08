# terraform-hcp-vault

## Requirements

Terraform Cloud or Terraform Enterprise
HCP Vault

## Providers

| Name  | Version |
| ----- | ------- |
| vault | n/a     |

## Modules

No Modules.

## Resources

| Name                                                                                                                 |
| -------------------------------------------------------------------------------------------------------------------- |
| [vault_generic_secret](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_secret) |
| [vault_policy](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy)                 |

## Inputs

| Name      | Description | Type  | Default | Required |
| --------- | ----------- | ----- | ------- | :------: |
| address   | n/a         | `any` | n/a     |   yes    |
| namespace | n/a         | `any` | n/a     |   yes    |
| token     | n/a         | `any` | n/a     |   yes    |

## Outputs

No output.
