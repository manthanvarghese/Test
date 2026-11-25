# Repo conventions

Monorepo. Recurring jobs are captured as skills using Playbook / Toolbox / Proof:

- `SKILL.md` = playbook, `toolbox/` = approved scripts/templates/examples, `proof/` = `checklist.md` + `verify.sh`.
- Shared skills: root `.claude/skills/`. Project-specific skills: `<project>/.claude/skills/`.
- Cross-project checks and templates live only in `.claude/skills/shared-proof/`. Reference them; never copy them.
- Create a new skill with `.claude/skills/shared-proof/toolbox/new-skill.sh`.
- Discovery: when a task looks like recurring work, say so at the end and propose a skill. Don't create it until approved.
