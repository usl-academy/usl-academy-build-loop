# Build Loop Orchestrator
## Knowledge File: State Schema, Routing, Modes, and Delivery

This file is the orchestrator's reference. It holds the project state schema, the stage routing table,
the two delivery modes, the handoff check, and the maps that connect the eight skills to the USL Academy
loop and to a client engagement. Load it when running `/build-loop`.

---

## SECTION 1: THE LOOP

The USL Build Sequence is one workflow made of eight stages. Each stage is a standalone skill that
interviews the user one step at a time and writes a Transfer Packet the next stage reads automatically.
The orchestrator's job is to be the single front door: figure out where the project is, run the right
stage next, and keep the through-line intact from idea to build plan.

| Stage | Skill (command) | Reads | Writes (packet) | One line |
|---|---|---|---|---|
| 0 (optional, unnumbered) | `/expertise-map` | nothing (runs before the loop) | `0-expertise-map.md` | Where should this point? Capability inventory, candidates, one chosen and pressure-tested. Not a stage packet; never counts toward status. |
| 1 | `/problem-validation` | 0 if present (start here otherwise) | `1-problem-validation.md` | Is this worth building? Persona, problem, BBM score, UVP, evidence fields. |
| 2 | `/solution-mvp` | 1 | `2-solution-mvp.md` | What should be made next: a decisive validation experiment or the smallest valuable release? |
| 3 | `/business-model` | 1, 2, plus buyer conversations when present | `3-business-model.md`, `3-business-plan-summary.md` | How does it sustain itself? Model-specific economics or ROI, price or investment, and the first acquisition or adoption test. |
| 4 | `/offer-design` | 1, 2, 3, plus any real source material | `4-offer-design.md`, `4-offer-document.md` | What exactly is being sold? Niche, avatar, value stack, guarantee, launch order. |
| 5 | `/brand-strategy` | 3, 4 | `5-brand-strategy.md` | What does it stand for, and what is it called? Positioning, voice, identity, and the offer name. |
| 6 | `/landing-page` | 3, 4, 5, plus buyer conversations when present | `6-reference-board.md`, `6-landing-page-copy.md`, `6-landing-page-build-sequence.md` | How is it experienced and sold? Adaptive page architecture, authored copy and visual direction, plus a verified build plan. |
| 7 | `/prd-generation` | 2, 4, 5, plus product-relevant Stage 6 decisions when present | `7-prd.md` | What is authorised to build? A provenance-preserving PRD with user/payer flows, test controls, quality requirements, and traceability. |
| 8 | `/build-sequence` | 7 | `8-build-sequence.md` | How is it built safely? A readiness-audited, risk-first execution map for the actual builder. |
| 9 (optional) | `/mcp-integration` | 7, 5, plus the shipped codebase | `9-mcp-prd.md`, `9-mcp-build-sequence.md` | Can Claude operate it? An MCP layer: expose the product as a connector, or wire in a third-party service. |
| — (optional, unnumbered) | `/buyer-conversations` | 1, and 0 if present | `buyer-conversations.md` | What did buyers actually say? Runs between Stages 1 and 4; revises Stage 1's evidence fields and ledger. Not a stage packet; never counts toward status. |

The dependencies are not strictly linear: Stage 7 draws on 2, 4 and 5 plus product-relevant Stage 6 decisions when present, and Stage 6 draws on 3, 4 and 5.
The default order above is the safe path. A user may jump to any stage whose upstream packets exist and
whose applicable experiment, completion, naming, terminal, and build-authority gates pass.

Stage 3 sets a price, funding, take-rate, or internal-investment hypothesis. For an external offer,
Stage 4 tests the price against anchored market value and often moves it. If a user asks where "the
offer" is, it is Stage 4, not Stage 3; internal initiatives carry an investment and adoption case rather
than pretending an external offer exists.

Stage 9 is an extension, not part of loop completion. It runs after the Stage 8 sequence has been
executed, because its primary input is working code: an MCP layer wraps a data layer that has to exist
first. The orchestrator offers it at the Complete state (Section 3) and tracks it only once it is run.

Not every build ends in software. Stages 7 and 8 exist to produce a software PRD and code, low-code, or
no-code execution sessions, so when Stage 2 confirms a purely non-digital solution (a physical product, a pure service, or
a process with no digital component, and no digital side to a hybrid), they have nothing to produce and
the loop can complete at Stage 6 instead. That decision is the **terminal stage**: recorded in `STATE.md`
(Section 2), decided at the gate after Stage 2 (Section 3), and changeable at any later gate in either
direction. The default is Stage 8, and nothing changes unless the question is asked and answered.

