# Structuring Work Across CX, Product and Engineering: Book Research and Workflow Critique

Prepared for an early-stage startup designing an AI-agent-assisted workflow. Date: 2026-11-28.

**Method and honesty note.** Searches were run on several independent "best of" lists, leader reading lists, and publisher or author pages (see section 5). Most summary evidence is *secondary* (blogs, Shortform, study guides, vendor content). I did not read the books themselves and could not open every source in full, since search returned snippets. Where a detail came from a single secondary source, or I am relying on prior knowledge not confirmed by search, it is marked **[uncertain]**. The critique in section 3 uses only the summaries in section 2, as requested.

---

## 1. Book list with rationale

Selection signal: titles that recur across multiple independent lists (Cagan, Torres, Singer, Perri, Fitzpatrick, Seiden, Ries recur in the PM and discovery lists), plus books named repeatedly in engineering and DevOps references (Accelerate, Team Topologies, Phoenix Project, Continuous Delivery, High Output Management).

| # | Book | Area | Why it made the list |
|---|------|------|----------------------|
| 1 | *The Mom Test* (Rob Fitzpatrick) | CX / research | Most recommended customer-conversation book in the lists found; a core curriculum text per one source. Fixes the commonest discovery error: leading questions that produce flattering, useless answers. |
| 2 | *Competing Against Luck* (Christensen, Hall, Dillon, Duncan) | CX / research | Described as the canonical Jobs-to-Be-Done text. |
| 3 | *Practical Empathy* (Indi Young) | CX / research | Cited by one customer-research guide as a favourite on why research matters. **[uncertain: single source, weakest inclusion]** |
| 4 | *Inspired* (Marty Cagan) | PM | Most-cited PM book; the standard on discovery, risks and product teams. |
| 5 | *Empowered* (Cagan with Chris Jones) | PM | The follow-up on empowered teams versus feature teams, leadership, coaching. |
| 6 | *Continuous Discovery Habits* (Teresa Torres) | PM / research | "Standard reading" for modern product teams; makes customer contact a weekly habit. Spans CX and PM. |
| 7 | *The Lean Startup* (Eric Ries) | PM | Foundational build-measure-learn loop; widely cited. |
| 8 | *Shape Up* (Ryan Singer) | PM / delivery | Concrete, free-to-read process from Basecamp; recommended for PMs, designers, devs. Bridges product and delivery. |
| 9 | *Escaping the Build Trap* (Melissa Perri) | PM | Recurs on PM lists; the clearest statement of output versus outcome and feature factories. |
| 10 | *Outcomes Over Output* (Josh Seiden) | PM | Short, recurring on lists; gives a crisp definition of outcome. |
| 11 | *Working Backwards* (Colin Bryar, Bill Carr) | PM / org | Amazon's PR/FAQ and single-threaded leader practices. Verified by search but appeared less often on generic PM lists than the others. |
| 12 | *Accelerate* (Forsgren, Humble, Kim) | Eng | The research base for delivery performance and the four key metrics. |
| 13 | *Continuous Delivery* (Humble, Farley) | Eng | Deployment pipeline, small batches, staged confidence; the release and staging reference. |
| 14 | *The Phoenix Project* (Kim, Behr, Spafford) | Eng | Novel on IT/business alignment and DevOps. Verified as a well-known title, but my search returned little on its content. **[uncertain on details]** |
| 15 | *Team Topologies* (Skelton, Pais) | Eng / org | Team structure and interaction modes; stream-aligned teams. |
| 16 | *High Output Management* (Andy Grove) | Management | On MentorCruise's engineering leadership list; leverage and paired indicators. |

**Dropped or not verified.** *Good Strategy Bad Strategy*: my search returned nothing on it, so excluded. *The Ultimate Question* / NPS and *Customer Obsession*: no results found; **the CX-measurement area is thinly covered here.** Surfaced alternatives (*Customer Experience 3.0*, *Listening to the Voice of the Customer*) each came from one list, so I did not include them. *The Manager's Path*, *Managing Humans*, *An Elegant Puzzle* are common engineering-management picks but are less relevant to workflow design. *Release It!* was not verified. *When Coffee and Kale Compete* did not appear in results.

---

## 2. Core summaries

### 2.1 Customer experience / research

