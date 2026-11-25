#!/usr/bin/env bash
# Usage: links-resolve.sh <markdown-file>...   Relative [text](path) links must point to existing paths.
. "$(dirname "$0")/lib.sh"
for f in "$@"; do
  [ -f "$f" ] || { fail "missing file: $f"; continue; }
  d=$(dirname "$f")
  while IFS= read -r link; do
    t=${link%%#*}
    case "$link" in http*|mailto:*|'#'*|'') continue ;; esac
    [ -e "$d/$t" ] || fail "$f: broken link '$link'"
  done < <(grep -oE '\]\([^)]+\)' "$f" | sed -E 's/^\]\(//; s/\)$//')
done
finish
