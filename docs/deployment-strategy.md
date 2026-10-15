# Deployment strategy and safeguards

## Default strategy
1. Validate syntax and schema in CI without credentials.
2. Run read-only discovery and review proposed Terraform plans using isolated remote state.
3. Test in a sandbox with synthetic data and dedicated devices.
4. Obtain human approval and deploy to Ring 0 lab, Ring 1 IT pilot, Ring 2 early adopters, then Ring 3 general devices.
5. Verify device-level behavior, app compatibility, and support impact before promotion.
6. Record evidence and a rollback procedure before each high-risk change.

## Non-negotiable controls
- Separate credentials, state, approvals, and evidence for each tenant and environment.
- Pin Terraform/provider/module/action versions; review upgrades.
- Never store credentials or state in Git; protect state with encryption and access controls.
- Use least-privilege API roles and GitHub workflow permissions.
- Restrict workflow execution on untrusted pull requests; do not expose secrets to fork PRs.
- Treat device wipe, data deletion, and some security changes as potentially irreversible.
- Default production auto-apply to disabled.
- Never claim Intune APP parity from configuration presence alone; verify on real devices.
