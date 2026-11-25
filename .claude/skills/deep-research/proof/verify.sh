#!/usr/bin/env bash
# Usage: verify.sh [report.html]...   With no args, checks the skill and its example report.
set -u
HERE=$(cd "$(dirname "$0")/.." && pwd)
C="$(git -C "$HERE" rev-parse --show-toplevel)/.claude/skills/shared-proof/toolbox/checks"
rc=0
"$C/skill-structure.sh" "$HERE" || rc=1
"$C/no-placeholders.sh" "$HERE/SKILL.md" || rc=1
"$C/links-resolve.sh" "$HERE/SKILL.md" || rc=1
# --- skill-specific checks below ---
[ $# -gt 0 ] || set -- "$HERE/toolbox/example-report.html"
"$HERE/toolbox/check-report.sh" "$@" || rc=1
# check-report.sh must reject a report with a dangling citation
T=$(mktemp); trap 'rm -f "$T"' EXIT
sed 's/href="#s2"/href="#s9"/' "$HERE/toolbox/example-report.html" > "$T"
"$HERE/toolbox/check-report.sh" "$T" >/dev/null 2>&1 && { echo "FAIL: check-report.sh accepted a bad report" >&2; rc=1; }
exit $rc
