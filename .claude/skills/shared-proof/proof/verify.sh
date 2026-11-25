#!/usr/bin/env bash
# Verifies every skill under the root .claude/skills/, then self-tests the shared checks on fixtures.
set -u
HERE=$(cd "$(dirname "$0")/.." && pwd)
SKILLS=$(cd "$HERE/.." && pwd)
C="$HERE/toolbox/checks"
rc=0
for s in "$SKILLS"/*/; do "$C/skill-structure.sh" "$s" || rc=1; "$C/no-placeholders.sh" "$s/SKILL.md" || rc=1; "$C/links-resolve.sh" "$s/SKILL.md" || rc=1; done

# Self-test: each check must pass on good input and fail on bad input.
T=$(mktemp -d); trap 'rm -rf "$T"' EXIT
expect() { local want=$1; shift; "$@" >/dev/null 2>&1; local got=$?; { [ "$want" = ok ] && [ $got -eq 0 ]; } || { [ "$want" = bad ] && [ $got -ne 0 ]; } || { echo "FAIL: self-test ($want): $*" >&2; rc=1; }; }
printf '# A\n\n## Steps\n\nfine [l](./g.md)\n' > "$T/good.md"; : > "$T/g.md"
printf '# A\n\nTODO later\n[x](./nope.md)\n' > "$T/bad.md"
expect ok  "$C/no-placeholders.sh" "$T/good.md"
expect bad "$C/no-placeholders.sh" "$T/bad.md"
expect ok  "$C/required-sections.sh" "$T/good.md" "## Steps"
expect bad "$C/required-sections.sh" "$T/good.md" "## Missing"
expect ok  "$C/links-resolve.sh" "$T/good.md"
expect bad "$C/links-resolve.sh" "$T/bad.md"
mkdir -p "$T/skills"; "$HERE/toolbox/new-skill.sh" demo-skill "Use when demonstrating the scaffold in the self-test only." "$T/skills" >/dev/null
expect ok  "$C/skill-structure.sh" "$T/skills/demo-skill"
rm "$T/skills/demo-skill/proof/checklist.md"
expect bad "$C/skill-structure.sh" "$T/skills/demo-skill"
exit $rc
