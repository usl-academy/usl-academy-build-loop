# Stage 8: Build Sequencer
## Knowledge File: Prompt Templates, Session Examples, Document Template, and Worked Example

---

## SECTION 0: LIVE RESEARCH PROTOCOL

This is the tooling-currency flavor of the protocol, used lightly. The sequence inherits its stack from the PRD, so most currency checks belong there. The two things worth a live check here are the setup details a builder hits first: free-tier limits and onboarding steps for the named services, and the current deployment process for the target environment. Wherever a step is marked **[Live research available]**, follow this protocol.

**1. Offer, do not impose.** Ask before researching, then proceed on a yes. Phrase it as a quick, optional check: "Before I write the setup sessions, I can verify the current free-tier limits for these services. Want me to?" If the user declines, proceed on existing knowledge and mark anything it affected as "Unverified: based on model knowledge, not a live check." If the user says to always research, stop asking and run research automatically at each marked point for the rest of the session.

**2. Use whatever web capability is available.** Use your built-in web search and fetch, or an installed search tool if the environment has one (for example Firecrawl, Exa, or Jina). Do not depend on any single tool. If no web capability is available at all, say so once, proceed on model knowledge, and flag the affected outputs as "Unverified." Never block the interview waiting on a tool.

**3. Search narrow.** Build 2 to 4 targeted queries from what you already know: the named service, the current year, and the setup or deploy step. Specific queries beat broad ones. Run one round, then synthesize. If a step has several research needs, batch them into one pass rather than asking the user repeatedly.

**4. Synthesize, then confirm with the user.** Report findings as a short, cited list. Each claim gets a source and a date. Then ask the user to confirm before the findings change a session. Flag any source older than about twelve months as possibly stale. Findings are evidence the user reacts to, not conclusions you impose.

**5. Record evidence in the sequence.** Put confirmed findings in the document's "Tooling Currency and Sources" block, one line each: what was verified, the source URL, and the date checked (use today's date). Where a free-tier limit or a deploy step changed, reflect it in the affected session's definition of done.

**6. Stay honest.** Distinguish what you verified against a source from what you inferred. Never present an unverified free-tier limit or deploy step as current. Live research raises confidence; it does not replace the user's own knowledge of their tools.

### Research scope for this skill

Two marked points, both light:

**Phase 0 (Readiness and Safe Setup).** Before writing account, credential, and environment work, offer to verify current service limits, onboarding steps, and preview-environment prerequisites in one batch.
- Example queries: "[service] free tier limits"; "[service] pricing [current year]"; "[service] getting started".
- Feeds: Phase 0 manual, coding-agent, or mixed sessions and their definitions of done.

**Production release (optional check).** Before writing the final promotion session, optionally verify the current deploy process and any new prerequisites for the target environment.
- Example queries: "[deploy target] deploy [framework] [current year]"; "[deploy target] environment variables setup".
- Feeds: preview setup and the production-release session.

If a limit or a step has changed since model knowledge was frozen, flag it and update the affected session.

---

## SECTION 0A: BUILD READINESS AND COVERAGE

### Readiness audit

Return one row per check before producing an execution map:

| Check | Pass condition | Evidence | Missing or conflicting IDs | Result |
|---|---|---|---|---|
| Build authority | PRD says authorised or authorised with test controls | Section 1 | | |
| Contract and blockers | No unresolved `contract-required` or `blocked` row | Sections 1, 10, 11 | | |
| Requirement completeness | Every confirmed-build and test-in-v1 ID has acceptance criteria | Section 5 | | |
| Actor completeness | User and payer are explicitly same or have propositions, flows, permissions, and approval handoffs | Sections 2, 4, 8 | | |
| Learning controls | Every test-in-v1 item has exposure, telemetry, thresholds, decision, and rollback/disable | Sections 3, 5, 10 | | |
| AI evaluation | Every AI requirement has the complete evaluation contract | Section 6 | | |
| NFR verification | Every applicable NFR has a verification method | Section 9 | | |
| Safe execution | Fixtures, environments, credential handling, preview, and recovery are defined | Sections 8, 12 | | |
| Traceability | Every authorised requirement and applicable NFR has a source-to-verification row | Section 12 | | |
| Open decisions | Resolved or marked non-blocking with latest-needed point | Section 11 | | |