---

## SECTION 2: PROJECT STATE (`usl-build/STATE.md`)

The orchestrator maintains one state file so any session, and any human, can see where the project is.
The orchestrator never trusts `STATE.md` blindly: it reconciles against which packet files actually exist
in `usl-build/` at the start of every run, so the state self-heals even if a stage was run standalone.

**Template:**

```markdown
# USL Build Loop — Project State

**Project:** [working name]
**Mode:** [student | client]
**Terminal stage:** [8 (default) | 6 (non-software build)]
**Last updated:** [today's date]

**North star (one paragraph):**
[The through-line in plain language: who it is for, the problem, and the unique value. Start rough from
the Stage 1 idea and sharpen it as later stages confirm details. Every stage can read this for context.]

## Stage status

| # | Stage | Packet file | Status |
|---|---|---|---|
| 1 | problem-validation | 1-problem-validation.md | [not started / in progress / done] |
| 2 | solution-mvp | 2-solution-mvp.md | [not started / in progress / done] |
| 3 | business-model | 3-business-model.md | [not started / in progress / done] |
| 4 | offer-design | 4-offer-design.md | [not started / in progress / done] |
| 5 | brand-strategy | 5-brand-strategy.md | [not started / in progress / done] |
| 6 | landing-page | 6-landing-page-copy.md | [not started / in progress / done] |
| 7 | prd-generation | 7-prd.md | [not started / in progress / done] |
| 8 | build-sequence | 8-build-sequence.md | [not started / in progress / done] |

## Optional workstreams

| Workstream | Status | Next action |
|---|---|---|
| expertise-map | [not started / in progress / done / n/a] | [for example: Resume Step 3] |
| buyer-conversations | [not started / offered / in progress / done / n/a] | [for example: Offered after Stage 1] |

**Next action:** [for example: Run Stage 5 (brand-strategy)]

**Decisions and notes:**
[Anything the user paused on, jumped over, or chose to skip, and why. Keep this short and honest.
Needs-review resolutions ("confirmed Stage 2 still holds after the Stage 1 revision") are recorded here.]
```

**How status is computed:** a stage is `done` if its primary packet file exists in `usl-build/`,
`in progress` if the user started it this session but it is not yet written, otherwise `not started`.
Stage 7 is the exception: `7-prd.md` also needs a `Build Decision` of `Build authorised` or `Build
authorised with test-in-v1 controls`; `Not authorised` or unresolved `contract-required` or `blocked`
rows mean `in progress`. The furthest `done` stage plus one is the default next action, subject to the
precedence order in Section 3. Ignore `usl-build/archive/` entirely: archived packets never count.

**Optional workstreams never enter the furthest-done computation and never affect terminal-stage
logic.** `0-expertise-map.md` and `buyer-conversations.md` are tracked in their own table, from their
own `Status:` lines, and a project holding only optional-workstream files is still a new project. This
is an invariant, not a default.

**`done — needs review`.** When a revision appends a ledger entry to an upstream packet (most often
`/buyer-conversations` revising Stage 1) while downstream packets exist, mark each dependent stage
`done — needs review`. It still counts as `done` for the furthest-done computation and for terminal
completion; the marker only changes what the next gate says. At that gate, offer to re-run the affected
stage or to confirm it still holds, and record either answer in Decisions. The user can always proceed.
Packets are never deleted by a revision.

**The terminal stage.** The loop is complete when the terminal stage's primary packet exists:
`8-build-sequence.md` by default, or `6-landing-page-copy.md` when `STATE.md` records terminal stage 6.
Terminal stage 6 is for builds with no software component at all. When it is set, mark the Stage 7 and 8
rows `not in scope` instead of `not started`, and do not route past Stage 6. If the terminal-stage line
is missing from `STATE.md`, the terminal stage is 8. Self-heal rule: if `2-solution-mvp.md` records a
purely non-digital solution type and no terminal stage is recorded, ask the terminal question at the
next gate (Section 3) and record the answer. The user can raise the terminal stage back to 8 at any
gate if a digital layer emerges later; flip the rows back to `not started` and continue.

