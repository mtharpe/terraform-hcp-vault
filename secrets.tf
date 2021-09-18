resource "vault_generic_endpoint" "generic_secret" {
  path = "secret/kv/generic"

  data_json = <<EOT
{
  "username": "generic-user",
  "password": "generic-password"
}
EOT
}