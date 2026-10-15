# Tenant and environment isolation

- Every customer/environment has its own state backend namespace and access policy.
- Never reuse API credentials across customers; use least-privilege scoped credentials.
- Separate GitHub deployment environments and approvals by customer and stage.
- Never accept tenant endpoints or identifiers from untrusted pull request input for credentialed jobs.
- Public workflows must never access private HDZ credentials or production environments.
- Store deployment evidence in access-controlled customer-specific locations.
- Changes affecting tenant targeting must be reviewed by an authorized HDZ operator.
- Production deployment is manual, approved, and disabled by default.
