#!/usr/bin/env bash
# Usage: new-skill.sh <name> "<specific trigger description>" [skills-dir]
# Default skills-dir: the root .claude/skills/. For project skills pass <project>/.claude/skills.
set -eu
[ $# -ge 2 ] || { echo "usage: $0 <name> \"<description>\" [skills-dir]" >&2; exit 2; }
HERE=$(cd "$(dirname "$0")" && pwd)
name=$1; desc=$2; dir=${3:-$HERE/../..}
case "$name" in *[!a-z0-9-]*|'') echo "name must be lowercase letters, digits, hyphens" >&2; exit 2;; esac
t="$dir/$name"
[ ! -e "$t" ] || { echo "already exists: $t" >&2; exit 1; }
mkdir -p "$t/toolbox" "$t/proof"
touch "$t/toolbox/.gitkeep"
body=$(cat "$HERE/templates/SKILL.md.tmpl"); body=${body//\{\{NAME\}\}/$name}; body=${body//\{\{DESCRIPTION\}\}/$desc}
printf '%s\n' "$body" > "$t/SKILL.md"
cp "$HERE/templates/verify.sh.tmpl" "$t/proof/verify.sh"; chmod +x "$t/proof/verify.sh"
printf '# %s checklist\n\nJudgment checks only. Put anything machine-checkable in verify.sh.\n\n- [ ] Description names a specific trigger, not a topic\n' "$name" > "$t/proof/checklist.md"
echo "created $t"
