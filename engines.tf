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