Any failed row stops affected sequencing. Produce a short correction request using exact IDs; do not fill the gap by inference.

### Final coverage and contradiction audit

Before delivery, verify both directions:

1. Every confirmed-build and test-in-v1 requirement, AC, applicable NFR, actor flow, cap control, and risk mitigation appears in at least one session and definition of done.
2. Every session maps to authorised requirement or operating work. A session with no source ID is scope creep unless it is a named Phase 0 prerequisite.
3. No two parallel sessions modify the same unstable file, schema, configuration surface, or no-code object without an integration owner.
4. Definitions of done do not contradict the PRD or each other.
5. No later session depends on an unverified output, unresolved decision, or failed gate.

Use this coverage table in the delivered sequence:

| Requirement / NFR / flow / risk | Sessions | Verification gates | Coverage status |
|---|---|---|---|
| | | | complete / gap / conflict |

---

## SECTION 1: EXECUTION TEMPLATES

Use the template that matches the execution mode. Fill every field specifically and remove irrelevant fields. A prompt is as long as needed to remove material ambiguity; there is no word minimum.

Every coding-agent prompt begins with this state preflight:

```text
STATE PREFLIGHT:
1. Read the named PRD sections and requirement IDs before editing.
2. Inspect the existing project structure, relevant files, tests, and current version-control status.
3. Preserve unrelated user changes. Do not reset, overwrite, or broadly reformat work outside this task.
4. Do not expose or commit secrets. Use permission-safe fixtures; do not log raw sensitive inputs or outputs.
5. If the repository, installed stack, or current behavior conflicts with the prompt or PRD, stop and report the conflict before changing architecture.
```

Every coding-agent prompt also includes:

- `REQUIREMENT IDS`: R-, NFR-, AC-, risk, and test-in-v1 IDs covered
- `TESTS OR CHECKS`: exact commands or platform checks when known, plus expected result
- `SAFETY AND DATA`: secrets, fixtures, redaction, permissions, migrations, and destructive-action limits relevant to the session
- `STOP AND ASK`: conditions that require a decision rather than invention
- `OUTPUT`: changed files or configuration, verification results, remaining limitations, and checkpoint created

---

### TEMPLATE A: Setup and Scaffold Sessions

Use for: project initialization, design system setup, shared component libraries, environment configuration.

```
You are setting up [product name] — [one sentence description].

Run the STATE PREFLIGHT, then read `usl-build/7-prd.md` before writing code or changing configuration.

TASK: [Single, specific task in one sentence]

REQUIREMENT IDS: [R-, NFR-, AC-, risk, or Phase 0 prerequisite IDs]

CONTEXT TO READ:
- usl-build/7-prd.md — read [specific sections and IDs relevant to this session]
- [Any other context files]

REQUIREMENTS:
1. [Specific requirement with exact values where applicable]
2. [Specific requirement]
3. [Specific requirement]
[Continue numbered list]

DESIGN TOKENS: [If applicable — paste exact values from the PRD brand section]
- Primary color: [hex]
- Background: [hex]
- Font family: [name]
[Continue as needed]

DO NOT:
- Build any product features in this session
- Make any decisions not specified in the PRD without asking
- [Any other specific exclusions for this session]

TESTS OR CHECKS: [Exact commands or platform checks and expected results]
SAFETY AND DATA: [Secrets, fixtures, permissions, migration, and logging rules]
STOP AND ASK: [Conflicts or decisions that must not be invented]

OUTPUT: Show me [specific output — directory structure, config file, component rendered in test page, etc.] before proceeding to any other work.
```

---

### TEMPLATE B: Feature Build Sessions

Use for: building individual features, UI sections, API routes, database tables, backend logic.

