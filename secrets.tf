## KV
resource "vault_mount" "kv" {
  path = "kv"
  type = "kv"
  # or type = "kv-v2"
  description = "Demo of KV-V2"
}

resource "vault_generic_secret" "generic_secret" {
  path = "kv/generic"

  data_json = <<EOT
{
  "username": "generic-user",
  "password": "generic-password"
}
EOT
}