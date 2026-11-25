#!/usr/bin/env bash
# Usage: required-sections.sh <file> "<heading>"...   Each heading must exist as a markdown heading line.
. "$(dirname "$0")/lib.sh"
f="$1"; shift
[ -f "$f" ] || { fail "missing file: $f"; finish; }
for h in "$@"; do grep -qxF "$h" "$f" || fail "$f: missing section '$h'"; done
finish
