provider "vault" {
  address   = data.terraform_remote_state.hcp.outputs.vault_public_address
  token     = data.terraform_remote_state.hcp.outputs.vault_root_token
  namespace = "admin"
}

data "terraform_remote_state" "hcp" {
  backend = "remote"

  config = {
    organization = "mtharpe"
    workspaces = {
      name = "terraform-hcp-demo"
    }
  }
}