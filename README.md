# terraform-hcp-vault

## Requirements

HCP Account

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.16.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 2.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcp_vault_cluster_admin_token.vault_root_token](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_cluster_admin_token) | resource |
| [vault_auth_backend.username](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/auth_backend) | resource |
| [vault_aws_secret_backend.aws](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_secret_backend) | resource |
| [vault_aws_secret_backend_role.role](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_secret_backend_role) | resource |
| [vault_generic_endpoint.tharpem](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_endpoint) | resource |
| [vault_generic_secret.generic_secret](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_secret) | resource |
| [vault_mount.kv](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_policy.admin](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [terraform_remote_state.hcp](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | n/a | `any` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | n/a | `any` | n/a | yes |
| <a name="input_tharpem_pass"></a> [tharpem\_pass](#input\_tharpem\_pass) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
