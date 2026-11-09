#!/usr/bin/env bash
# Public safety check: fails if any tracked file contains something that should never be in a public repo.
# Runs in GitHub Actions on every push and pull request, and locally from the pre-push hook.
# Generic patterns only. Private terms live outside this repo (see the pre-push hook on the build machine).
set -uo pipefail
cd "$(git rev-parse --show-toplevel)"

fail=0
check() {  # $1 = label, $2 = extended regex
  hits=$(git ls-files -z | xargs -0 grep -n -I -E -- "$2" 2>/dev/null | grep -v '^scripts/check-public.sh:')
  if [ -n "$hits" ]; then
    echo "BLOCKED: $1"
    echo "$hits" | cut -c1-160
    fail=1
  fi
}

check "private network address"  '\b(10\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}|192\.168\.[0-9]{1,3}\.[0-9]{1,3}|172\.(1[6-9]|2[0-9]|3[01])\.[0-9]{1,3}\.[0-9]{1,3}|100\.(6[4-9]|[7-9][0-9]|1[01][0-9]|12[0-7])\.[0-9]{1,3}\.[0-9]{1,3})\b'
check "server file path"          '(^|[^A-Za-z])/(opt|home|root|srv|var/lib|etc)/[A-Za-z0-9_.-]+'
check "secret or token"           '(ghp_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,}|sk-[A-Za-z0-9_-]{20,}|xox[abpr]-[A-Za-z0-9-]{10,}|AKIA[0-9A-Z]{16}|-----BEGIN [A-Z ]*PRIVATE KEY-----)'
check "email address"             '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'

if [ "$fail" -ne 0 ]; then
  echo "Public safety check FAILED. Remove the lines above before publishing."
  exit 1
fi
echo "Public safety check passed."