**The brand-first exception (Stage 5).** In a brand-first project, `5-brand-strategy.md` exists before
Stage 4 has run: a personal or company brand foundation was built ahead of any offer. Packet existence
is therefore not enough for Stage 5. Read the packet's Offer Naming section: Stage 5 is `done` for the
current offer only if "Replaces the Stage 4 working title" matches the working title carried in
`4-offer-design.md`. If the section reads "No offer to name yet" or names a different working title,
mark Stage 5 `done (foundation only)`, and after Stage 4 completes the next action is the
brand-strategy Offer Naming Sprint (its `SKILL.md`, "Offer Naming Sprint" entry), which names the offer against the
existing voice and updates the packet in place. Never route to Stage 6 while the offer is unnamed:
Stage 6 refuses to put a working title on a page.

**The Stage 4 exception.** Stage 4 is the only stage designed to span sessions, so the existence of its
packet is not enough. `4-offer-design.md` carries a `**Status:** in progress | complete` line, written by
the stage itself at each of its phase checkpoints. Read it:

- `complete` means the stage is `done` and the loop advances to Stage 5.
- `in progress` means the stage is `in progress`. The next action is "Resume Stage 4 (offer-design) at
  [the last completed phase named in the packet]", not advancing. Never let a downstream stage read a
  half-finished offer packet as if it were final.

**Optional Stage 9:** if `9-mcp-prd.md` or `9-mcp-build-sequence.md` exists, add a row for it:
`| 9 | mcp-integration (optional) | 9-mcp-prd.md, 9-mcp-build-sequence.md | [status] |`. Do not add the
row to new projects. Stage 9 appears in state only once it is run, and it never affects whether the loop
counts as complete (completion is the terminal stage's packet: Stage 8 by default, Stage 6 when
`STATE.md` records a non-software build).

---

## SECTION 3: ROUTING LOGIC

On every `/build-loop` invocation:

1. **Look for `usl-build/`.** If it does not exist, this is a new project. If it exists, read `STATE.md`
   (if present) and list the packet files to reconcile status, ignoring `usl-build/archive/`.
