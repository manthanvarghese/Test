---
name: deep-research
description: Use when asked to research a topic and produce a sourced report (HTML, or PDF on request); not for quick factual lookups or code questions.
---

# deep-research

Method adapted from Stanford STORM (perspective-guided questions, grounded Q&A, outline, then cited writing). Sources: Claude's own web search first; Agent Reach (`agent-reach`) only for what it can reach.

## Steps
1. Scope: restate topic, audience and depth in 2-3 lines. Ask only if truly ambiguous.
2. Run `toolbox/sources.sh` to see which sources are reachable. Do not plan around blocked ones.
3. Perspectives: list 3-5 distinct viewpoints on the topic (e.g. practitioner, critic, newcomer).
4. For each perspective write 3-5 questions. Answer each from sources you actually read; keep the URL for every fact.
5. Outline from the answers, then write the report from `toolbox/report.html.tmpl`. Cite as `[n]` linking to the Sources list.
6. Put source conflicts and unreachable sources under "Open questions".
7. Save to `research/<topic-slug>.html`. Only if asked for PDF, also run `toolbox/to-pdf.sh`.

## My rules
- Report format is HTML by default, PDF when asked.
- Reports are saved in `research/`.
- Rest to be agreed with the user.

## Never do
- Invent a source, quote or citation.
- Cite a page you did not read.
- Imply a platform (Reddit, X, Instagram, LinkedIn) was checked when it was unreachable.

## Toolbox
- `toolbox/sources.sh` — reports which sources are reachable from here and whether `agent-reach` is installed; `install` sets it up.
- `toolbox/report.html.tmpl` — self-contained report skeleton (summary, findings, sources, open questions).
- `toolbox/example-report.html` — a good example output; also the verify.sh baseline.
- `toolbox/check-report.sh` — machine checks for a report: sections, citations resolve, sources have URLs, no placeholders.
- `toolbox/to-pdf.sh` — converts a report HTML file to PDF using the preinstalled Chromium.

Shared checks live in `.claude/skills/shared-proof/`; reference them, don't copy.

Use scripts and templates in toolbox/ before writing new ones. If you create something reusable, save it in toolbox/ and list it here.

Before returning output, run proof/verify.sh and go through proof/checklist.md. Fix every failure first, then report what you checked.

After finishing, list any corrections I made or reusable things you created, and propose edits to this skill. Don't apply them until I approve.
