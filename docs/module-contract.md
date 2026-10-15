# Reusable module contract (proposal)

Each future module must document:
1. Purpose and supported Apple platforms/OS versions.
2. Jamf provider resource coverage and API requirements, with official references.
3. Inputs, defaults, validation, and outputs, without sensitive values.
4. Preconditions (enrollment, supervision, scope, Apple platform capability).
5. Explicit target group/ring scope; default to no production targets.
6. Idempotency, import, drift behavior, and state sensitivity.
7. Impact and reversibility classification.
8. Synthetic example, static tests, sandbox test evidence, and limitations.

No module may claim Microsoft Intune APP parity without platform-specific behavioral evidence. Generic Jamf MDM and SDK-based APP are different control planes.
