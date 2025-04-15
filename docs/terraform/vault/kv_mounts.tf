resource "vault_mount" "kv_dev" {
  path        = "secret-dev"
  type        = "kv"
  description = "KV store for development"
  options = { version = "2" }
}

resource "vault_mount" "kv_qa" {
  path        = "secret-qa"
  type        = "kv"
  description = "KV store for QA"
  options = { version = "2" }
}

resource "vault_mount" "kv_prod" {
  path        = "secret-prod"
  type        = "kv"
  description = "KV store for production"
  options = { version = "2" }
}