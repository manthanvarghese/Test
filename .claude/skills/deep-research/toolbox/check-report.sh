#!/usr/bin/env bash
# Usage: check-report.sh <report.html>...   Machine checks for a deep-research report.
. "$(git -C "$(dirname "$0")" rev-parse --show-toplevel)/.claude/skills/shared-proof/toolbox/checks/lib.sh"
NP="$(git -C "$(dirname "$0")" rev-parse --show-toplevel)/.claude/skills/shared-proof/toolbox/checks/no-placeholders.sh"
for f in "$@"; do
  [ -f "$f" ] || { fail "missing file: $f"; continue; }
  grep -qE '<title>[^<]+</title>' "$f" || fail "$f: empty or missing <title>"
  for s in summary findings open-questions sources; do grep -q "id=\"$s\"" "$f" || fail "$f: missing section id=\"$s\""; done
  "$NP" "$f" || FAILS=$((FAILS+1))
  cited=$(grep -oE 'href="#s[0-9]+"' "$f" | sed 's/href="#//; s/"//' | sort -u)
  srcs=$(grep -oE '<li id="s[0-9]+"' "$f" | sed 's/<li id="//; s/"//' | sort -u)
  [ -n "$srcs" ] || fail "$f: no sources listed"
  [ -n "$cited" ] || fail "$f: no citations in text"
  for c in $cited; do echo "$srcs" | grep -qx "$c" || fail "$f: citation #$c has no source"; done
  for s in $srcs; do echo "$cited" | grep -qx "$s" || fail "$f: source #$s is never cited"; done
  for s in $srcs; do grep -E "<li id=\"$s\"" "$f" | grep -qE 'href="https?://[^"]+"' || fail "$f: source #$s has no http(s) URL"; done
done
finish
