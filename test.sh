#!/usr/bin/env bash
set -euo pipefail

rm -r output || true
rm -rf node_modules/.cache || true

for i in `seq 5`; do
    npm run build
done

echo "Done. Look at ./outputs."
