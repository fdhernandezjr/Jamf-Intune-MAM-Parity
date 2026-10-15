# Planned device test suite

All cases are specifications, not verified parity results. Use synthetic documents and dedicated test devices.

## Groups (24 scenarios planned)
- Data transfer (4): managed to managed; managed to unmanaged; unmanaged to managed; Open In behavior.
- Clipboard and sharing (4): managed copy/paste; unmanaged destination; share sheet; AirDrop behavior.
- App protection (4): app PIN; biometrics; offline grace; account sign-out.
- Backup and wipe (4): backup restriction; managed-app removal; selective data removal; unenrolled device behavior.
- Identity and compliance (4): compliant access; noncompliant access; token/session changes; enrollment boundary.
- macOS security (4): FileVault; device passcode; managed app settings; per-app network controls.

For each case record OS/build, app/version, enrollment type, supervision, Jamf and Intune configurations, expected result, observed result, and evidence reference.
