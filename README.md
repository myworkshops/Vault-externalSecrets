# Vault + External Secrets Operator + Keycloak – Kubernetes Automation

This repository contains the complete setup for a hands-on seminar focused on secure secret management in Kubernetes using HashiCorp Vault, External Secrets Operator (ESO), and Keycloak as the identity provider.

## 🚀 What’s Included

- Multi-environment configuration: `dev`, `qa`, and `prod` namespaces
- Vault in HA mode with Raft backend and role-based access policies
- ESO integration with Vault for dynamic secret synchronization
- Keycloak setup with dedicated realms and clients per environment
- Sentinel‑1 demo API: Go-based web service with OIDC login and secret loading
- Infrastructure-as-Code: Terraform for Vault, Ansible for Keycloak
- Full lab documentation in AsciiDoc (PDF/HTML)

## 🧱 Tech Stack

- Kubernetes (via `k3d`)
- HashiCorp Vault
- External Secrets Operator (ESO)
- Keycloak (Bitnami Helm Chart)
- Terraform + Ansible
- Helm
- Docker

## 📂 Structure

```
├── docs/                    # AsciiDoc-based seminar documentation
│   ├── 01-introduction.adoc → 07-references.adoc
│   ├── index.adoc, index.pdf, index.html
│   ├── images/              # Screenshots
│   ├── css/, Gemfile, docinfo.html
│   ├── ansible/             # Ansible playbooks for Keycloak
│   ├── helm/                # Helm charts: vault, ESO, sentinel-1, ingress
│   └── terraform/           # Vault config via Terraform
├── LICENSE
└── README.md
```

## 📚 Documentation

Start here: [`docs/index.html`](docs/index.html)  
PDF version available: `docs/index.pdf`

## ⚖️ License

This project is licensed under the MIT License.
