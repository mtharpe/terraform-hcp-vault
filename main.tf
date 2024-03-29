terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">=3.0.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = ">=0.20.0"
    }
  }
}

provider "vault" {
  address   = data.terraform_remote_state.hcp.outputs.vault_public_address
  token     = hcp_vault_cluster_admin_token.vault_root_token.token
  namespace = "admin"
}

provider "hcp" {}

data "terraform_remote_state" "hcp" {
  backend = "remote"

  config = {
    organization = "mtharpe"
    workspaces = {
      name = "terraform-hcp-demo"
    }
  }
}

resource "hcp_vault_cluster_admin_token" "vault_root_token" {
  cluster_id = "demo-vault-cluster"
}
