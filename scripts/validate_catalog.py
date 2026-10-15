#!/usr/bin/env python3
"""Dependency-free static validator for the M0 research catalog."""
from pathlib import Path
import re
import sys

path = Path("policies/catalog.yaml")
content = path.read_text(encoding="utf-8")
ids = re.findall(r"^  - id: (APP-\d{2})$", content, re.M)
if len(ids) != 12 or len(set(ids)) != 12:
    sys.exit(f"Expected 12 unique control IDs; got {ids}")
if set(ids) != {f"APP-{i:02}" for i in range(1, 13)}:
    sys.exit("Unexpected control IDs")
blocks = re.split(r"(?=^  - id: APP-)", content, flags=re.M)[1:]
for block in blocks:
    if not re.search(r"^    verified: false$", block, re.M):
        sys.exit("Unverified research controls must declare verified: false")
    for field in ("name:", "platforms:", "initial_parity:"):
        if field not in block:
            sys.exit(f"Missing {field}")
print("PASS: 12 unique, unverified baseline control records")
