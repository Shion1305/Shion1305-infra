# shion1305-infra

Infrastructure as Code (IaC) repository for managing multi-cloud infrastructure using Terraform, Terragrunt, and GitOps principles.

## Overview

This repository manages infrastructure across multiple cloud providers:

- **Oracle Cloud Infrastructure (OCI)** - Primary compute and networking resources
- **Google Cloud Platform (GCP)** - State storage and service accounts
- **Cloudflare** - DNS and CDN configuration

The repository follows GitOps practices with automated CI/CD pipelines for infrastructure changes.

## Architecture

### Repository Structure

```text
.
├── oci/                          # Oracle Cloud Infrastructure
│   ├── env/                      # Environment-specific configurations
│   │   ├── main/                 # Main production environment
│   │   └── isucon/               # ISUCON practice environment
│   ├── modules/                  # Reusable Terraform modules
│   └── provider/                 # Provider configurations
├── google-cloud/                 # Google Cloud Platform
│   ├── shion1305-infra/          # Core GCP infrastructure
│   └── business-card-frontend/   # Business card frontend project
├── cloudflare/                   # Cloudflare DNS and CDN
│   └── env/
│       └── shion-pro/            # Cloudflare zone configuration
├── .github/
│   ├── workflows/                # CI/CD pipeline definitions
│   └── scripts/                  # Helper scripts for automation
└── terragrunt.hcl                # Root Terragrunt configuration
```

### State Management

- **Backend**: Google Cloud Storage (GCS)
- **Bucket**: `shion1305-infra`
- **Location**: `asia-northeast1`
- **State isolation**: Per-environment using Terragrunt path prefixes

## Prerequisites

### Required Tools