```
You are building [product name]. Run the STATE PREFLIGHT and read `usl-build/7-prd.md` before writing code.

TASK: Build [specific feature name] as specified in the PRD Section [number].

REQUIREMENT IDS: [R-, NFR-, AC-, risk, and test-in-v1 IDs]

CONTEXT TO READ:
- usl-build/7-prd.md — focus on Sections [numbers] and the IDs above. Also read Section 8 for architecture and Section 9 for applicable NFRs.
- [Previous session output file if relevant]: [why it is needed]

THIS SESSION BUILDS:
[Bullet list of exactly what gets built in this session, drawn from the PRD]

REQUIREMENTS:
1. [Specific requirement with inputs, outputs, and acceptance criteria from the PRD]
2. [Specific requirement]
3. [Specific requirement]
[Continue numbered list. Every item must be traceable to the PRD.]

BRAND SPECIFICATIONS: [Paste relevant values from PRD Section 7]
- [Token name]: [value]

DO NOT:
- Build [any feature that belongs in a later session]
- Add [any functionality not in this session's scope]
- Change [any code from previous sessions unless explicitly required]

ERROR AND RECOVERY: [Failures this slice must handle now because they affect integrity, privacy, or verification; cross-cutting hardening explicitly deferred]

TESTS OR CHECKS: [Exact commands or platform checks and expected results]
SAFETY AND DATA: [Fixture, secret, permission, migration, and logging rules]
STOP AND ASK: [Conflicts or decisions that must not be invented]

OUTPUT: Show me [specific output — component rendered, API route tested with a permission-safe representative request, database table created and seeded with one non-sensitive fixture, etc.]
```

---

### TEMPLATE C: AI Integration Sessions

Use for a focused AI contract or evaluation session. When AI is one inseparable part of a vertical actor outcome, use Template B and add the AI fields below rather than forcing a separate integration phase.

```
You are building the AI integration for [product name]. Run the STATE PREFLIGHT. The PRD contains the exact prompts, schema, and evaluation contract. Do not silently rewrite them.

TASK: Implement [specific AI feature name] as specified in PRD Section 6 (AI Behavior and Evaluation).

REQUIREMENT IDS: [AI R-ID, AC-IDs, NFR-IDs, risk and test-in-v1 IDs]

CONTEXT TO READ:
- usl-build/7-prd.md — read Sections 5, 6, 8, 9, and the IDs above.
- [Any previous session files needed for context]

THE AI INTEGRATION:
- Model: [exact model name from PRD]
- Provider: [Anthropic / OpenAI / other]
- Authentication: Use the [VARIABLE_NAME] environment variable already set up in Phase 0
- Input: [exactly what goes into the prompt, from the PRD]
- Output: [exactly what comes back and in what format, from the PRD]

SYSTEM PROMPT: Implement this exactly as written:
[Paste the system prompt from the PRD verbatim]

USER PROMPT TEMPLATE: Implement this exactly as written:
[Paste the user prompt template from the PRD verbatim]

REQUIREMENTS:
1. Call the AI API with the exact system prompt and user prompt template above
2. Handle the response and extract [specific fields or format from the PRD]
3. Display the output as specified in [PRD section reference]
4. Implement the PRD's timeout, malformed-output, rate-limit, provider-failure, and fallback behavior
5. Record only the redacted telemetry allowed by the PRD. Never log raw sensitive input or output by default
6. Run the specified evaluation fixtures and report the rubric results, unacceptable failures, latency, and cost observations

DO NOT:
- Modify the prompts from what is specified in the PRD
- Add streaming unless specified in the PRD
- [Session-specific exclusion; omit a blanket UI ban when the session is an authorised vertical slice]

TESTS OR CHECKS: [Evaluation command or platform procedure, rubric, thresholds, and expected fallback tests]
SAFETY AND DATA: [Fixture permission, redaction, logging, tool, retrieval, and secret rules]
STOP AND ASK: [Schema, provider, prompt, safety, cost, or requirement conflicts]

OUTPUT: Test with the permission-safe representative fixtures from the PRD. Show the redacted raw shape, validated formatted output, evaluation results, and any failure without exposing sensitive content.
```

