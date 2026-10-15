# Terraform architecture (design only)

This directory is a design placeholder, not a deployable module.

## Proposed layout
- `modules/`: reusable Jamf policy/configuration building blocks after verifying provider resource support.
- `examples/sandbox/`: synthetic configurations only.
- `tests/`: static and sandbox tests.
- `versions.tf`: pin Terraform and verified provider versions when implementation begins.

## Safety
- No credentials, provider configuration, state backend, or `terraform apply` is included yet.
- Consumers should reference immutable tagged releases, ideally pinned commit SHAs.
- Verify Jamf Platform Terraform provider support and Jamf API permissions before implementing each resource.
- Treat import and drift management as distinct operations requiring review.
