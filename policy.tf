resource "vault_policy" "admin" {
  name = "admin"

  policy = <<EOT
path "*" { capabilities = ["sudo","read","create","update","delete","list"] }
EOT
}