**The Mom Test (Fitzpatrick).**
- Thesis: people (even your mom) lie politely about your idea, so you must structure conversations to extract truth anyway.
- Practices: (1) talk about the customer's life, not your idea; (2) ask about specific past behaviour, not opinions or hypothetical futures; (3) talk less, listen more; discount compliments and vague future promises.
- Stage logic: before a product exists, learn about customers; once it exists, seek *commitment* (advancement) rather than praise. Specific commitment tactics (money, time, introductions) were not detailed in the sources **[uncertain]**.
- Flow: evidence of real past behaviour comes first, and it should gate what gets built.

**Competing Against Luck (Christensen et al.).**
- Thesis: customers "hire" products to make progress in a specific circumstance; understanding the job beats analysing demographics or features.
- Practices: study the circumstance (the milkshake example: a morning milkshake competes with a banana, an afternoon one with a trip to the toy store); identify what the product really competes against (Intuit versus hiring a bookkeeper); investigate like a "sleuth and documentary filmmaker" via observation and interviews.
- Flow: innovation begins from the job and circumstance, then product features follow. Not a strict process.

**Practical Empathy (Young).** **[uncertain]** Only one source (a customer-research guide) called it a favourite and said it "gets to the soul of why we do user research". I have no reliable summary beyond that, so I make no further claims and do not use it in the critique.

### 2.2 Product management

**Inspired (Cagan).**
- Thesis: successful tech products come from teams that do product *discovery* (validating ideas) before delivery, rather than receiving requirements.
- Practices: tackle four risks up front (value, usability, feasibility, business viability); use fast, lightweight experiments instead of building (figures like 10-20+ ideas per week vary by source **[uncertain]**); engineers, designers and PM collaborate in discovery; teams are "missionaries" not "mercenaries" (build what they are told).
- Flow: discovery produces a validated backlog; delivery builds it. Teams are judged on outcomes, not output.

