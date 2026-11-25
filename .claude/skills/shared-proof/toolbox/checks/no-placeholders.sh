#!/usr/bin/env bash
# Usage: no-placeholders.sh <file>...   Fails on TODO/TBD/FIXME/lorem/{{...}}/<placeholder>.
. "$(dirname "$0")/lib.sh"
for f in "$@"; do
  [ -f "$f" ] || { fail "missing file: $f"; continue; }
  grep -nEi 'TODO|TBD|FIXME|lorem ipsum|\{\{[^}]*\}\}|<placeholder>' "$f" | while IFS= read -r l; do echo "FAIL: $f:$l" >&2; done
  grep -qEi 'TODO|TBD|FIXME|lorem ipsum|\{\{[^}]*\}\}|<placeholder>' "$f" && FAILS=$((FAILS+1))
done
finish
