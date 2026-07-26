# runners-stack

Terraform Stack for managing GitHub Actions runners across environments.

## Structure

- `components.tfcomponent.hcl` — defines stack components
- `deployments.tfdeploy.hcl` — defines deployments (ai, sandbox, ...)
- `modules/` — reusable modules for runners

## Deployments

- `ai` — `theplenkov-ai` organization
- `sandbox` — `theplenkov-sandbox` organization

## Usage

VCS-linked: push to `main` automatically triggers HCP Terraform Stack runs.

For manual upload:

```bash
cd stacks/runners
terraform stacks init
terraform stacks validate
terraform stacks configuration upload -stack-id <stack-id>
```
