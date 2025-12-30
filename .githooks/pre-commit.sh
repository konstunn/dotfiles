#!/usr/bin/env bash
set -e

if ! command -v gitleaks >/dev/null 2>&1; then
  echo "pre-commit: failed, gitleaks required" >&2
  exit 1
fi

echo "pre-commit: running gitleaks…"

gitleaks detect --no-git --redact

echo "pre-commit: OK"
