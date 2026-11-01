# USL Academy Build Loop

The USL Academy methodology for taking a fuzzy product idea to an execution-ready build plan, packaged as
Claude Code skills, without losing scope discipline along the way.

It is an eight-stage pipeline, plus one optional extension stage for MCP integration once the product has
shipped, one optional pre-stage ([`/expertise-map`](expertise-map/SKILL.md)) for people who arrive without
an idea, and one optional buyer discovery sprint ([`/buyer-conversations`](buyer-conversations/SKILL.md)).
Each stage is a standalone skill that interviews you one step at a time, then writes a structured
**Transfer Packet** the next stage picks up automatically.

## Quick start: run it as one workflow

You don't have to drive the eight stages yourself. Run **[`/build-loop`](build-loop/SKILL.md)** and it
becomes the single front door: it figures out where your project is (from the files in `usl-build/`),
starts you at the right stage, runs the pipeline one stage at a time with a confirmation gate between
each, and tracks progress in `usl-build/STATE.md`. Start a new idea, or resume a half-finished one, with
the same command.

It has two modes: **student mode** for running the loop on your own product (the default, with learning
framing), and **client mode** for delivering it for a client (Stage 1 becomes a discovery session, the
PRD becomes a sign-off moment, and you finish with a client deliverable bundle).

Prefer to drive manually, or only need one stage? Every stage below still runs standalone, and
`/build-loop` reconciles its state from whatever packets exist, so the two ways of working never conflict.

## The skills

| Skill | Stage | What it does |
|---|---|---|
| [`/build-loop`](build-loop/SKILL.md) | orchestrator | The front door. Detects where the project is, routes to the next stage, gates between stages, and maintains `usl-build/STATE.md`. |
| [`/expertise-map`](expertise-map/SKILL.md) | 0 (optional pre-stage) | For people with real expertise and no idea. Builds a capability inventory with proof, points it at an arena, crosses capability with arena into candidate problem spaces, shortlists up to three, scores them on Frequency, Pain, Budget and Access with confidence levels, and pressure-tests the pick. Stage 1 reads its packet directly. |
| [`/problem-validation`](problem-validation/SKILL.md) | 1 | Pressure-tests the idea: persona, problem statement, Balanced Breakthrough Model score, and a Unique Value Proposition. |
| [`/buyer-conversations`](buyer-conversations/SKILL.md) | between 1 and 4 (optional) | Runs a buyer discovery sprint across a week: a past-tense question list seeded from Stage 1, a debrief after each real conversation, a read across them for language, pattern, severity and budget, and the source document Stage 4 ingests as observed evidence. Writes its verdict back into Stage 1's evidence fields. |
| [`/solution-mvp`](solution-mvp/SKILL.md) | 2 | Routes the highest-risk uncertainty into the cheapest credible validation experiment, or scopes a value-first release through outcome traceability, real actor flows, enabling requirements, and trigger-based deferrals. |
| [`/business-model`](business-model/SKILL.md) | 3 | Routes to the actual economic model, calculates model-specific unit economics or internal ROI, triangulates price or investment, and designs the first acquisition or adoption test. |
| [`/offer-design`](offer-design/SKILL.md) | 4 | Finds the strongest pocket of demand, then builds the offer: niche and avatar, the highest-value buyer conversation, creative commercial-model alternatives, an evidence-anchored value stack, risk reversal, offer test, and launch order. The only stage designed to span sessions. |
| [`/brand-strategy`](brand-strategy/SKILL.md) | 5 | Discovery plus nine build steps: audience and brand architecture, foundation and identity direction, and naming of the brand, offer, or lead magnet through the appropriate sprint. |
| [`/landing-page`](landing-page/SKILL.md) | 6 | Routes by goal, visitor state, trust, demonstration and audience path; builds a dated reference board of the buyer's actual field (captured, measured, deconstructed, with the category default as a count) and gates on it before any visual thesis; then produces evidence-grounded copy, visual direction, and a verified implementation sequence. |
| [`/prd-generation`](prd-generation/SKILL.md) | 7 | Reconciles validated scope, offer obligations, payer and user flows, test-in-v1 work, architecture, non-functional requirements, AI evaluation, and source-to-test traceability into a build-authorised PRD. |
| [`/build-sequence`](build-sequence/SKILL.md) | 8 | Audits PRD readiness, then converts authorised requirements into a risk-first dependency map and verified code, low-code, or no-code execution sessions. |
| [`/mcp-integration`](mcp-integration/SKILL.md) | 9 (optional) | After the product ships: designs its MCP layer, either exposing it as a claude.ai connector or Claude Code server, or wrapping a third-party API in MCP tools. Produces an MCP PRD plus its own build sequence. |

