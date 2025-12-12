#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-}"

if [[ -z "$ROOT" ]]; then
  echo "Usage: $0 <target-directory>" >&2
  echo "Example: $0 /c/workspaces/openshift2026" >&2
  exit 1
fi

mkdir -p "$ROOT"
cd "$ROOT"

REPOS=(
  "rh-openshift-architect-lab"
  "argocd-complete-masterclass"
  "docker-podman-complete-masterclass"
  "kafka-complete-masterclass"
  "zdmooc-ecosystem-hub"
)

for r in "${REPOS[@]}"; do
  if [[ -d "$r/.git" ]]; then
    echo "[SKIP] $r already cloned"
    continue
  fi
  echo "[CLONE] $r"
  git clone "https://github.com/zdmooc/$r.git"
done
