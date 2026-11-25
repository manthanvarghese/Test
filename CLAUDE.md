# Schema: LLM Wiki

This repo (`claude`) is a personal knowledge base maintained by the LLM. The human curates sources and asks questions; the LLM writes and maintains the wiki.

## Layers
- `raw/` — immutable source documents (articles, papers, notes, data). Never modify. Images go in `raw/assets/`.
- `wiki/` — LLM-owned markdown. The human reads, the LLM writes.
- `CLAUDE.md` — this schema. Co-evolve it with the user as conventions emerge.

## Wiki layout
- `wiki/index.md` — catalog of every page: link + one-line summary, grouped by category. Update on every ingest.
- `wiki/log.md` — append-only chronology. Entry format: `## [YYYY-MM-DD] <op> | <title>` where op is `ingest`, `query`, or `lint`.
- `wiki/overview.md` — evolving high-level synthesis / thesis.
- `wiki/sources/` — one summary page per raw source.
- `wiki/entities/` — people, orgs, products, places.
- `wiki/concepts/` — ideas, topics, themes.
- `wiki/analyses/` — filed answers, comparisons, and explorations from queries.

## Page conventions
- Filename: `kebab-case.md`. Link with Obsidian-style `[[page-name]]`.
- YAML frontmatter: `title`, `type` (source|entity|concept|analysis), `tags`, `updated` (YYYY-MM-DD), `sources` (list of raw paths or source pages).
- Cite sources for claims. Flag contradictions explicitly (`> [!warning] Contradiction: ...`) rather than silently overwriting.

## Workflows
**Ingest** (default: one source at a time, stay interactive):
1. Read the source in `raw/`; discuss key takeaways with the user.
2. Write `wiki/sources/<slug>.md`.
3. Update/create relevant entity and concept pages; revise `overview.md`; note contradictions.
4. Update `wiki/index.md`; append to `wiki/log.md`.

**Query:** read `index.md` first, then drill into pages; answer with citations. Offer to file valuable answers in `wiki/analyses/` (and update index + log).

**Lint** (on request): find contradictions, stale claims, orphan pages, concepts lacking pages, missing cross-references, data gaps; suggest new questions/sources. Log the pass.

## Rules
- Never edit `raw/`.
- Keep `index.md` and `log.md` current in the same change as any wiki edit.
- Prefer updating existing pages over creating duplicates.
