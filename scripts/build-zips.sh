#!/usr/bin/env bash
# Build one upload-ready zip per skill into dist/ (for the Claude apps: Settings > Capabilities > Skills).
# Each zip holds the skill folder itself, with SKILL.md inside it.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
mkdir -p dist
rm -f dist/*.zip
for d in plugins/*/skills/*/; do
  name=$(basename "$d")
  (cd "$(dirname "$d")" && zip -qr "../../../dist/${name}.zip" "$name")
  echo "built dist/${name}.zip"
done
