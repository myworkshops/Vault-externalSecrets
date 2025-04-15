resource "vault_policy" "dev" {
  name   = "dev"
  policy = <<EOT
path "secret-dev/data/*" {
  capabilities = ["read", "list"]
}
EOT
}

resource "vault_policy" "qa" {
  name   = "qa"
  policy = <<EOT
path "secret-qa/data/*" {
  capabilities = ["read", "list"]
}
EOT
}

resource "vault_policy" "prod" {
  name   = "prod"
  policy = <<EOT
path "secret-prod/data/*" {
  capabilities = ["read", "list"]
}
EOT
}