**Empowered (Cagan, Jones).**
- Thesis: empowered product teams are *given problems to solve* and held to outcomes; feature teams are handed solutions and measured on output.
- Practices: leaders coach, set strategy and manage to results; teams need the skills and authority to decide how to solve problems (Cagan's "product vision/strategy/OKR" details were not confirmed by my search **[uncertain]**).
- Flow: leadership sets problems/objectives; the team owns discovering and delivering the solution. Some critics (Lenny Rachitsky, Larman/Vodde) push back that the product-team/feature-team dichotomy is too binary.

**Continuous Discovery Habits (Torres).**
- Thesis: discovery should be a continuous weekly habit by the product trio (PM, designer, engineer), tied to a desired outcome.
- Practices: weekly customer touchpoints (one summary says 3-5 per week, a third-party gloss **[uncertain]**); an opportunity solution tree (outcome, opportunities, solutions, assumption tests); test assumptions before building; ask about specific past behaviour (echoing Mom Test).
- Flow: outcome in, then continuous interviews and opportunity mapping, then small tests, then build. Discovery and delivery are interleaved, run by the same trio.

**The Lean Startup (Ries).**
- Thesis: a startup's job is to learn what customers want fast, via the build-measure-learn loop.
- Practices: validated learning as the unit of progress; the MVP as the fastest way through the loop (not simply the smallest product); innovation accounting (baseline, tune, then pivot or persevere); shorten the feedback cycle.
- Flow: hypothesis, then MVP, then measure real behaviour, then pivot or persevere.

**Shape Up (Singer / Basecamp).**
- Thesis: fixed time, variable scope. Define *appetite* (time willing to spend) first, then shape a solution to fit.
- Practices: senior people shape rough, bounded pitches; a *betting table* decides what to fund for the next six-week cycle; teams are given the problem and autonomy within the cycle; *circuit breaker*: unfinished projects are cancelled by default, not extended; a two-week cool-down between cycles.
- Flow: raw idea, then shaped pitch (written), then bet, then build in a cycle, then ship or cancel. Note: it does not require a heavy requirements document up front; the pitch is rough on purpose (this is my reading of "shaped" work; the sources emphasise appetite and bounded scope).

**Escaping the Build Trap (Perri).**
- Thesis: organisations fall into the "build trap" when they measure success by output (features shipped) instead of outcomes.
- Practices: become product-led by changing structure, strategy, process and policies; reward learning and outcomes; connect work to strategy; use continuous discovery. Secondary sources suggest levers like demoing outcomes rather than UI in reviews, which is an interpretation **[uncertain]**.
- Flow: strategy, then outcomes, then experiments and discovery, then build; success is measured by customer and business value.

**Outcomes Over Output (Seiden).**
- Thesis: define work by outcomes, "a change in human behavior that drives business results" (later phrased "...that creates value").
- Practices: express goals as behaviour changes; practical test: if a metric can be hit without helping customers it is probably an output in disguise.
- Flow: define the desired behaviour change first, then choose work that might cause it, then measure.

**Working Backwards (Bryar, Carr).**
- Thesis: start from the customer; write the press release and FAQ (PR/FAQ) before building.
- Practices: PR/FAQ forces definition of customer and benefit; a go decision should already specify staffing, investment, timing and operational needs; single-threaded leader (one senior person focused full-time on one initiative) mattered more than team size (the earlier "two-pizza team"); the authors did not state the two-pizza rule in sources I found **[uncertain on exact wording]**.
- Flow: narrative document, then review and decision, then dedicated team, then build.

### 2.3 Engineering / delivery

**Accelerate (Forsgren, Humble, Kim).**
- Thesis: software delivery performance can be measured and predicts organisational performance; research identifies capabilities that drive it.
- Practices: four key metrics (lead time, deployment frequency, mean time to restore, change failure rate); about 24 "key capabilities" grouped into categories including continuous delivery, architecture, product and process, lean management and monitoring, culture; focus on the capabilities, not the metrics as targets; small batches and frequent deploys.
- Flow: fast, frequent, low-risk delivery with fast feedback; speed and stability are not trade-offs. Caveat: practitioners warn against using the metrics as team targets. The "product and process" category contents are not verified here **[uncertain]**.

**Continuous Delivery (Humble, Farley).**
- Thesis: releases should be rapid, low-risk, repeatable via automation.
- Practices: the deployment pipeline (an automated path from check-in to release; stages add confidence at the cost of time); small changes reduce deployment risk and make fixes easier; distinguish continuous delivery (always releasable) from continuous deployment (every change auto-deployed).
- Flow: commit, then automated build and test stages, then staging/acceptance, then release on demand.

**The Phoenix Project (Kim, Behr, Spafford).** **[uncertain on detail]**
- A novel in which a failing company's IT work is not aligned with business goals; the sources found stressed collaboration, communication and continuous improvement. The "Three Ways" (flow, feedback, continual learning) are named in related sources but my search did not retrieve their explanation; the fuller treatment is attributed to *The DevOps Handbook*. I use only the general "alignment and collaboration between business and IT" point in the critique.

**Team Topologies (Skelton, Pais).**
- Thesis: organise teams around the flow of change.
- Practices: four team types (stream-aligned, enabling, complicated-subsystem, platform); three interaction modes (collaboration, X-as-a-Service, facilitating; facilitating was not described in the sources **[uncertain]**); stream-aligned teams own an end-to-end flow of business change; collaboration is intended to be temporary. Fowler notes the model is a simplification.
- Flow: minimise handoffs between teams by giving one team end-to-end ownership of a stream.

**High Output Management (Grove).**
- Thesis: a manager's output is the output of their organisation plus neighbouring organisations under their influence; focus on leverage.
- Practices: prioritise high-leverage activities; pair indicators so effect and counter-effect are both measured; good indicators measure output, not just activity.
- Flow: not a product workflow book; relevant for how to measure and where management attention gives the most return.

---

## 3. Critique of the proposed structure

Evidence below is limited to the section 2 summaries.

### 3.1 What the structure is MISSING

1. **Discovery that includes real customers and cheap experiments before the PRD hardens.** *Inspired*, *Continuous Discovery Habits*, *Lean Startup*, *Mom Test*, *Competing Against Luck* all put customer contact and low-cost assumption tests *before* committing to build. The proposal's only evidence-gathering is an agent interrogating the requester and pulling tickets/analytics. No step tests whether customers want it (a prototype, a fake door, five interviews).
2. **A desired outcome that is owned top-down and used to select work.** *Escaping the Build Trap*, *Outcomes Over Output*, *Continuous Discovery Habits* and *Empowered* all start from an outcome/objective and then look for opportunities. The proposal starts from a pile of employee ideas and only afterwards defines a success metric per change. There is no small set of current outcomes the gate can rank against.
3. **Appetite / a time or cost bound.** *Shape Up* (appetite, circuit breaker) and *Working Backwards* (a go decision includes staffing, investment, timing) both make the investment explicit up front. The proposal's gate says yes/later/no but nothing sets "how much are we willing to spend" or what happens if the build overruns.
4. **Feasibility and design input early.** *Inspired* (four risks including feasibility and usability), *Continuous Discovery Habits* (trio) and *Shape Up* (shaping with technical insight) bring engineering and design into problem definition. In the proposal, tech first appears at step 4, after the priority gate.
5. **Fast, small, frequent release practice.** *Accelerate* and *Continuous Delivery* stress small batches, automated pipelines, and measuring delivery performance (lead time, deployment frequency, restore time, change failure rate). Step 6 says "ship" but gives no release mechanics, rollback plan, or delivery metrics. The staging-then-human-approval gate could become a batching and queueing point.
6. **A learning loop that feeds back into the backlog.** *Lean Startup* (pivot or persevere), *Perri*, *Torres*. Step 6 measures after 2-4 weeks, but there is no explicit "persevere / iterate / kill" decision or place where the result changes the next priorities.
7. **Prioritisation criteria and a limited work-in-progress.** *Shape Up* (betting table with limited capacity), *Grove* (leverage). The gate has no stated criteria beyond the PRD's impact estimate, nor any cap on concurrent changes.
8. **Ownership of a change by one accountable person.** *Working Backwards* (single-threaded leader), *Team Topologies* (stream-aligned team owns the flow). The proposal splits ownership among requester, grill agent, summariser, CTO and tech agent, with the "single source of truth" being a document rather than an accountable owner.

### 3.2 What is OVER-ENGINEERED or risks bureaucracy / a build trap

1. **A full PRD for every request.** *Shape Up* explicitly uses rough, bounded pitches rather than detailed requirements, and *Inspired*/*Torres* treat solutions as hypotheses. A PRD with rubric fields (non-goals, alternatives, cost of not doing, acceptance criteria) for every idea front-loads effort on ideas that may never survive discovery. (Mitigation: use a short pitch for small changes and reserve the long form for large bets.)
2. **Three human approvals plus a gate before any build** (requester approves the summary, gate, then staging test and CTO review). *Accelerate* and *Continuous Delivery* tie performance to small batches and fast flow, and *Accelerate* notes lean management and monitoring over heavy approval (the specific finding about change-approval boards is **not in my gathered summaries**, so I do not claim it). The risk is queueing at the CTO.
3. **The comprehension-test step (Step 2) as a mandatory stage.** It is clever, but as a separate sequential gate it adds a loop on every change. *Torres* and *Cagan* reach shared understanding through the trio working together on the problem rather than a document-to-summary-to-approval handoff.
4. **The pipeline is sequential and requirements-first.** Idea, then PRD, then summary, then gate, then build, then test, then measure is a waterfall shape with each handoff gated. *Cagan*/*Empowered* describe this pattern ("given solutions, judged on output") as the feature-team model, and *Perri* names it the build trap.
5. **"Scope changes go back to step 1 or 2."** *Lean Startup* and *Shape Up* expect learning during the build to change scope; *Shape Up* handles this by fixing time and varying scope inside the appetite. Sending changes back to the front of the pipeline makes learning expensive and encourages hiding scope change.
6. **Success metric defined per request at intake by requesters.** Good in intent, but *Seiden*'s test applies: if a metric can be hit without helping customers it is an output in disguise. Per-request metrics set by internal requesters risk gaming and metric sprawl rather than a few shared outcomes.

### 3.3 What the books STRONGLY VALIDATE

- **Interrogating the problem before the solution, and demanding evidence** (grill agent, parked ideas with no evidence, pulling tickets/analytics): *Mom Test* (past behaviour, discount opinions), *Inspired*, *Competing Against Luck* (understand the job), *Torres*.
- **Defining success up front and measuring afterwards** (step 1 metric, step 6 check): *Lean Startup* (validated learning, innovation accounting), *Seiden*, *Perri*, *Accelerate* (measure).
- **Non-goals and "what will NOT change"**: consistent with *Shape Up* (bounded scope and explicit no-gos; I recall "no-gos" as a Shape Up concept but it is not in the sources I gathered **[uncertain]**) and *Working Backwards* (FAQ forces hard questions).
- **A written narrative instead of slides**: *Working Backwards* (narrative PR/FAQ), *Shape Up* (written pitches).
- **A priority gate with a "later" option**: *Shape Up*'s betting table.
- **Staging and tests derived from acceptance criteria; automated verification**: *Continuous Delivery* (pipeline stages add confidence), *Accelerate* (continuous delivery capabilities).
- **Cost of not doing / alternatives / current workaround**: aligned with JTBD (*Competing Against Luck*: what is the customer currently hiring instead) and *Inspired* (viability).
- **A single source of truth per change**: reduces the handoff-loss problem *Team Topologies* and *Phoenix Project* (alignment and communication) point at.
- **Humans in the loop initially**: reasonable given *Grove* (pair indicators; watch side effects) and *Accelerate*'s caution on gaming metrics.

### 3.4 Where it CONFLICTS with the books

| Proposal | Conflict | Books |
|----------|----------|-------|
| Requirements-first PRD pipeline | Books treat requested solutions as hypotheses to be validated through discovery; teams should receive problems/outcomes, not specs | *Inspired*, *Empowered*, *Torres*, *Perri* |
| Sequential handoffs among agents and humans | Books favour a cross-functional trio or stream-aligned team collaborating continuously | *Torres* (trio), *Cagan*, *Team Topologies* (stream-aligned, minimise handoffs), *Working Backwards* (single owner) |
| Tech involved only after the priority gate | Feasibility and design risk should be explored in discovery | *Inspired* |
| Success judged at 2-4 weeks per change | Fine as a check, but *Lean Startup*/*Torres* want much earlier, cheaper learning, with outcome tied to a team's standing objective | *Lean Startup*, *Torres* |
| Scope change returns to step 1/2 | Fixed time, variable scope; learning in the build should reshape scope | *Shape Up* |
| CTO as sole review and approval of code, risk and security | Concentrates flow in one person; books favour automated pipeline checks and team ownership (but a risk and security review by a human senior is not contradicted; it is the sole-gatekeeper design that is) | *Accelerate*, *Continuous Delivery*, *Grove* (leverage) |

### 3.5 Special consideration: internal employees as the source of requirements

What the summaries support:
- *Mom Test*: opinions and hypotheticals are unreliable; anchor on specific past behaviour and discount compliments and vague promises. An internal requester saying "customers want X" is an opinion unless backed by observed behaviour.
- *Competing Against Luck*: the job and circumstance of the *customer* is the unit of analysis; internal staff see the product, not the customer's circumstance.
- *Inspired*/*Empowered*: teams should be missionaries given problems, not mercenaries fulfilling stakeholder solutions; feature teams take solutions from stakeholders and are judged on output. An internal-requests-in pipeline is the feature-team pattern.
- *Perri*: the build trap is outputs for stakeholders instead of outcomes.
- *Torres*: the team talks to customers weekly; internal intake does not replace that.

The books do not give a detailed study of "internal stakeholders as a source" beyond these; the points above are inferences from the feature-team and discovery material. Employees are, however, a valid source of *signals* (they hear support calls, see workarounds); the issue is treating their stated solutions as requirements.

**How the structure should compensate:**
1. Treat intake items as *problem hypotheses* with an evidence requirement: ask for the last concrete instance of the customer behaviour (Mom Test style), and for the workaround people use now.
2. Make the grill agent separate "problem", "proposed solution" and "who actually experiences it"; strip solutions out of the problem statement.
3. Require at least one external evidence type (support tickets, analytics, a customer conversation). Park items without it, as already planned.
4. Route intake into a small number of standing outcomes; an idea that does not connect to one is "later".
5. Keep a weekly (or similar) customer contact habit that is separate from intake, so the roadmap is not only a function of who shouts loudest internally.
6. Record requester identity and track hit-rate per source over time, to learn which internal sources produce validated ideas **[my suggestion; not from the books]**.

### 3.6 AI agents: where humans are still needed, and where agents can take over

Caveat: none of the books address AI agents. The following applies the books' *human-centred practices* to a hypothetical agent setup, so it is inference.

**Still needs a human (per the books):**
- **Talking to real customers and interpreting what they do and mean** (*Mom Test*, *Competing Against Luck* "sleuth and filmmaker", *Torres* weekly touchpoints). Agents can prepare, summarise and cluster; the trio should still hear customers directly. An agent that interviews internal stakeholders is not a substitute.
- **Choosing the outcomes and strategy; making the bet** (*Perri*, *Empowered*, *Shape Up* betting table, *Working Backwards* go decision).
- **Judgement on the four risks, especially value and business viability** (*Inspired*).
- **Accountability and ownership** (*Working Backwards* single-threaded leader).
- **Risk and security review in the final stage**, at least until delivery metrics show the pipeline is trustworthy (*Accelerate* caution on metrics; *Grove* paired indicators).

**Agents can plausibly take over (low risk and high leverage):**
- Pulling and clustering support tickets and analytics; drafting interview guides; summarising interviews into snapshots (support for *Torres*; the human still reviews).
- Drafting the pitch/PRD from the evidence, and the comprehension-check summary.
- Drafting design notes, converting acceptance criteria to tests, building and running the deployment pipeline (*Continuous Delivery*).
- Monitoring and reporting delivery metrics (*Accelerate*) and post-ship outcome metrics.
- Tracking WIP, staleness of parked ideas and the status of each change.

**Agent-specific risk to flag** (inference): agents make cheap output easy, which strengthens the build-trap pressure *Perri* describes. If build cost falls, the scarce resource is validated problems and prioritisation, not code. The gate and outcome discipline matter more, not less.

---

## 4. Recommended revised structure

Design principles drawn from the books: outcomes set top-down; discovery before commitment; bounded investment (appetite); small, frequent, automated delivery; one accountable owner; learning closes the loop.

### 4.1 Revised step list

0. **Standing outcomes (monthly or quarterly, human).** Leadership sets 2-3 outcomes (changes in customer behaviour with metrics) and a delivery capacity budget. Sources: *Perri*, *Seiden*, *Empowered*, *Shape Up* betting rhythm.
1. **Intake (anyone).** A short form: the problem, who is affected, last specific instance, current workaround. No solutions required. Items link to a standing outcome or go to "unaligned".
2. **Triage and grill agent (light).** Agent checks the rubric (problem, who, evidence, workaround, non-goals, cost of not doing), separates problem from proposed solution, pulls tickets/analytics, and either parks (no evidence) or produces a **one-page pitch** (problem, evidence, appetite suggestion, rough solution sketch, no-gos, success metric tied to a standing outcome). Full PRD only for large bets. Sources: *Mom Test*, *Shape Up*, *Working Backwards*.
3. **Discovery check (human trio plus agent support).** For anything non-trivial: a PM/owner, someone technical and (if relevant) design review the pitch together; run the cheapest test of the riskiest assumption (a few customer conversations, a prototype or fake door); technical feasibility is assessed here, not after the gate. Agents prepare interview scripts, summarise findings. Sources: *Inspired*, *Torres*, *Lean Startup*.
4. **Comprehension check (kept, made optional and cheap).** A fresh-context agent summarises the pitch with "what will NOT change" and concrete scenarios; the requester signs off. Run it only for medium and large changes, or when step 3 is skipped; for small changes the pitch itself is enough.
5. **Bet / priority gate (human: product owner + CTO).** Decide yes / later / no using the standing outcomes, evidence quality, and **appetite** (time or cost cap). Assign **one accountable owner** per bet. Cap work in progress. Source: *Shape Up*, *Working Backwards*.
6. **Build within appetite (agent-heavy).** Tech agent writes a short design note (approach, files/DB, risks) and builds with acceptance criteria as automated tests, small increments, through an automated pipeline to staging. Scope within the appetite may be trimmed by the owner without returning to step 1; changes that alter the problem or outcome return to step 3. **Circuit breaker:** at the appetite limit, stop, re-decide at the next gate rather than auto-extend. Sources: *Shape Up*, *Continuous Delivery*, *Accelerate*.
7. **Verify (requester plus automated checks, then risk-tiered CTO review).** Requester checks behaviour on staging; automated tests, security scanning and monitoring run in the pipeline; CTO reviews high-risk changes (data, auth, payments, schema), while low-risk changes pass on automated checks plus a second agent or peer review. Sources: *Continuous Delivery*, *Accelerate*, *Grove*.
8. **Ship small and observable.** Release behind a flag or progressively with a rollback path; track delivery metrics (lead time, deploy frequency, change failure rate, time to restore) for the system as a whole, not as per-person targets. Source: *Accelerate*, *Continuous Delivery*.
9. **Learn (2-4 weeks, or earlier if the metric allows).** Agent reports the outcome metric versus baseline; owner decides **persevere / iterate / kill**; findings update standing outcomes and the evidence base. Source: *Lean Startup*.
10. **Parallel weekly habit: customer contact.** Independent of intake, the team talks to customers weekly and feeds opportunities into intake. Source: *Torres*.

### 4.2 Cut / Keep / Add

| Cut or shrink | Keep | Add |
|---|---|---|
| Mandatory full PRD for every item (use a one-page pitch; full PRD only for large bets) | Grill agent with an evidence-based rubric and the ability to park unevidenced ideas | Standing outcomes set by leadership; intake linked to them |
| Mandatory comprehension step on every change (make it conditional on size/uncertainty) | Fresh-context comprehension summary with "will NOT change" list and scenarios | Cheap discovery tests and customer contact before commitment (step 3, weekly habit) |
| Sending all scope changes back to step 1/2 | Single source of truth per change | Appetite (time/cost cap) and a circuit breaker |
| CTO as sole reviewer for every change | Priority gate with yes / later / no | One accountable owner per change; WIP cap |
| Per-request, requester-defined success metrics unconnected to outcomes | Design note plus acceptance criteria turned into tests | Early feasibility input (before the gate) |
| Treating staging approval as a batch queue | Requester behaviour check on staging | Automated pipeline, progressive release, rollback, delivery metrics |
| | Post-ship measurement against the metric | Persevere / iterate / kill decision that feeds the next gate |
| | Humans in the loop at handoffs initially | Risk-tiered human review, with a plan to relax it as evidence accrues |

### 4.3 Top 5 prioritised changes

1. **Add standing outcomes and tie every intake item and gate decision to them** (*Perri*, *Seiden*, *Empowered*). This prevents the pipeline from becoming a stakeholder-request feature factory. Highest leverage and cheap.
2. **Insert a cheap discovery/assumption-test step, with early technical feasibility input, before the priority gate, and keep a weekly direct customer-contact habit** (*Inspired*, *Torres*, *Mom Test*, *Lean Startup*). This is the main compensation for internal-only intake.
3. **Replace the default PRD with a short pitch and add appetite plus a circuit breaker; let scope flex inside appetite rather than looping back to step 1** (*Shape Up*, *Working Backwards*).
4. **Make delivery small, automated and observable; risk-tier the CTO review** (*Continuous Delivery*, *Accelerate*). Track delivery metrics as system health signals, not targets.
5. **Close the loop with a persevere / iterate / kill decision, and name one accountable owner per change** (*Lean Startup*, *Working Backwards*, *Team Topologies*).

### 4.4 Open questions the books do not settle

- Whether a startup of this size needs formal "standing outcomes" at quarterly cadence or can use a lighter version; the books are written mostly for larger organisations or product teams, and some (*Shape Up*) for a specific team size. Treat prescriptions as guidance, not rules.
- How much of the human-centred discovery can be safely delegated to agents. No reviewed book addresses this.
- The evidence for specific numbers (experiments per week, touchpoints per week) is secondary.

---

## 5. Sources consulted

All accessed via web search (result snippets and summaries; I did not read the full books or open most pages in full).

**Best-of lists and reading lists (PM):**
- Blinkist PM topic list: https://www.blinkist.com/content/topics/product-management-en
- LogRocket: https://blog.logrocket.com/product-management/best-product-management-books
- ClickUp: https://clickup.com/blog/product-management-books/
- ADPList "11 books": https://adplist.org/blog/11-books-that-every-product-manager-must-read
- Hotjar: https://www.hotjar.com/blog/product-manager-books
- ProductPlan: https://www.productplan.com/learn/books-for-product-managers
- Mind the Product: https://www.mindtheproduct.com/the-best-product-management-books-you-should-read-in-2023
- Exponent: https://www.tryexponent.com/blog/best-product-management-books
- Featurebase: https://www.featurebase.app/blog/product-management-books
- Frill: https://frill.co/blog/best-product-management-books-for-startups-2024
- DigitalDefynd: https://digitaldefynd.com/IQ/top-books-for-product-managers-chief-product-officers-cpo/

**Engineering / leadership lists:**
- MentorCruise engineering leadership: https://mentorcruise.com/books/engineeringleadership
- DZone: https://dzone.com/articles/recommended-books-for-engineering-leaders
- GitHub engineering managers booklist: https://github.com/jesselpalmer/the-engineering-managers-booklist
- The Pragmatic Engineer holiday recommendations: https://blog.pragmaticengineer.com/holiday-tech-book-recommendations/
- X-Team: https://x-team.com/blog/8-top-engineering-management-books/
- OfferZen: https://offerzen.com/blog/best-tech-leadership-books

**Customer research / JTBD / CX:**
- Deploy Empathy gift guide: https://deployempathy.substack.com/p/the-customer-research-and-jobs-to
- DEV Community discovery books 2026: https://dev.to/pickuma/the-best-books-on-product-discovery-and-strategy-2026-15cd
- thegreatestbooks customer research: https://thegreatestbooks.org/the-greatest/customer-research/books/
- thegreatestbooks JTBD: https://thegreatestbooks.org/the-greatest/jobs-to-be-done/books/
- Mom Test official: https://momtestbook.com/
- Shortform Mom Test: https://www.shortform.com/blog/what-is-the-mom-test/
- Competing Against Luck summaries: https://medium.com/mbreads/competing-against-luck-379fe4b9268a ; https://www.getabstract.com/en/summary/competing-against-luck/27209 ; https://deming.org/jobs-to-be-done/
- Chattermill CX books: https://chattermill.com/blog/best-books-on-customer-experience
- Insivia CX books: https://www.insivia.com/top-20-customer-experience-books/
- HubSpot service books: https://blog.hubspot.com/service/customer-service-books

**Book-specific:**
- Shape Up (Basecamp, primary): https://basecamp.com/shapeup/0.3-chapter-01 ; https://basecamp.com/shapeup/2.2-chapter-08 ; https://basecamp.com/shapeup/3.7-conclusion ; secondary: https://www.juststeveking.com/articles/running-a-betting-table/
- Escaping the Build Trap: https://www.oreilly.com/library/view/escaping-the-build/9781491973783/part01.html ; https://www.mindtheproduct.com/sunday-rewind-escaping-the-build-trap-by-melissa-perri ; https://www.producttalk.org/glossary-discovery-feature-factory/ ; https://www.uxmatters.com/mt/archives/2021/08/book-review-escaping-the-build-trap.php
- Continuous Discovery Habits: https://www.producttalk.org/2016/08/opportunity-solution-tree/ ; https://evansamek.substack.com/p/summary-continuous-discovery-habits
- Inspired / Empowered: https://www.ybrikman.com/blog/2022/02/05/inspired/ ; https://www.ybrikman.com/blog/2022/07/18/empowered/ ; https://svpg.com/product-vs-feature-teams ; https://leaddev.com/velocity/learnings-inspired-how-create-tech-products-customers-love ; https://blog.pragmaticengineer.com/empowered-review/ ; https://www.lennysnewsletter.com/p/in-defense-of-feature-team-product ; https://less.works/blog/2019/09/05/on-product-team-and-feature-team
- Outcomes Over Output: https://www.producttalk.org/outcomes-vs-outputs/ ; https://www.martinfowler.com/bliki/OutcomeOverOutput.html ; https://medium.com/@jseiden/whats-the-difference-between-user-outcomes-and-business-outcomes-588952071552
- Lean Startup: https://sive.rs/book/LeanStartup ; https://www.mindtools.com/a36xrwm/the-lean-startup/ ; https://oberlo.com/blog/lean-startup
- Working Backwards: https://www.ybrikman.com/blog/2023/03/15/working-backwards/ ; https://www.lennysnewsletter.com/p/unpacking-amazons-unique-ways-of ; https://www.antoinebuteau.com/lessons-from-bill-carr/
- Accelerate / DORA: https://dora.dev/guides/dora-metrics-four-keys ; https://www.thoughtworks.com/en-br/radar/techniques/four-key-metrics ; https://stackoverflow.blog/2021/11/29/the-four-engineering-metrics-that-will-streamline-your-software-delivery/ ; https://openpracticelibrary.com/blog/accelerate-metrics-software-delivery-performance-measurement/
- Continuous Delivery: https://martinfowler.com/bliki/ContinuousDelivery.html ; https://martinfowler.com/bliki/DeploymentPipeline.html ; https://www.oreilly.com/library/view/continuous-delivery/9780321670250/
- Team Topologies: https://martinfowler.com/bliki/TeamTopologies.html ; https://www.infoq.com/articles/book-review-team-topologies ; https://www.shortform.com/blog/team-topologies-interaction-modes/
- Phoenix Project: https://www.supersummary.com/the-phoenix-project/summary ; https://www.shortform.com/blog/the-three-ways/ ; https://www.blinkist.com/de/books/the-phoenix-project-en
- High Output Management: https://www.ybrikman.com/blog/2016/09/01/high-output-management/ ; https://handbook.gitlab.com/handbook/leadership/high-output-management ; https://medium.com/@iantien/top-takeaways-from-andy-grove-s-high-output-management-2e0ecfb1ea63

**Could not verify / gaps:** *Good Strategy Bad Strategy* (no results), *The Ultimate Question* and *Customer Obsession* (no results), *Release It!* (no results), *When Coffee and Kale Compete* (no results), full text of any book, the Phoenix Project's Three Ways content, Accelerate's complete capability list, Team Topologies' facilitating mode, Shape Up's "no-gos" wording. Several sources are vendor or blog content with commercial incentives; the strongest signal used was repetition across independent lists.
