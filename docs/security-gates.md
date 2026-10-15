# Security gates (M0E)
- Static checks run without Jamf, Microsoft, or cloud credentials.
- No workflow has write permissions or deployment steps.
- Require human review before adding remote state, API credentials, or deployment jobs.
- Protect main using GitHub rulesets or branch protection (administrative setting; not configured by this commit).
- Require code-owner review, secret scanning, and pinned third-party actions before production.
- Public examples must be synthetic; never copy private HDZ files.
- The catalog is an unverified research baseline, not a security certification.
