variable "vault_addr" {
  description = "Vault server address"
  type        = string
}

variable "vault_token" {
  description = "Vault root token"
  type        = string
  sensitive   = true
}
variable "kubernetes_host" {
  type        = string
  description = "Kubernetes API server URL"
}

variable "token_reviewer_jwt" {
  type        = string
  description = "Service account token"
  sensitive   = true
}

variable "kubernetes_ca_cert" {
  type        = string
  description = "Base64 CA certificate"
}