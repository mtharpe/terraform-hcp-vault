resource "vault_generic_endpoint" "generic_secret" {
  path = "v1/secret/data/my-secret"

  data_json = <<EOT
{
  "username": "generic-user",
  "password": "generic-password"
}
EOT
}