Stage 3 and Stage 4 are deliberately separate. Stage 3 answers "how does this sustain itself" with model-specific economics and a price, funding, take-rate, or internal-investment hypothesis. Stage 4 answers "what exactly is being sold, and why is that price defensible" for an external offer, and it is the longest stage in the suite: it opens by ingesting your real customer material (support tickets, lost-deal notes, refund reasons, changelogs, purchase data) and refuses to pretend a reasoned buyer profile is an observed one.

**Naming happens in Stage 5, not Stage 4.** A name has to be filtered against a brand voice, and that voice does not exist until brand strategy builds it. So Stage 4 hands the offer forward under a plain working title, and Stage 5 names it against a finished Brand Idea and tone of voice.

**Brand-first projects are supported too.** When the brand comes before any offer, run `/brand-strategy` as a foundation-only sprint. When an offer is later designed in Stage 4, the Offer Naming Sprint names it against the existing voice. `/build-loop` detects a pre-existing foundation after Stage 4 and routes to Offer Naming instead of skipping ahead with an unnamed offer.

Each skill has a `SKILL.md` interview flow and a primary `reference.md`. Complex skills may route conditional material such as naming systems, templates, or worked examples through a `references/` directory so it is loaded only when needed.

## What this does not do

**The pipeline produces questions reliably. It does not produce judgment.**

Every stage asks the right question in the right order, surfaces assumptions instead of burying them, separates verified facts from estimates, and refuses to present a reasoned finding as an observed one. That is most of the work, and it is why running the loop beats improvising.

What it cannot tell you:

- Which niche is actually right, without reading your real proof
- Which gap matters most, without your failure documents
- Which delivery vehicle would backfire, without your buyer's specific history
- What has already been tried and reverted, without your change log
- Whether a claim is honest, which needs domain knowledge you have and it does not

You will feel this hardest at Stage 4. It opens by asking for real customer material and says plainly when it has none. It will still build you a complete offer, but it will mark every line of that offer as reasoning rather than observation.

Use the loop for the structure. Bring the judgment yourself, or borrow someone else's.

## Install

**macOS / Linux / WSL:**

```bash
./install.sh
```

**Windows (PowerShell):**

```powershell
.\install.ps1
```

By default the installer **links** each skill directory into `~/.claude/skills/` (symlinks on Unix, junctions on Windows; both work without admin rights). Edits to this repo show up live in Claude Code with no reinstall.

| Bash | PowerShell | Effect |
|---|---|---|
| `--copy` | `-Copy` | Hard-copy instead of linking |
| `--project ./myapp` | `-Project .\myapp` | Install to `<path>/.claude/skills/` (project-scoped) |
| `--dry-run` | `-DryRun` | Show what would happen, change nothing |
| `--force` | `-Force` | Overwrite existing entries without prompting |
| `--uninstall` | `-Uninstall` | Remove everything this script installed |

If you already have skills with the same names installed (for example from another copy of these skills), the installer asks before replacing each one. Only one copy of each skill should be installed, or they compete to trigger.

If PowerShell blocks the script with an execution-policy error, run it once with:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

After install, restart Claude Code and run `/build-loop` to start. You can also invoke any single stage directly, for example `/problem-validation`.

## How the handoff works

The pipeline is artifact-driven. Each stage reads the previous stage's Transfer Packet and writes its own, all under a single workspace directory in your current project:

```
usl-build/
├── STATE.md                          # progress + north star, maintained by /build-loop
├── 0-expertise-map.md                # optional Stage 0, if you started without an idea
├── 1-problem-validation.md
├── buyer-conversations.md            # optional, from /buyer-conversations; Stage 4 ingests it
├── 2-solution-mvp.md
├── 3-business-model-preliminary.md   # only if you force an early economics check past Stage 2's gate
├── 3-business-model.md
├── 3-business-plan-summary.md
├── 4-offer-design.md
├── 4-offer-document.md
├── 5-brand-name.md                   # standalone Brand Naming Sprint only; does not complete Stage 5
├── 5-brand-strategy.md
├── 6-reference-board.md        # + reference-board/ captures
├── 6-landing-page-copy.md
├── 6-landing-page-build-sequence.md
├── 7-prd.md
├── 8-build-sequence-draft.md         # only when Stage 8 ran without a PRD; a plan, not an authorised build
├── 8-build-sequence.md
├── 9-mcp-prd.md                      # optional Stage 9, after the product ships
├── 9-mcp-build-sequence.md           # optional Stage 9
└── archive/                          # superseded packets; ignored by /build-loop
```

When a stage starts it looks, in order, for:

1. The upstream packet file(s) in `usl-build/`, read automatically.
2. A packet you pasted into the chat.
3. Neither: it runs a short intake to gather what it needs.

