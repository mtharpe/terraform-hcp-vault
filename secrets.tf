# resource "vault_generic_secret" "jenkins_secret" {
#   path = "kv/jenkins"

#   data_json = <<EOT
# {
#   "username": "jenkins-user",
#   "password": "jenkins-password"
# }
# EOT
# }

# resource "vault_generic_secret" "generic_secret" {
#   path = "kv/generic"

#   data_json = <<EOT
# {
#   "username": "generic-user",
#   "password": "generic-password"
# }
# EOT
# }