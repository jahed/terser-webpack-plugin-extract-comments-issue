#!/usr/bin/env bash
set -euo pipefail

rm -r output || true
rm -rf node_modules/.cache || true

for i in `seq 5`; do
    npm run build
done

for i in $(ls output); do
  comment_line="$(cat "output/${i}/*.js" | tail -n1)"
  if [[ "$comment_line" !== ]]
done

echo "Done. Look at ./outputs."