Stage 2 has one evidence gate inside that flow. When the highest-risk assumption is still unknown or low-confidence, it writes a validation-first experiment with success, failure, and inconclusive thresholds. The loop runs that experiment before Stage 3; a planned test is never treated as a validated release merely because the packet exists.

When a stage finishes it writes its output to `usl-build/`, reports the path, and also shows the packet inline. The dependencies aren't strictly linear: Stage 7 (PRD) draws on Stages 2, 4 and 5 plus product-relevant Stage 6 decisions when present, and Stage 6 draws on Stages 3, 4 and 5. Each stage's "Inputs and outputs" section lists exactly what it reads.

Stage 4 is the one exception to "one stage, one sitting". It writes `4-offer-design.md` incrementally with a `Status: in progress | complete` line, pausing at each phase boundary. `/build-loop` reads that status line, so a paused offer session resumes where it stopped.

For a build that ends in software, the last artifact of the core loop is `usl-build/8-build-sequence.md`: the execution map for the actual builder, with coding-agent prompts for code work, platform procedures for no-code work, and mixed sessions where both are required.

Not every build ends in software. When Stage 2 confirms a purely non-digital solution, `/build-loop` asks once whether there is software to build after the landing page and, if not, records **terminal stage 6** in `STATE.md`: the loop then completes at Stage 6. Raise the terminal stage back to 8 at any gate if a digital layer emerges later.

The optional Stage 9, [`/mcp-integration`](mcp-integration/SKILL.md), runs *after* the build. Its primary input is the shipped codebase (plus the Stage 7 PRD and Stage 5 brand voice). The generated sessions lean on the `/mcp-builder` skill for implementation craft when it is available.

**Optional companion files.** Several stages also read `usl-build/competitor-landscape.md`, and Stage 4 reads `usl-build/pricing-strategy.md`, when those files exist. They come from companion skills that are not part of this repository. Without them the stages run normally.

## Live research

Every stage can check its assumptions against the live web instead of relying only on the model's training data.

- **Opt-in.** At marked points the stage offers a quick check ("I can look up what comparable tools charge, want me to?") and proceeds on a yes. Say "always research" once and it stops asking for the rest of the session.
- **Tool-agnostic.** It uses whatever web capability the environment has: built-in web search, or a search MCP like Firecrawl, Exa, or Jina. If none is available it says so, proceeds on model knowledge, and flags the affected output as `Unverified`.
- **Cited and confirmed.** Findings come back as a short, sourced list you confirm before they feed any score, price, or claim.
- **Compounding.** Confirmed findings are written into each packet's **Market Evidence and Sources** block (for stages 7 to 9, a **Tooling Currency and Sources** block), so downstream stages reuse them instead of re-searching.

Stages 1 to 6 do market research (competitors, demand, pricing, customer language). Stages 7 to 9 do tooling-currency checks. The full rules live in each skill's `reference.md` under "Live Research Protocol."

## Repo layout

```
.
├── install.sh                  # installer for macOS / Linux / WSL
├── install.ps1                 # installer for Windows (PowerShell)
├── README.md                   # you are here
├── LICENSE
├── AGENTS.md                   # maintainer instructions
├── context/                    # maintainer state and provenance
├── build-loop/                 # the orchestrator: one front door for all eight stages
├── expertise-map/              # optional Stage 0
├── problem-validation/         # Stage 1
├── buyer-conversations/        # optional, between Stages 1 and 4
├── solution-mvp/               # Stage 2
├── business-model/             # Stage 3
├── offer-design/               # Stage 4
├── brand-strategy/             # Stage 5; + references/ for naming, deliverables, and the worked example
├── landing-page/               # Stage 6; + evals.md
├── prd-generation/             # Stage 7
├── build-sequence/             # Stage 8
└── mcp-integration/            # optional Stage 9; + evals.md
```

## Skill conventions used here

- One directory per skill, named in lowercase-with-hyphens.
- A single `SKILL.md` entry point with YAML frontmatter (`name` and `description`). The `description` is the only thing Claude reads to decide whether to invoke the skill, so it leads with the *what* and the *when*.
- An "Inputs and outputs" section defining how packets flow in and out via `usl-build/`.
- Frameworks live in the primary `reference.md`; conditional templates or examples may live under `references/` and are routed explicitly from `SKILL.md`.
- A "Live Research Protocol" section in each `reference.md`. Skills install as isolated links, so each one only sees files in its own directory at runtime; the protocol block is duplicated rather than shared. When you edit it, update every copy.
- An optional `evals.md` holding forward-test scenarios for maintainers. It is never loaded during a normal session.

## Uninstall

```bash
./install.sh --uninstall         # macOS / Linux / WSL
.\install.ps1 -Uninstall         # Windows
```

Removes the links (or copies) from `~/.claude/skills/`. Your repo and any `usl-build/` artifacts in your projects are untouched.

## License

See [LICENSE](LICENSE).
