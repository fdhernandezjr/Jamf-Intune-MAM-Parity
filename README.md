# Jamf–Intune MAM Parity

Community-oriented, vendor-neutral proof-of-concept framework for Jamf Pro Infrastructure as Code and evidence-based comparison with Microsoft Intune application protection.

## Status
Architecture foundation only: no deployable Jamf modules or verified parity results yet.

## Scope
- macOS, iOS, and iPadOS Apple management controls.
- Intune App Protection Policy comparison where the platform and application support it.
- Terraform automation, deployment rings, validation, and rollback guidance.

**Important:** Jamf MDM controls are not interchangeable with Intune SDK-based APP. macOS should not be treated as having the same Intune APP coverage as iOS/iPadOS.

## Repository model
This public project contains reusable generic modules, synthetic examples, test specifications, and documentation. HDZ private operational configurations live separately in `fdhernandezjr/HDZ-Jamf-IaC`.

No secrets, customer exports, production Terraform state, or tenant-specific identifiers belong here. No deployments are enabled by default.

See `docs/deployment-strategy.md` and `docs/roadmap.md`.
