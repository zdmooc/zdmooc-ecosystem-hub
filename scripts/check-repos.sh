#!/usr/bin/env bash
set -euo pipefail

REPOS=(
  "rh-openshift-architect-lab"
  "argocd-complete-masterclass"
  "docker-podman-complete-masterclass"
  "kafka-complete-masterclass"
  "zdmooc-ecosystem-hub"
)

FAILED=0
for r in "${REPOS[@]}"; do
  url="https://github.com/zdmooc/${r}.git"
  echo -n "[CHECK] $r ... "
  if git ls-remote "$url" >/dev/null 2>&1; then
    echo "OK"
  else
    echo "NOK"
    FAILED=1
  fi
done

exit "$FAILED"
