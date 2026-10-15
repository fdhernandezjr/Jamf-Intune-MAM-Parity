# Public framework agent instructions

- Keep all examples synthetic and all reusable code vendor-neutral where feasible.
- Do not import or copy files, customer data, tenant details, or credentials from the private HDZ repository.
- Verify Jamf provider/API and Intune APP capabilities against official documentation before implementing resources.
- Treat macOS, iOS, and iPadOS capabilities separately; distinguish device management from SDK-based app protection.
- Require validation, least privilege, isolated state, explicit approvals, and device-level test evidence.
- Never deploy, publish a release, merge, or change tenant configuration without human authorization.