This project uses [aqua](https://aquaproj.github.io/) for declarative tool version management. All required tools are defined in `aqua.yaml`:

```bash
# Install aqua (if not already installed)
# See: https://aquaproj.github.io/docs/install

# Install all required tools
aqua install
```

Tools managed by aqua:

- Terraform v1.9.5
- Terragrunt v0.67.14
- tfcmt v4.13.0

### Authentication Setup

#### OCI Authentication

Required environment variables for Oracle Cloud:

```bash
export TF_VAR_oci_user="<your-oci-user-ocid>"
export TF_VAR_oci_tenancy="<your-tenancy-ocid>"
export TF_VAR_oci_fingerprint="<your-api-key-fingerprint>"
export TF_VAR_oci_region="ap-tokyo-1"
export TF_VAR_oci_private_key_path="<path-to-private-key>"
```

#### GCP Authentication

The repository uses Workload Identity Federation for GitHub Actions:

- Workload Identity Pool: `default`
- Provider: `provider-github`
- Service Account: `gh-actions@shion1305-infra.iam.gserviceaccount.com`

For local development, authenticate with:

```bash
gcloud auth application-default login
```

#### Cloudflare Authentication

```bash
export TF_VAR_cloudflare_api_token="<your-cloudflare-api-token>"
```

## Usage

### Working with Terragrunt

#### Initialize

```bash
# Initialize all environments
terragrunt init

# Initialize specific environment
cd oci/env/main
terragrunt init
```

#### Plan Changes

```bash
# Plan all environments
cd oci/env
terragrunt run-all plan

# Plan specific environment
cd oci/env/main
terragrunt plan
```

#### Apply Changes

```bash
# Apply to specific environment
cd oci/env/main
terragrunt apply

# Apply to all environments (use with caution)
cd oci/env
terragrunt run-all apply
```

### OCI Environments

#### Main Environment

- **Path**: `oci/env/main/`
- **Purpose**: Production infrastructure
- **Resources**:
  - VCN (Virtual Cloud Network): `10.0.0.0/16`
  - Compute instances (2022, 2024 generations)
  - Network Security Groups for Kubernetes
  - Internet Gateway, Route Tables, Subnets
  - KMS encryption keys
  - Compartment-based resource isolation

#### ISUCON Environment

- **Path**: `oci/env/isucon/`
- **Purpose**: ISUCON (Iikanjini Speed Up Contest) practice environment
- **Resources**:
  - Dedicated VCN
  - Compute instances with SSH access
  - Public IP addresses
  - Internet Gateway

## CI/CD Workflows

### Automated Plan on Pull Requests

**Workflow**: `.github/workflows/tf-plan-oci.yaml`

Triggers on:

- Pull requests to `main` branch
- Changes in `oci/**` or workflow file

Features:

- Runs `terragrunt plan` for all affected environments
- Posts plan results as PR comments using tfcmt
- Applies target-specific labels
- Validates changes before merge

### Automated Apply on Merge

**Workflow**: `.github/workflows/tf-apply-oci.yaml`

Triggers on:

- Push to `main` branch
- Changes in `oci/**`
- Manual workflow dispatch

Features:

- Automatically applies approved changes
- Posts apply results as comments
- Uses tfcmt for formatted output

### tfcmt Integration

The repository uses [tfcmt](https://github.com/suzuki-shunsuke/tfcmt) for enhanced Terraform output in GitHub:

- Formatted plan/apply results in PR comments
- Color-coded labels based on change type:
  - `add-or-update` (blue): Resource additions/updates
  - `destroy` (orange): Resource deletions
  - `no-changes` (green): No infrastructure changes
  - `plan-error` (red): Planning errors
- Deletion warnings for destructive changes
- Per-environment result tracking

Configuration: `.tfcmt.yaml`

## GitOps Workflow

### Making Infrastructure Changes

1. **Create a feature branch**

   ```bash
   git checkout -b feature/your-change
   ```

2. **Make your changes**

   ```bash
   # Edit Terraform files
   vim oci/env/main/your-resource.tf
   ```

3. **Test locally (optional)**

   ```bash
   cd oci/env/main
   terragrunt plan
   ```

4. **Commit and push**

   ```bash
   git add .
   git commit -m "feat: describe your change"
   git push origin feature/your-change
   ```

5. **Create Pull Request**
   - GitHub Actions will automatically run `terragrunt plan`
   - Review the plan output in PR comments
   - Check for any warnings or errors

6. **Merge to main**
   - Once approved, merge the PR
   - GitHub Actions will automatically apply changes
   - Monitor the apply output in PR comments

### Best Practices

- Always review plan output before merging
- Use descriptive commit messages following conventional commits
- Keep changes small and focused
- Test in non-production environments first
- Review deletion warnings carefully
- Use Terragrunt's `run-all` commands cautiously

## Security

### Secrets Management

GitHub Secrets used in workflows:

- `OCI_USER` - OCI user OCID
- `OCI_TENANCY` - OCI tenancy OCID
- `OCI_FINGERPRINT` - API key fingerprint
- `OCI_REGION` - OCI region
- `OCI_KEY_CONTENT` - Private key for OCI API authentication

### State File Security

- State files stored in GCS with encryption
- Access controlled via GCP IAM
- Service account principle of least privilege

### Generated Files

Files matching `_*.tf` are auto-generated by Terragrunt and excluded from version control:

- `_backend.tf` - Backend configuration
- `_provider.tf` - Provider configuration
- `_version.tf` - Version constraints

## Modules

### OCI Modules

#### Main Compute Module

- **Path**: `oci/modules/main/compute/`
- **Purpose**: Reusable compute instance configurations
- **Usage**: Imported by main environment

#### ISUCON Instance Module

- **Path**: `oci/modules/isucon/instance/`
- **Purpose**: ISUCON-specific instance configurations
- **Usage**: Imported by ISUCON environment

## Troubleshooting

### Common Issues

#### State Lock Errors

```bash
# If state is locked, check for running workflows
# Manually unlock if necessary (use with caution)
cd <environment>
terragrunt force-unlock <lock-id>
```

#### Provider Authentication Errors

```bash
# Verify credentials are set
env | grep TF_VAR_

# Re-authenticate with GCP
gcloud auth application-default login
```

#### Terragrunt Cache Issues

```bash
# Clean Terragrunt cache
find . -type d -name ".terragrunt-cache" -exec rm -rf {} +

# Re-initialize
terragrunt init
```

## License

Private repository - All rights reserved

## Maintainer

[@Shion1305](https://github.com/Shion1305)