### TEMPLATE D: Manual, Low-Code, and Visual-Builder Sessions

Use when the executor must configure a service or visual editor directly. Do not wrap manual work in a fictional coding-agent prompt.

```markdown
**Execution mode:** [MANUAL / VISUAL BUILDER / MIXED]
**Outcome:** [One verifiable result]
**Requirement IDs:** [IDs covered]
**Current state to inspect:** [Named project, pages, workflows, tables, roles, or settings]
**Procedure:**
1. [Exact platform-specific action]
2. [Exact action]
**Values to use:** [Names and non-secret values from the PRD]
**Secrets and data:** [Where credentials go; safe fixture and privacy rules]
**Do not:** [Scope and safety boundaries]
**Verification:** [Preview, test actor, expected state, screenshot/export/log without sensitive data]
**Checkpoint and recovery:** [Named version, export, snapshot, duplicate, or rollback]
```

---

## SECTION 2: DEFINITION OF DONE STANDARDS

Every definition of done covers the applicable categories below. A checklist that only proves files exist is incomplete.

**Category 1: Existence check**
The thing was built. Verifiable by looking at files or the interface.
Examples: "The Button component exists at /src/components/ui/Button.tsx", "The /api/summarise route returns a 200 response"

**Category 2: Correctness check**
The thing works as specified. Verifiable by testing with real input.
Examples: "Pasting a 500-word transcript returns a structured summary in under 10 seconds", "The primary button renders with the correct hex color #1A1A1A"

**Category 3: Quality check**
The thing meets the standard for handoff. Verifiable by inspection.
Examples: "No TypeScript errors in the console", "The component is keyboard accessible", "Push to version control complete"

**Category 4: Safety and data check**
The session preserved authorization, secrets, privacy, migrations, fixtures, and rollback boundaries relevant to its change.

**Category 5: Traceability check**
Every named AC and NFR is verified or explicitly left for a named later gate; no unscoped behavior was added.

**Always include an appropriate final checkpoint:**

- Code: verified commit or tag created and pushed when a remote workflow exists.
- Low-code or no-code: named version, export, snapshot, duplicate, or platform rollback point created.
- Manual service setup: configuration state recorded without secrets, with the recovery or revocation action named.

Do not require Git where the platform does not use it. Do not checkpoint a failed state as the base for later sessions.

---

## SECTION 3: SEQUENCING REFERENCE

Use this when deciding how to order sessions and which phase they belong in.

### Phase 0: Readiness and Safe Setup
- Pass the readiness audit or resolve the exact failed IDs
- Inspect an existing project and working state before planning changes
- Create only needed accounts, credentials, environments, fixtures, and recovery checkpoints
- Verify current service limits and onboarding when requested
- Establish local or builder workspace plus preview or staging; do not expose production data

### Phase 1: Risk Spike and Walking Skeleton
- Identify the assumption, integration, permission boundary, or deployment condition most likely to invalidate the plan
- Prove one thin end-to-end value path using real service behavior and permission-safe fixtures
- Include AI, auth, payment, approval, data, or third-party integration here when it is the risk
- Deploy the skeleton to preview or staging and verify environment parity early
- Keep disposable spike code separate or deliberately promote it after review

### Phase 2+: Vertical Slices
- Group work by independently valuable actor outcome, not by frontend/backend labels alone
- Carry the minimum data, behavior, interface, permissions, telemetry, error/recovery behavior, and NFRs needed to verify the outcome
- Build payer, approval, billing, reimbursement, reporting, or administration slices when mapped by the PRD
- Allow multiple real dependencies and explicit parallel lanes; avoid simultaneous edits to the same unstable surface
- Integrate at meaningful convergence points

### Cross-Cutting Hardening
- Authorization and abuse controls
- Privacy, retention, deletion/export, and redacted observability
- Accessibility and responsive behavior
- Performance, reliability, rate limits, idempotency, and recovery
- Support, administration, analytics, cost controls, backups, and restore

