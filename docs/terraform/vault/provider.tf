terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 4.7.0"
    }
  }

  required_version = ">= 1.4.0"
}

provider "vault" {
  address = var.vault_addr
  token   = var.vault_token
}