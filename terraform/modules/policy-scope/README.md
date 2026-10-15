# Policy scope module — non-deploying scaffold

This module validates the **logical scope** for a future Jamf configuration deployment. It creates **no Jamf resources**, performs no API calls, and requires no credentials. Its `approved_for_production` input is metadata only and does **not** authorize deployment.

## Example

```hcl
module "scope" {
  source      = "../../modules/policy-scope"
  tenant_key  = "example-lab"
  environment = "sandbox"
  ring        = "lab"
}
```

Run `terraform init -backend=false` and `terraform validate` from `terraform/examples/sandbox` after installing Terraform. No state backend or Jamf provider is configured.

## Next steps

Verify official Jamf Terraform provider resources and API support before introducing actual Jamf resources. Any production rollout must be gated by GitHub Environment approvals and separate customer state and credentials.
