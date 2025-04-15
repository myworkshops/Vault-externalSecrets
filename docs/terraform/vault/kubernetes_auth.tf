resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
  path = "kubernetes"
}

resource "vault_kubernetes_auth_backend_config" "this" {
  backend = vault_auth_backend.kubernetes.path

  kubernetes_host = var.kubernetes_host
  token_reviewer_jwt = var.token_reviewer_jwt
  kubernetes_ca_cert = var.kubernetes_ca_cert
}

resource "vault_kubernetes_auth_backend_role" "dev" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = "dev"
  bound_service_account_names      = ["vault-sa"]
  bound_service_account_namespaces = ["dev"]

  token_policies = ["dev"]
  token_ttl      =  3600
}

resource "vault_kubernetes_auth_backend_role" "qa" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = "qa"
  bound_service_account_names      = ["vault-sa"]
  bound_service_account_namespaces = ["qa"]

  token_policies = ["qa"]
  token_ttl      = 3600
}

resource "vault_kubernetes_auth_backend_role" "prod" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = "prod"
  bound_service_account_names      = ["vault-sa"]
  bound_service_account_namespaces = ["prod"]

  token_policies = ["prod"]
  token_ttl      = 3600
}