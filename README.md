# runners-stack

Terraform Stack for deploying self-hosted GitHub Actions runners to OpenShift across environments.

## Structure

- `components.tfcomponent.hcl` — defines the `openshift_runners` component
- `deployments.tfdeploy.hcl` — defines deployments per GitHub organization
- `modules/openshift-runners/` — Helm-based OpenShift runner module

## Deployments

- `ai` — deploys runners to `theplenkov-ai`
- `sandbox` — deploys runners to `theplenkov-sandbox`

## Secrets

Shared secrets are stored in the HCP Terraform variable set `runners-stack-shared`:

- `OPENSHIFT_SERVER`
- `OPENSHIFT_TOKEN`
- `GITHUB_APP_ID`
- `GITHUB_APP_PEM`

## Usage

VCS-linked: push to `main` automatically triggers HCP Terraform Stack runs.