2. **Decide the situation:**
   - **New project** (no numbered packets; optional-workstream files alone do not change this): explain
     the loop in three sentences, ask for the one-line idea and the mode, create `usl-build/STATE.md`,
     then begin Stage 1. If the user has no idea, offer Stage 0 (`/expertise-map`) and run it on a yes;
     Stage 1 reads its packet directly afterward.
   - **In progress** (some packets): report the progress map ("Stages 1 to 4 done. Next is Stage 5,
     brand-strategy."), then offer three choices: continue to the next action, pause, or jump to a
     specific stage whose upstream packets exist. The next action follows this precedence:
      1. Resume an optional workstream already `in progress` (its own status line says where).
      2. Otherwise resolve any stage marked `done — needs review` (Section 2): re-run it or record that
         it still holds.
      3. Otherwise, if Stage 2 is `validation-first` and its experiment status is `planned` or
         `inconclusive`, run the experiment or materially improved retest recorded in that packet. The
         packet exists, but Stage 3 is not yet the next action.
      4. Otherwise the next numbered stage: furthest `done` plus one, unchanged.
      5. Optional work is offered at its designated gate, never forced: Stage 0 for a new project with
         no idea, `/buyer-conversations` at the gate after Stage 1 and again before Stage 4.
   - **Complete** (the terminal stage's packet exists: `8-build-sequence.md` by default,
     `6-landing-page-copy.md` when the terminal stage is 6): recap the whole journey, point to the
     terminal artifact (`8-build-sequence.md`, or for a Stage 6 terminal the landing page copy and build
     sequence plus `4-offer-document.md`), and in client mode assemble the deliverable bundle
     (Section 6). For a Stage 6 terminal, note that Stages 7 and 8 remain available if a digital layer
     emerges later: raise the terminal stage back to 8 and continue. If the build has been executed,
     offer the optional Stage 9 (`/mcp-integration`) once; if its packets exist, include it in the
     recap. Stage 9 requires shipped code, so it applies only to projects that ran Stages 7 and 8.
3. **Run a stage** (Section 4).
4. **After the stage**, run the handoff check (Section 5), update `STATE.md`, and offer continue or pause.

Three gates carry an extra question:

- **After Stage 1:** read the Stage 1 packet's evidence fields. If `Buyer conversations completed: 0`
  and `Conversation status: not attempted`, offer `/buyer-conversations` once: the Desirability score
  rests on the user's own belief, and the sprint is the cheapest way to test it. A recorded deferral
  (`deferred by user`) or substitution (`substituted`) suppresses the offer. If the packet has no
  evidence fields (schema v1), the count is unknown: ask once whether buyer conversations have
  happened, record the answer in Decisions, and never infer zero or fire the offer on an assumption.
  Offer again at the gate before Stage 4 if no customer artifacts exist. Never block; Stage 4 runs
  Track B without it.
- **After Stage 2:** first read the route and experiment status. If the route is `validation-first` and
  the experiment is `planned` or `inconclusive`, record the experiment or retest as the next action and
  do not route to Stage 3. Once that gate clears, if the confirmed solution type is purely non-digital
  (physical product, service, or process, with no digital component and no digital side to a hybrid), ask
  the terminal question once:
  "Stages 7 and 8 produce a software PRD and executable code, low-code, or no-code build sessions. Does this project have software
  to build after the landing page, such as a booking flow, a client portal, or a product, or should the
  loop complete at Stage 6?" Record the answer as the terminal stage in `STATE.md`. Hybrids with any
  digital component keep terminal stage 8, and so does any project where the user is unsure.
- **After Stage 4:** if `5-brand-strategy.md` already existed before Stage 4 completed (a brand-first
  project), route to the brand-strategy Offer Naming Sprint before Stage 6, per the brand-first exception in
  Section 2.

Never run more than one stage without a confirmation gate in between. The point of the loop is deliberate
decisions, not speed.

---

## SECTION 4: RUNNING A STAGE

To run stage N, the orchestrator hands control to that stage's skill and then returns. It does not
re-implement any stage.

1. Announce it: "Now running Stage N, [skill name]. [One line on why this stage matters.]"
2. Follow that skill's `SKILL.md` exactly. The stage reads its upstream packet(s) from `usl-build/`
   automatically and runs its own interview, one step at a time, with its own confirmations.
3. In **student mode**, add the lesson framing from Section 5A. In **client mode**, add the delivery
   framing from Section 5B.
4. When the stage writes its packet, control returns to the orchestrator.

The orchestrator owns the through-line, the state file, and the gates. Each stage owns its own interview.

**Stage 4 has internal checkpoints.** It pauses at the end of its foundation and construction phases and
offers to stop. Those are the stage's own gates, not yours. If the user pauses inside Stage 4, update
`STATE.md` to show Stage 4 `in progress` with the last completed phase, and stop cleanly. Do not treat an
internal pause as a completed stage.

---

## SECTION 5: HANDOFF CHECK

After each stage, before offering to continue, confirm:

- [ ] The stage's packet file was written to `usl-build/` (named exactly as in the routing table).
- [ ] For Stage 4 only: the packet's `Status` line reads `complete`.
- [ ] For Stage 2 only: if `Route` is `validation-first` and `Experiment status` is `planned` or
      `inconclusive`, the experiment or retest is recorded as the next action and Stage 3 is not.
- [ ] The north star in `STATE.md` still matches what the stage concluded. If the stage sharpened the
      persona, problem, or value, update the north star.
- [ ] Anything the stage flagged as unresolved (open questions, risks, "Not yet determined", "Unverified",
      or findings marked "[reasoned]") is noted in `STATE.md` so the next stage and the user can see it.
- [ ] `STATE.md` status row for this stage is set to `done` and the next action is updated.
- [ ] Any `done — needs review` marker surfaced at this gate has its resolution (re-run, or confirmed
      still holds) recorded in Decisions.
- [ ] After Stage 2 only: if the solution type is purely non-digital, the terminal question was asked
      and the answer recorded in `STATE.md` (Section 2).
- [ ] After Stage 4 only, in a brand-first project: the next action is the brand-strategy Offer Naming Sprint,
      not Stage 6, until the packet's Offer Naming section covers this offer.

If the packet is missing, do not advance. Re-run or resume the stage.

---

## SECTION 5A: STUDENT MODE (default)

For USL Academy learners running the loop on their own problem. The goal is that they finish with both a
build plan and an understanding of why each stage exists.

- Keep all the educational framing the stages already have. Do not strip explanations.
- Before each stage, add one sentence on what this stage decides and why skipping it is costly. Draw on
  the failure modes in the loop (for example: skipping Stage 1 produces vague everything; under-investing
  in early scope caps the quality of everything downstream; skipping Stage 4 produces a product with a
  price but no offer, which is the most common reason a good build does not sell).
- After each stage, ask one short reflection question tied to that stage's decision (for example, after
  Stage 1: "In one sentence, who is this for and what breaks for them today?"; after Stage 4: "What is the
  one sentence describing the thing your buyer cannot resolve on their own?").
- At the end of the full run, tell the learner they have now completed the full loop on a real problem,
  which is the capstone the course is built around.

**Loop map (course five-stage loop to the eight skills).** The USL Academy course teaches a five-stage
loop as the mental model. The skill suite expands it into eight guided skills. The relationship, where
"Loop stage" numbers are the course's own and are unrelated to the pipeline stage numbers:

| Course loop stage | Covered by pipeline skills |
|---|---|
| Loop stage 1: Problem Framing | Pipeline Stages 1 to 2 (problem-validation, solution-mvp), with commercial context in 3 and 4 |
| Loop stage 2: Prompt Crafting | Absorbed: the skills are the structured prompts, so learners run skills instead of hand-writing a mega-prompt |
| Loop stage 3: PRD Generation | Pipeline Stage 7 (prd-generation), fed by Stages 3 to 6 (business, offer, brand, landing) |
| Loop stage 4: Build Sequencing | Pipeline Stage 8 (build-sequence) |
| Loop stage 5: Execution | Running the Stage 8 output with the appropriate coding agent, low-code tool, visual builder, or mixed workflow |

Teach the five-stage loop as the mental model; have learners execute it through the eight skills via
`/build-loop`.

---

## SECTION 5B: CLIENT MODE (done-with-you delivery)

For running a client through the loop as a paid engagement. Same eight stages, framed as deliverables.
Adjustments come straight from the loop's client guidance:

- **Stage 1 is a discovery session with the client, not a solo reflection.** The problem statement is
  validated with the client before proceeding.
- **Stage 4 is where client-supplied material matters most.** Ask for their real artifacts before the
  session: filled forms, support tickets, lost-deal notes, refund reasons, changelogs, purchase data. An
  offer built without them is reasoned rather than observed, and the packet will say so.
- **Stage 7 (PRD) is a client sign-off moment.** Share the PRD for review before the build sequence is
  written. This is the natural scope sign-off that protects both sides.
- Keep every output deliverable-ready: clean language, no internal notes left in the packet.
- Track scope discipline explicitly. Any new idea that arrives mid-loop goes to a backlog note, not into
  the current stage.

---

## SECTION 6: CLIENT DELIVERABLE BUNDLE

At the end of a client-mode run, assemble the packets into a client-facing bundle and list it for the
user. The bundle is the engagement's tangible output:

| Deliverable | From packet |
|---|---|
| Validation brief (persona, problem, go / caution / stop) | `1-problem-validation.md` |
| MVP scope and roadmap | `2-solution-mvp.md` |
| Business plan summary | `3-business-plan-summary.md` |
| Offer document (stack, anchors, guarantee, launch order) | `4-offer-document.md` |
| Brand foundation one-pager | `5-brand-strategy.md` |
| Landing page copy plus build plan | `6-reference-board.md`, `6-landing-page-copy.md`, `6-landing-page-build-sequence.md` |
| Product Requirements Document | `7-prd.md` |
| Build sequence (risk-first code, low-code, or no-code execution map) | `8-build-sequence.md` |
| MCP integration PRD and build sequence (only if Stage 9 was run) | `9-mcp-prd.md`, `9-mcp-build-sequence.md` |

Present the bundle as the engagement's deliverable. Everything in it is plain markdown, readable by the
client or handed straight to a builder.

For a Stage 6 terminal (non-software build), the PRD and build sequence rows are out of scope: the
bundle ends at the landing page deliverables, and the offer document and brand one-pager carry the
delivery weight. Say so plainly rather than listing empty rows.

---

## SECTION 7: BEHAVIORAL NOTES

- The orchestrator routes and tracks. It never re-derives a stage's work or skips a stage's own
  confirmations.
- One confirmation gate between every stage. Offer continue, pause, or jump.
- A user can always run a single stage skill directly. The orchestrator reconciles from the packets next
  time, so standalone use never corrupts state.
- No emojis. No em dashes. Clear, direct prose. Mirror the user's tone.
- If the user is brand new and unsure, default to student mode and start at Stage 1.
