terraform {
  backend "remote" {
    organization = "mtharpe"

    workspaces {
      name = "HCP-Vault-Configuration"
    }
  }
}