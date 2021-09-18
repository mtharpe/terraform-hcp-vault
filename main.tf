provider "vault" {
  address   = data.terraform_remote_state.hcp.outputs.vault_public_address
  token     = data.terraform_remote_state.hcp.outputs.vault_public_address
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

#########################################
# Specify the provider and access details
#########################################

resource "hcp_hvn" "hvn" {
  hvn_id         = "demo-hvn"
  cloud_provider = "aws"
  region         = "us-east-1"
  cidr_block     = "172.20.16.0/20"
}

resource "hcp_vault_cluster_admin_token" "vault_root_token" {
  cluster_id = "demo-vault-cluster"
}