#!/usr/bin/env python3
import sys
from pathlib import Path

try:
    import yaml
except ImportError:
    print("Missing dependency: pyyaml. Install with: pip install pyyaml", file=sys.stderr)
    sys.exit(2)

CATALOG = Path("catalog/repos.yaml")
data = yaml.safe_load(CATALOG.read_text(encoding="utf-8"))
repos = data.get("repos", [])

print("# Catalogue des repos\n")
print("Source: `catalog/repos.yaml`\n")
print("| Repo | Catégorie | Statut | Objectif | Quickstart | Dépendances |")
print("|---|---|---|---|---|---|")

def fmt_list(items):
    if not items:
        return ""
    return "<br>".join(items)

for r in repos:
    name = r.get("name","")
    category = r.get("category","")
    status = r.get("status","")
    purpose = r.get("purpose","")
    quick = fmt_list(r.get("quickstart", []))
    deps = fmt_list(r.get("depends_on", []))
    repo_link = f"[{name}](https://github.com/zdmooc/{name})"
    print(f"| {repo_link} | {category} | {status} | {purpose} | {quick} | {deps} |")