Hardening is not a dumping ground for failures that could corrupt data, expose information, or prevent a slice from being verified. Those remain inside the relevant slice.

### Actor Acceptance and Integration
- Complete user, payer, approval, administrator, operator, and support journeys
- Verify acceptance criteria and NFRs with safe representative fixtures
- Run AI evaluation contracts and test-in-v1 exposure controls
- Confirm analytics, consent, evidence capture, and decision thresholds

### Production Release
- Promote the verified preview or staging artifact
- Set and verify production secrets without exposing them
- Run production-safe smoke tests, monitoring, rollback, domain, and backup checks
- Enable only authorised features and test cohorts
- Record release version and known limitations

---

## SECTION 4: BUILD SEQUENCE DOCUMENT TEMPLATE

Generated at the end of every Stage 8 session. Every session must be present and complete.

```markdown
# Build Sequence
## Stage 8 Output | USL Academy

**Product:** [Name]
**PRD:** `usl-build/7-prd.md`
**Build authority:** [authorised / authorised with test-in-v1 controls]
**Desirability rubric:** [Push / Pull + consequence for first value and continuation]
**Caps applied and status:** [none / not applicable / active / released / unknown + affected IDs and resolution condition]
**Technical level and execution mode:** [Code / Low-code / No-code + coding agent / manual / mixed / visual builder]
**Existing project:** [path and confirmed state / greenfield]
**Stack:** [Summary from PRD]
**Builder and maintenance owner:**
**Preview or staging target:**
**Production target:**
**Date:**

---

## 1. HOW TO USE THIS SEQUENCE

1. Pass the readiness audit before starting affected work.
2. Follow dependencies. Run only sessions listed as parallel; session numbers communicate grouping, not a universal serial order.
3. Use the execution procedure that matches the session mode. Do not paste manual steps into a coding agent and assume it has platform access.
4. Stop at a failed definition of done. Diagnose, restore the named checkpoint if needed, and re-verify before continuing.
5. Put new requirements in the backlog. Do not smuggle them into a session.
6. Never expose secrets or use sensitive production data as a default test fixture.

---

## 2. BUILD READINESS AUDIT

| Check | Evidence | Missing or conflicting IDs | Result |
|---|---|---|---|
| Build authority | | | pass / fail |
| Contract and blockers | | | |
| Requirement and AC completeness | | | |
| User, payer, approval, and permission completeness | | | |
| Test-in-v1 controls | | | |
| AI evaluation | | | |
| NFR verification | | | |
| Safe fixtures, environments, and recovery | | | |
| Traceability and open decisions | | | |

**Sequence status:** [Authorised for execution / Stop and correct PRD]

---

## 3. REQUIREMENT COVERAGE

| Requirement / NFR / flow / risk | Sessions | Verification gates | Coverage status |
|---|---|---|---|
| | | | complete / gap / conflict |

---

## 4. EXECUTION MAP

**Riskiest assumption or integration:**
**Walking-skeleton outcome:**
**Early preview milestone:**
**Test-in-v1 exposure boundary:**
**First-value and continuation behavior:** [How the Push/Pull orientation appears in the implemented and tested flow]

| Session | Outcome | IDs covered | Depends on | Can run in parallel with | Milestone | Checkpoint |
|---|---|---|---|---|---|---|
| | | | | | | |

---

## 5. SESSIONS

### Phase [N]: [Readiness / Risk spike / Vertical slice / Hardening / Actor acceptance / Production release]

### Session [N.N] — [Title]

**Single job:** [One verifiable outcome]
**Requirements covered:** [R-, NFR-, AC-, risk, and test-in-v1 IDs]
**Execution mode:** [CODING AGENT / MANUAL / MIXED / VISUAL BUILDER]

**Context to read:**
- `usl-build/7-prd.md`: [Sections and IDs]
- [Existing project files, prior artifacts, or platform state]: [Reason]

**Execution procedure:**
[Complete prompt or procedure from Section 1]

**Definition of done:**
- [ ] [Existence]
- [ ] [Correctness with safe representative fixture]
- [ ] [Applicable quality command, platform check, AC, and NFR]
- [ ] [Safety, permissions, privacy, migration, or recovery check]
- [ ] [Traceability and no-scope-creep check]
- [ ] [Appropriate commit, tag, snapshot, export, or recorded configuration checkpoint]

**Depends on:**
**Can run in parallel with:**
**Checkpoint and recovery:**

[Repeat for every session.]

---

## 6. PRODUCTION RELEASE GATE

- [ ] All dependency and actor-acceptance sessions pass
- [ ] Preview or staging artifact matches the production candidate
- [ ] Production secrets are present and not exposed
- [ ] Automated or platform quality checks pass
- [ ] User and payer smoke paths pass with production-safe fixtures
- [ ] Test-in-v1 exposure and rollback controls are active
- [ ] Monitoring, alerting, backup, restore, and rollback checks pass as applicable
- [ ] Release version and known limitations recorded

---

## 7. RECOVERY PROTOCOL

When a session fails: stop dependent sessions, preserve diagnostics without sensitive data, compare against the last verified checkpoint, choose repair or restore, record the decision, and re-run the failed definition of done. Never hide a failure by weakening the criterion.

---

## 8. TEST-IN-V1 DECISION LOG

| Requirement | Exposure | Metric and thresholds | Result | Decision | PRD or offer revision needed |
|---|---|---|---|---|---|
| | | | | | |

---

## 9. BACKLOG AND DECISION LOG

| Item | Type | Source | Reason outside current session | Decision owner | Affected IDs |
|---|---|---|---|---|---|
| | backlog / deviation / blocked change | | | | |

---

## 10. TOOLING CURRENCY AND SOURCES

| Service / step | What was verified | Source URL | Date checked |
|---|---|---|---|
| | | | |

[If none: "No live research run this session." List setup or deploy assumptions still needing verification.]
```

