#!/usr/bin/env bash
# Build one upload-ready zip per skill into dist/ (for the Claude app's Skills upload).
# Each zip holds the skill folder itself, with SKILL.md inside it.
# Built from git (committed files only), so nothing untracked or ignored can ship.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
if [ -n "$(git status --porcelain -- plugins)" ]; then
  echo "plugins/ has uncommitted changes; commit them (and pass the safety checks) first." >&2
  exit 1
fi
mkdir -p dist
rm -f dist/*.zip
for d in plugins/*/skills/*/; do
  d=${d%/}
  name=$(basename "$d")
  git archive --format=zip --prefix="${name}/" -o "dist/${name}.zip" "HEAD:${d}"
  echo "built dist/${name}.zip"
done
