#!/usr/bin/env bash
# Usage: skill-structure.sh <skill-dir>...   Enforces the Playbook/Toolbox/Proof structure.
. "$(dirname "$0")/lib.sh"
for d in "$@"; do
  d=${d%/}; n=$(basename "$d"); m="$d/SKILL.md"
  [ -f "$m" ] || { fail "$d: no SKILL.md"; continue; }
  [ "$(sed -n 1p "$m")" = "---" ] || fail "$m: no frontmatter"
  grep -qx "name: $n" "$m" || fail "$m: frontmatter 'name: $n' missing"
  grep -qE '^description: .{30,}' "$m" || fail "$m: description missing or too short (be specific)"
  for h in "## Steps" "## My rules" "## Never do" "## Toolbox"; do grep -qxF "$h" "$m" || fail "$m: missing '$h'"; done
  for r in "Use scripts and templates in toolbox/ before writing new ones" \
           "run proof/verify.sh and go through proof/checklist.md" \
           "propose edits to this skill"; do grep -qF "$r" "$m" || fail "$m: missing standard rule '$r'"; done
  [ -d "$d/toolbox" ] || fail "$d: no toolbox/"
  [ -f "$d/proof/checklist.md" ] || fail "$d: no proof/checklist.md"
  [ -x "$d/proof/verify.sh" ] || fail "$d: proof/verify.sh missing or not executable"
  for e in "$d"/toolbox/*; do [ -e "$e" ] || continue; grep -qF "$(basename "$e")" "$m" || fail "$m: toolbox/$(basename "$e") not listed"; done
done
finish