---

## SECTION 5: COMPACT SEQUENCING EXAMPLE

Examples calibrate dependency decisions, not tools, prices, versions, or copy.

**Situation:** A product serves employees, but an employer budget owner approves purchase. Its highest-risk dependency is whether role-based access can expose aggregate team reporting without exposing an individual's private notes. An AI summary is part of the first value moment and is marked `test-in-v1`.

**Useful execution map:**

| Session | Outcome | Why now | Depends on | Parallel with |
|---|---|---|---|---|
| 0.1 | Safe fixtures, test actors, preview environment, and recovery checkpoint exist | Nothing should be tested with production identity or data | None | None |
| 1.1 | Walking skeleton proves employee sign-in, private note storage, aggregate-only payer view, and preview deployment | Authorization is the architecture-killing risk | 0.1 | None |
| 1.2 | AI contract passes its safe evaluation set behind a test cohort flag | AI is core value and uncertain, so it is proved early rather than deferred | 0.1 | None |
| 2.1 | Employee completes the first-value flow with recovery and telemetry | First vertical user slice | 1.1, 1.2 | 2.2 after shared interfaces freeze |
| 2.2 | Payer invites a cohort and sees only authorised aggregate reporting | Distinct payer proposition and permission boundary | 1.1 | 2.1 after shared interfaces freeze |
| 3.1 | User and payer slices pass an integration checkpoint | Two branches converge and permission leakage must be retested | 2.1, 2.2 | None |
| 4.1 | Cross-cutting accessibility, reliability, privacy, cost, backup, and support gates pass | Hardens verified slices without postponing integrity failures | 3.1 | Named non-overlapping audits |
| 5.1 | Production promotion and rollback smoke test pass | Production is a promotion of a known preview artifact | 4.1 | None |

What this example demonstrates:

- A session may have multiple real dependencies.
- AI moves early when it is both core and risky.
- User and payer paths remain distinct and converge at an explicit integration gate.
- Preview deployment occurs before broad implementation; production remains last.
- Parallelism begins only after shared schemas and permission boundaries are stable.
- Safe fixtures, redacted observability, and a recoverable checkpoint are part of the build, not administrative afterthoughts.
