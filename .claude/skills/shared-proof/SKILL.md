---
name: shared-proof
description: Use when creating, editing, or verifying any skill in this repo, or when a skill needs a shared check (placeholders, required sections, links, skill structure) or the standard skill template.
---

# shared-proof

Owns the skill structure and the cross-project checks. Other skills reference this one; they never copy it.

## Steps
1. To add a skill: run `toolbox/new-skill.sh <name> "<specific trigger description>" [skills-dir]`.
2. Fill in the new skill's Steps, My rules, Never do, with the user. Do not invent rules.
3. Add skill-specific checks to its `proof/verify.sh`, below the marked line. Prefer checks over checklist items.
4. Run the new skill's `proof/verify.sh`, then go through its `proof/checklist.md`.

## My rules
_None yet. To be agreed with the user._

## Never do
- Copy a shared check or template into another skill.
- Add rules or features the user hasn't asked for.
- Edit an existing skill without the user's approval.

## Toolbox
- `toolbox/new-skill.sh` — scaffolds a skill from the templates (default: root `.claude/skills/`).
- `toolbox/templates/` — `SKILL.md.tmpl` and `verify.sh.tmpl`, the skeletons the scaffold uses.
- `toolbox/checks/` — shared checks: `no-placeholders.sh`, `required-sections.sh`, `links-resolve.sh`, `skill-structure.sh`, plus `lib.sh` helpers.

Use scripts and templates in toolbox/ before writing new ones. If you create something reusable, save it in toolbox/ and list it here.

Before returning output, run proof/verify.sh and go through proof/checklist.md. Fix every failure first, then report what you checked.

After finishing, list any corrections I made or reusable things you created, and propose edits to this skill. Don't apply them until I approve.
