## AWS Engine
resource "vault_aws_secret_backend" "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "vault_aws_secret_backend_role" "role" {
  backend         = vault_aws_secret_backend.aws.path
  name            = "ec2"
  credential_type = "iam_user"

  policy_document = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
EOT
}

## Azure Engine
resource "vault_azure_secret_backend" "azure" {
  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_tenat_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  #environment     = "AzurePublicCloud"
}

resource "vault_azure_secret_backend_role" "generated_role" {
  backend = vault_azure_secret_backend.azure.path
  role    = "generated_role"
  ttl     = 300
  max_ttl = 600

  azure_roles {
    role_name = "Reader"
    scope     = "/subscriptions/${var.azure_subscription_id}/resourceGroups/azure-vault-group"
  }
}

## UserPass Engine
resource "vault_auth_backend" "username" {
  type = "userpass"
}

resource "vault_generic_endpoint" "tharpem" {
  depends_on           = [vault_auth_backend.username]
  path                 = "auth/userpass/users/tharpem"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["admin"],
  "password": "${var.tharpem_pass}"
}
EOT
}