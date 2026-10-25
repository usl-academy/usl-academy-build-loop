# Stage 7: PRD Generator
## Knowledge File: Standards, Architecture Templates, PRD Template, and Examples

---

## SECTION 0: LIVE RESEARCH PROTOCOL

This is the tooling-currency flavor of the protocol. The risk in a PRD is not a weak market read but a stale one: frameworks, service tiers, and AI models change faster than model training data, and a PRD that names a retired version or model reaches the actual build. Wherever a step is marked **[Live research available]**, follow this protocol.

**1. Offer, do not impose.** Ask before researching, then proceed on a yes. Phrase it as a quick, optional check: "Before I name the stack, I can verify these tools and versions are still current. Want me to?" If the user declines, proceed on existing knowledge and mark anything it affected as "Unverified: based on model knowledge, not a live check." If the user says to always research, stop asking and run research automatically at each marked point for the rest of the session.

**2. Use whatever web capability is available.** Use your built-in web search and fetch, or an installed search tool if the environment has one (for example Firecrawl, Exa, or Jina). Do not depend on any single tool. If no web capability is available at all, say so once, proceed on model knowledge, and flag the affected outputs as "Unverified." Never block the interview waiting on a tool.

**3. Search narrow.** Build 2 to 4 targeted queries from what you already know: the named tool, the current year, and the use case. Specific queries beat broad ones. Run one round, then synthesize. If a step has several research needs, batch them into one pass rather than asking the user repeatedly.

**4. Synthesize, then confirm with the user.** Report findings as a short, cited list. Each claim gets a source and a date. Then ask the user to confirm before the findings change the PRD. Flag any source older than about twelve months as possibly stale. Findings are evidence the user reacts to, not conclusions you impose.

**5. Record evidence in the PRD.** Put confirmed findings in the PRD's "Tooling Currency and Sources" section, one line each: what was verified, the source URL, and the date checked (use today's date). Mark each verified architecture line "verified <date>." Stage 8 reads this and reuses it instead of re-checking the same ground.

**6. Stay honest.** Distinguish what you verified against a source from what you inferred. Never present an unverified version number or price as current. Live research raises confidence; it does not replace the user's own knowledge of their stack.

### Research scope for this skill

Two marked points:

**Section 8 (Technical Architecture and Data).** Before naming the stack, offer to verify that the tools, their current major versions, third-party service pricing and limits, and deployment options are still current and still the right call.
- Example queries: "[framework] latest version"; "[service] pricing [current year]"; "[service A] vs [service B] [current year]"; "[service] free tier limits".
- Special case for AI models: do not guess model names, context windows, or pricing. Use the provider's official current documentation and an authoritative product skill when one is available.
- Feeds: the stack summary, the external services and APIs table, and the deployment approach. Mark each verified line "verified <date>."

**Section 6 (AI behavior and evaluation, lighter).** When writing prompts and the evaluation contract for AI features, optionally check that prompt patterns, structured-output assumptions, and provider behavior fit current documentation.
- Example queries: "[model] prompt engineering"; "[model] structured output".
- Feeds: the written prompts in the feature specifications.

If a tool, version, or model has changed since model knowledge was frozen, flag it and update the PRD before moving on.

---

## SECTION 1: PRD QUALITY STANDARDS

A PRD from this skill must meet every criterion below before it is delivered. These are not suggestions. They are the minimum bar for a document that can actually drive a build.

| Criterion | What it means |
|---|---|
| Concrete, not aspirational | Every section describes what will be built, not what would be nice someday. "The system should be scalable" is a failure. "The app runs on Vercel with no custom infrastructure required in v1" is a pass. |
| Build authority explicit | Every material requirement is `confirmed-build`, `test-in-v1`, `contract-required`, `blocked`, `deferred`, or `excluded`. Only the first two enter executable v1 scope. |
| Provenance retained | Requirement source, evidence class, confidence, Desirability orientation, cap status, and resolution condition survive from upstream packets without silent upgrades. |
| Actors remain distinct | User, payer, approver, budget owner, administrator, and operator are explicitly the same or have separate propositions, flows, permissions, and success conditions. |
| Specific tools named | Stack decisions use product names, not categories. "Bubble" not "a no-code platform." "Supabase" not "a database." Use a current verified model ID rather than "an AI model." |
| Output schema defined | If the product produces outputs (a summary, a report, a score, a recommendation), the PRD defines exactly what those outputs look like. Field names, formats, and order. |
| Scope boundary explicit | A clear v1 vs v2 list and an explicitly excluded list. Without this, scope creep is guaranteed. |
| AI prompts written | If the product uses AI, the actual prompts are in the PRD. Not descriptions of what prompts should do. The prompts themselves, written and ready to test. |
| AI behavior evaluated | AI features include representative safe fixtures, a scoring rubric, thresholds, unacceptable failures, safety and privacy controls, fallback behavior, and prompt versioning. |
| Acceptance criteria testable | Every feature has acceptance criteria written as specific, checkable conditions. "Works correctly" is not acceptance criteria. "A user can paste a 2,000 word transcript and receive a structured summary in under 30 seconds" is. |
| Non-functional requirements testable | Security, privacy, permissions, accessibility, performance, reliability, observability, support, analytics, cost, compliance, portability, and recovery are measurable or explicitly not applicable. |
| Traceability complete | Every authorised requirement maps from upstream source and actor outcome through acceptance criteria, risk, and verification. |
| Brand decisions resolved | Colors, fonts, and component styles are named as specific decisions. No references to "see the brand document." Everything a builder needs is in this document. |
| Engineer-ready | A human engineer who has never spoken to the user could read this PRD and know what to build, what tools to use, and what done looks like. |

---

## SECTION 2: TECHNICAL ARCHITECTURE TEMPLATES

Three templates, one per technical level. Every architecture section must follow the template that matches the user's stated level. Adapt the specific tools to the product being built. Do not use placeholders. Name real tools.

---

### NO-CODE ARCHITECTURE TEMPLATE

**Recommended stack:**
Name the primary no-code platform and why it fits this product specifically.

Common no-code platform selection guide:
- Bubble: best for web apps with complex logic, user accounts, and database needs
- Webflow: best for content-heavy or marketing-forward products with CMS needs
- Glide: best for mobile-first apps built from spreadsheet data
- Softr: best for simple client portals or internal tools built on Airtable or Google Sheets
- Framer: best for landing pages and simple interactive sites
- Notion + Super: best for documentation products or simple internal wikis

**Data layer:**
Name where data lives. Options: Airtable, Google Sheets, Notion database, Bubble's built-in database, Supabase (accessible via no-code integrations).

**Integrations:**
Name every third-party service required. For each: what it does, how it connects (native integration, Zapier, Make, or API), and what triggers it.

**AI integration (if applicable):**
Name the AI service. OpenAI, Anthropic, or other. Name how it connects: native plugin, Zapier AI step, Make module, or API call via a tool like Xano or Bubble's API connector. Document the input sent to the AI and the output received.

**Authentication:**
Name the current selected method. Define sign-in, recovery, and the privacy or role rules that keep each user, payer, approver, administrator, or operator inside their authorised data and actions. Name how those rules are tested in the platform.

**Deployment and hosting:**
No-code platforms host by default. Name the custom domain setup required and any performance considerations.

**Handoff readiness:**
No-code builds can be handed to developers via API access or database export. Document what a developer would need to know to extend this build, including which platform is used and where the data lives.

---

### LOW-CODE ARCHITECTURE TEMPLATE

**Recommended stack:**
Name the primary platform and any supporting tools. Common low-code combinations:
- Retool + Supabase: for internal tools and dashboards
- Xano + WeWeb: for custom frontends with a managed backend
- Supabase + Next.js (minimal custom code): for products needing real-time data and auth
- Airtable + Stacker or Softr: for slightly more complex portals than pure no-code allows

**Backend:**
Name the backend service or database. Supabase, Xano, Firebase, PocketBase. Include: what tables or collections are needed, what the primary relationships are, and how data is read and written.

**Frontend:**
Name the frontend tool or framework. Include: how it connects to the backend, how authentication and role-based authorization are handled, which user or payer states exist, and where state lives.

**AI integration (if applicable):**
Name the model and provider. Document the API call: endpoint, authentication method, request structure, response handling, and error handling. Write the actual prompt used in each AI-powered feature.

**Automation layer (if applicable):**
Name any workflow automation needed. Make, Zapier, or n8n. Document each automation: trigger, steps, and output.

**Deployment:**
Name the hosting approach. Vercel for frontend, Supabase cloud for backend, or other. Include environment variable management and deployment process.

**Handoff readiness:**
Document the architecture clearly enough that a developer could fork the project and continue. Include: how to set up the dev environment, where credentials are stored, and which services require paid accounts.

---

### CODE ARCHITECTURE TEMPLATE

**Recommended stack:**
Name the full stack with specific versions where relevant.

Common stack patterns for v1 products, to be verified against current official documentation before use:
- A current full-stack React framework + TypeScript + managed relational data/auth + managed hosting: useful for many web products
- A current web framework + typed ORM + managed PostgreSQL + managed hosting: useful when the domain model is complex
- A separate frontend and API + managed database: useful when team capability or integration boundaries justify the separation
- A type-safe end-to-end stack: useful when one team owns client and server and the additional conventions reduce rather than add complexity

Patterns are selection aids, not recommendations. Never copy a version, provider, or stack from this list without checking product needs and current support.

**Frontend:**
Framework, styling approach, component library if applicable, state management approach, and routing strategy.

**Backend:**
API approach (REST, tRPC, or GraphQL), database and ORM, data model with key tables and relationships, and background job handling if needed.

**AI integration (if applicable):**
SDK or API client, model name and version, how the prompt is constructed (static, dynamic, or RAG), streaming vs synchronous response, token limits and chunking strategy if handling long inputs, and error handling. Include the actual system prompt and user prompt template for each AI feature.

**Authentication:**
Name the selected authentication system and include session management, account recovery, and role-based authorization. Authentication proves identity; authorization controls what each user, payer, approver, administrator, or operator can see and do.

**File handling (if applicable):**
Upload provider (Uploadthing, Supabase Storage, S3), file size limits, and accepted formats.

**Environment variables:**
List every environment variable required. Name each one and describe what it is. This is a pre-build checklist item.

**Deployment:**
Frontend host, backend host if separate, database host, CI/CD approach, and environment promotion (dev to staging to production).

**Data lifecycle and recovery:**
Define collection, validation, ownership, retention, deletion or export, backup, restore, and migration behavior. Name sensitive fields and the actors permitted to access them.

**Handoff readiness:**
README requirements: setup instructions, environment variable list, architecture overview, and how to run tests. A developer unfamiliar with the project should be able to run it locally in under 30 minutes from the README alone.

---

## SECTION 2A: BUILD-AUTHORITY AND REQUIREMENT SCHEMAS

### Build-authority reconciliation

Use one row for every material Stage 2 capability, Stage 4 promise, Stage 6 product-relevant conversion requirement, enabling requirement, and unresolved dependency. Preserve stable IDs after confirmation.

| ID | Requirement or obligation | Source | Actor outcome | Evidence and confidence | Cap status | Authority | Resolution, measurement, or reason |
|---|---|---|---|---|---|---|---|
| R-001 | | Stage 2 / Stage 4 / Stage 5 / Stage 6 / intake | | | | confirmed-build / test-in-v1 / contract-required / blocked / deferred / excluded | |

Authority rules:

- `confirmed-build`: authorised v1 work with sufficient support for its consequence.
- `test-in-v1`: intentionally uncertain work. It requires a named assumption, instrumented behavior, thresholds, containment, and a decision after the result.
- `contract-required`: Stage 4 promises it but Stage 2 did not authorise it, or the two describe incompatible delivery. The user must alter scope, delivery, or offer before build.
- `blocked`: implementation cannot responsibly begin until the named legal, safety, security, privacy, dependency, actor, or decision condition is resolved.
- `deferred`: considered later only when its named trigger occurs.
- `excluded`: deliberately not part of the product, with reason.

### Functional requirement

Every authorised capability uses:

```markdown
### R-[ID]: [Working label]
**Authority:** [confirmed-build / test-in-v1]
**Source and evidence:** [packet section, evidence class, confidence, cap consequence]
**Actor and required outcome:**
**Inputs and validation:**
**Output schema or state change:**
**Business rules:**
**Permissions and sensitive data:**
**Dependencies:**
**Telemetry:** [events, properties, privacy limits]
**Rollback, disable, or manual fallback:**
**Acceptance criteria:**
- [ ] AC-R[ID]-01: [specific observable condition + verification method]
**Edge and abuse cases:**
- [condition and expected behavior]
```

### Non-functional requirement

For each category, write a measurable requirement, verification method, and owner, or `Not applicable: [reason]`:

| Category | Questions the PRD must answer |
|---|---|
| Security and authorization | Who can do what, how abuse is limited, how secrets are handled, and how authorization is tested |
| Privacy and data lifecycle | What is collected, lawful or user-approved purpose, retention, deletion/export, redaction, and access |
| Accessibility | Applicable conformance target, keyboard and assistive behavior, contrast, motion, errors, and test method |
| Performance and reliability | Meaningful response-time or throughput target, availability expectation, timeout, retry, idempotency, and degradation |
| Observability and support | Logs, metrics, alerts, audit events, redaction, runbook, and support ownership |
| Analytics and experimentation | Events, properties, consent, success/failure thresholds, exposure and cohort logic |
| Cost and capacity | Usage assumption, cost ceiling, rate-limit behavior, and alert threshold |
| Compliance and safety | Applicable review, consent, regulated boundary, escalation, and prohibited behavior |
| Portability and recovery | Backup, restore, export, migration, rollback, and recovery test |

### AI evaluation contract

An AI feature is incomplete until all fields below exist:

- Exact prompts and variable contract
- Structured output schema and validation behavior
- Model controls such as temperature or tool permissions where supported and relevant
- Representative, permission-safe evaluation fixtures including ordinary, edge, adversarial, and refusal cases
- Scoring rubric with pass threshold and unacceptable-failure threshold
- Prompt injection, data disclosure, harmful output, and unsupported-claim controls proportional to the use case
- Human review or escalation rule when the consequence warrants it
- Timeout, malformed-output, provider-failure, and budget fallback
- Redacted observability; raw sensitive inputs and outputs are not logged by default
- Latency and cost bounds
- Prompt, schema, model, and evaluation-set versioning with a re-evaluation trigger

---

## SECTION 3: PRD DOCUMENT TEMPLATE

This is the complete document template generated at the end of every Stage 7 session. Every section must be completed. Do not leave placeholders. If something is genuinely not yet determined, write "TBD: [what needs to happen to resolve this]" and flag it as a blocker.

---

```markdown
# Product Requirements Document
## Stage 7 Output | USL Academy

**Product Name:** [Name]
**Version:** 1.0
**Date:** [Date]
**Prepared by:** [User name or "USL Academy User"]
**Technical Level:** [No-code / Low-code / Code]
**Builder:** [Solo with AI tools / Small team / Developer or agency]
**Stage 2 Route:** [value-first / value-first after passed experiment / standalone intake]
**Build Decision:** [Build authorised / Build authorised with test-in-v1 controls / Not authorised]
**Evidence Posture:** [Observed, researched, user belief, and unknown summary]
**Desirability rubric:** [Push / Pull + effect on value and continuation]
**Caps applied and status:** [none / not applicable / active / released / unknown + affected dimension and resolution condition]

---

## 1. PRODUCT OVERVIEW AND BUILD AUTHORITY

**What it is:** [One sentence: what the product does and who it is for]

**Problem it solves:** [From confirmed problem statement]

**Primary outcome:** [What the user gets or achieves after using it]

**Version scope:** This document describes v1 only. See Section 10 for deferred and excluded scope.

### Build-Authority Reconciliation

| ID | Requirement or obligation | Source | Actor outcome | Evidence and confidence | Cap status | Authority | Resolution, measurement, or reason |
|---|---|---|---|---|---|---|---|
| R-001 | | | | | | | |

**Contract conflicts resolved:** [Stage 2 scope versus Stage 4 promise versus Stage 6 page expectation]
**Remaining build blockers:** [None / list. If any remain, Build Decision must be Not authorised.]

---

## 2. ACTORS, USERS, PAYERS, AND PERMISSIONS

State explicitly when two roles are the same. Add rows only for material actors.

| Actor | Role and trigger | Proposition or accountable outcome | Required proof or information | Allowed actions | Sensitive data visible | Success |
|---|---|---|---|---|---|---|
| User | | | | | | |
| Payer or approver | [same as user / separate] | | | | | |
| Budget owner | [same as payer / separate] | | | | | |
| Administrator or operator | [if applicable] | | | | | |

**Approval dependency:** [none / procurement, manager, parent, insurer, partner, clinician, or other]
**Role conflicts and safeguards:** [How different incentives, privacy, consent, and access are handled]

---

## 3. SUCCESS, LEARNING, AND MEASUREMENT

| ID | Criterion or assumption | Baseline | Target and time/sample | Event or data source | Owner | Failure or inconclusive threshold | Decision controlled |
|---|---|---|---|---|---|---|---|
| SC-01 | | | | | | | |

**Highest-risk assumption:** [From Stage 2]
**Continuation signal:** [Return, renewal, adoption, referral, completion, or honest no-repeat ending]
**Test-in-v1 exposure and containment:** [Who sees uncertain behavior, how it is flagged or disabled, and what happens after the result]

---

## 4. USER, PAYER, APPROVAL, AND OPERATING FLOWS

| Step | Actor | Trigger or input | Actor action | System behavior | Data or state change | Decision | Failure and recovery | Next state |
|---|---|---|---|---|---|---|---|---|
| | | | | | | | | |

**Core value moment:** [Step and evidence]
**Payer or approval decision:** [Step / same as user / no payment decision]
**Consent, purchase, reimbursement, renewal, cancellation, and handoff:** [Applicable flows or explicit N/A]
**Honest ending:** [Return / repeat / referral / renewal / completion / no repeat]

---

## 5. FUNCTIONAL REQUIREMENTS AND ACCEPTANCE CRITERIA

### R-[ID]: [Working label]

**Authority:** [confirmed-build / test-in-v1]
**Source and evidence:** [packet section, evidence class, confidence, cap consequence]
**Actor and required outcome:**
**Inputs and validation:**
**Output schema or state change:**
**Business rules:**
**Permissions and sensitive data:**
**Dependencies:**
**Telemetry:** [events, properties, privacy limits]
**Rollback, disable, or manual fallback:**
**Acceptance criteria:**
- [ ] AC-R[ID]-01: [observable condition + verification method]
**Edge and abuse cases:**
- [condition and expected behavior]

[Repeat for every confirmed-build and test-in-v1 requirement. Keep other authority statuses in Sections 1 and 10 only.]

---

## 6. AI BEHAVIOR AND EVALUATION (IF APPLICABLE)

For each AI-powered requirement, document the complete prompt and evaluation contract. If no AI behavior exists, write `Not applicable: no AI-generated or AI-mediated product behavior in v1.`

**Feature: [Name]**
**Requirement ID:** [R-ID]
**Prompt, schema, model, and evaluation version:** [version identifiers]

System prompt:
```
[Full system prompt text]
```

User prompt template:
```
[Full user prompt with variables marked as {variable_name}]
```

Expected output format:
[Exact structured schema, validation behavior, and handling of extra or missing fields]

**Model controls and tool permissions:** [Relevant settings and allowed operations]
**Evaluation fixtures:** [Permission-safe ordinary, edge, adversarial, injection, and refusal cases]
**Scoring rubric:** [Dimensions and scoring method]
**Pass threshold:** [Threshold before exposure]
**Unacceptable failures:** [Any single failure that blocks release]
**Human review or escalation:** [Rule or explicit N/A]
**Privacy and injection controls:** [Sensitive-data handling, retrieval boundary, instruction hierarchy]
**Error and fallback behavior:** [Timeout, malformed output, provider failure, budget/rate limit]
**Observability:** [Redacted logs, metrics, and prohibited raw logging]
**Latency and cost bounds:** [Per operation or usage assumption]
**Change policy:** [What triggers re-evaluation]

---

## 7. BRAND, CONTENT, AND INTERACTION SPECIFICATIONS

### Color System

| Token | Value | Usage |
|---|---|---|
| Primary | [hex] | Primary buttons, key actions, links |
| Secondary / Accent | [hex] | Supporting elements, highlights |
| Background | [hex] | Page and section backgrounds |
| Surface | [hex] | Cards, modals, input backgrounds |
| Text primary | [hex] | Headlines and body text |
| Text secondary | [hex] | Supporting text, labels, captions |
| Border | [hex] | Dividers, input borders, card borders |
| Error | [hex] | Error states and destructive actions |
| Success | [hex] | Confirmation and success states |

### Typography

| Style | Font | Weight | Size | Usage |
|---|---|---|---|---|
| Display | [font name] | [weight] | [size] | Hero headlines |
| Heading | [font name] | [weight] | [size] | Section headlines |
| Subheading | [font name] | [weight] | [size] | Card titles, sub-sections |
| Body | [font name] | [weight] | [size] | Paragraph text |
| Label | [font name] | [weight] | [size] | UI labels, tags, captions |
| CTA | [font name] | [weight] | [size] | Button text |

### Logo Usage

**Format to use:** [SVG preferred / PNG acceptable]
**Minimum size:** [pixels or points]
**Clear space:** [minimum clear space rule]
**On dark backgrounds:** [direction]
**Never:** [what must never be done with the logo]

### Component Style

**Buttons:** [border radius, padding, style description]
**Cards:** [border radius, shadow, border style]
**Inputs:** [border style, focus state, label position]
**Border radius system:** [values used across components]

### Imagery Direction

**What belongs:** [description of appropriate images]
**What never appears:** [description of excluded image types]

### UI Copy Tone

**Voice in three words:** [from brand foundation]
**Error messages:** [how errors are written — example: "That didn't work. Try again." not "Error 404"]
**Empty states:** [how empty or zero-state screens are written]
**CTAs:** [pattern for action-oriented button text]
**Onboarding text:** [tone for first-time user instructions]
**Payer and approval copy:** [Same voice with the payer's accountable outcome, proof vocabulary, and risk language when payer differs]
**Consent, privacy, destructive, and irreversible actions:** [Exact tone and confirmation behavior]
**Responsive and interaction states:** [Loading, disabled, success, error, empty, focus, and reduced-motion behavior]

---

## 8. TECHNICAL ARCHITECTURE AND DATA

[Use the appropriate template from Section 2 of the knowledge file. Every tool named specifically. No category descriptions.]

**Stack summary:**
[One paragraph naming every major component and how they connect]

**Data model:**
[Key entities and their relationships]

**External services and APIs:**
| Service | Purpose | How connected | Credentials needed |
|---|---|---|---|
| | | | |

**Environment variables required:**
| Variable | Description |
|---|---|
| | |

**Deployment approach:**
[Specific hosting services, domains, and promotion process]

**Authorization matrix:**
| Actor | Resource or action | Read | Create | Update | Delete / approve | Enforcement and test |
|---|---|---|---|---|---|---|
| | | | | | | |

**Data lifecycle:**
[Collection, validation, ownership, sensitive fields, retention, deletion/export, backup, restore, and migrations]

**Environments and recovery:**
[Local/no-code workspace, preview or staging, production, promotion, rollback, backup and restore test]

---

## 9. NON-FUNCTIONAL AND OPERATING REQUIREMENTS

| ID | Category | Requirement or N/A reason | Measure or threshold | Verification method | Owner | Related requirement or risk |
|---|---|---|---|---|---|---|
| NFR-01 | Security and authorization | | | | | |
| NFR-02 | Privacy and data lifecycle | | | | | |
| NFR-03 | Accessibility | | | | | |
| NFR-04 | Performance and reliability | | | | | |
| NFR-05 | Observability and support | | | | | |
| NFR-06 | Analytics and experimentation | | | | | |
| NFR-07 | Cost and capacity | | | | | |
| NFR-08 | Compliance and safety | | | | | |
| NFR-09 | Portability and recovery | | | | | |

---

## 10. SCOPE BOUNDARY AND RELEASE CONTROL

### Confirmed Build

[Requirement IDs with one-line scope.]

### Test in V1

| Requirement | Assumption | Exposure or feature flag | Instrumentation and thresholds | Rollback or disable | Decision after result |
|---|---|---|---|---|---|
| | | | | | |

### V2: Build Next

[Drawn from Stage 2 future scope list. For each item: what it is and what must be true in v1 before it makes sense to build.]

| Feature | What it is | V1 prerequisite |
|---|---|---|
| | | |

### Explicitly Excluded

[Items that were discussed and ruled out entirely. Not deferred. Removed from consideration.]

### Contract Revisions

[Any Stage 4 promise or Stage 6 expectation changed to make the authorised product deliverable, plus who confirmed it and what downstream artifact needs revision.]

---

## 11. RISKS, ASSUMPTIONS, AND OPEN DECISIONS

### Risks

| Risk or assumption | Evidence and confidence | Cap status | What happens if it materialises | Mitigation | Owner | Trigger | Requirement IDs |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

### Open Questions

[Questions that must be answered before or during the build. Each is a decision, not a risk.]

| # | Decision | Who decides | Needed before | Blocks build? | Affected IDs |
|---|---|---|---|---|---|
| | | | | | |

---

## 12. IMPLEMENTATION, TRACEABILITY, AND HANDOFF

### Recommended Build Order

[Numbered sequence of what to build first with one sentence of reasoning for each.]

1.
2.
3.

**Principle:** Prove the riskiest end-to-end value path early, then expand through independently verifiable vertical slices. Establish only the foundation each slice needs. Use preview or staging before production.

### Pre-Build Checklist

Complete every item before opening a build tool or writing a line of code.

| Item | Done |
|---|---|
| All accounts created (list each service) | [ ] |
| All API keys obtained and stored securely | [ ] |
| Brand assets downloaded (logo files, fonts) | [ ] |
| Version control repository created | [ ] |
| Development environment set up and tested | [ ] |
| Permission-safe representative fixtures collected, with edge and adversarial cases where relevant | [ ] |
| Every contract-required and blocked row resolved | [ ] |
| Every remaining open decision marked non-blocking with its latest-needed point | [ ] |
| Preview or staging environment and rollback path identified | [ ] |

### Testing Approach

For each major component, describe how to verify it works before building on top of it:

[Requirement or NFR ID]: [Automated check, safe fixture, manual inspection, actor, and expected result]
[Requirement or NFR ID]: [How failure and recovery are verified]
[AI pipeline if applicable]: Run the Section 6 evaluation set before connecting the UI. Use permission-safe representative fixtures by default; use real customer data only with a legitimate purpose, appropriate permission, and required safeguards.

### Environment and Release Approach

**Local or builder workspace:** [setup and safe seed data]
**Preview or staging:** [early deployment point, environment parity, test actors]
**Production:** [promotion, smoke test, monitoring, rollback]
**Feature flags or containment:** [test-in-v1 controls]

### Version Control

[No-code: describe how to document and back up the project]
[Low-code / Code: branch strategy, commit frequency, and push cadence]

**Rule:** Save or commit after every verified session. Never rely on a single current state.

For no-code tools, replace commits with named recoverable versions, exports, or snapshots and record the equivalent checkpoint.

### Traceability Matrix

| Requirement or NFR ID | Upstream source | Actor outcome | Acceptance criteria | Risk or cap | Verification | Anticipated build phase |
|---|---|---|---|---|---|---|
| | | | | | | |

Every `confirmed-build` and `test-in-v1` requirement and every applicable NFR must appear exactly once as a primary row. Cross-cutting tests may reference multiple rows.

### Handoff Readiness

If this product needs to be handed to a developer or agency at any point, they will need:

- This PRD document
- Access to the version control repository or project export
- All environment variables and credentials (transferred securely, never in this document)
- [Any additional context specific to this product]

A developer should be able to understand what was built, why decisions were made, and how to continue from the current state without a handoff call.

---

## APPENDIX A. TOOLING CURRENCY AND SOURCES

Tools, versions, service tiers, and AI models named in this PRD that were verified against current sources during this session. A builder picking this up later can see what was checked and when. If no live research was run, write "No live research run this session" and treat every version and price above as needing a quick check before the build.

| Tool / service / model | What was verified | Source URL | Date checked |
|---|---|---|---|
| | | | |
| | | | |

**Not verified (check before building):**
[Any tool, version, price, or model named in Section 8 that was not checked against a live source. If none, write "None."]
```

---

## SECTION 4: PRD QUALITY CHECKLIST

Run this check before delivering the PRD. Every item must pass.

- [ ] Every material upstream item has a stable ID, source, evidence confidence, cap status, and build-authority status
- [ ] No contract-required or blocked row remains while the Build Decision says authorised
- [ ] User, payer, approver, budget owner, administrator, and operator are explicitly the same or separately defined
- [ ] Success and learning criteria include baselines, targets, time or sample, instrumentation, thresholds, and controlled decisions
- [ ] User, payer, approval, and operating flows cover failure, recovery, consent, payment, and continuation where applicable
- [ ] Every authorised requirement has actor outcome, inputs, output schema or state, rules, permissions, telemetry, acceptance criteria, edge/abuse cases, and fallback
- [ ] AI prompts are written in full and every AI feature has an evaluation contract; raw sensitive logging is prohibited by default
- [ ] Brand decisions are resolved as specific hex values, font names, and component rules
- [ ] Technical architecture names specific verified or explicitly unverified tools, data lifecycle, authorization, environments, and recovery
- [ ] Environment variables are listed by name
- [ ] Every non-functional category is measurable or explicitly not applicable with a reason
- [ ] Confirmed-build and test-in-v1 scope are separate; uncertain work has containment and a decision rule
- [ ] V2 scope is drawn from the Stage 2 future scope list
- [ ] Explicitly excluded items are listed
- [ ] Every risk carries evidence/confidence, consequence, mitigation, owner, trigger, and affected IDs
- [ ] Pre-build checklist is specific to this product (not generic)
- [ ] Traceability covers every authorised requirement and applicable NFR from source through verification
- [ ] Handoff section is complete enough that a developer could read it cold

---

## SECTION 5: WORKED EXAMPLE (SUMMARY)

**Product:** Groundwork Progress Tracker
**Technical level:** No-code (Bubble)
**Builder:** Solo in Bubble, using AI assistance for planning and copyable configuration guidance
**AI-powered:** Yes, generates weekly reflection summaries

**Stack:** Bubble (frontend and database), Anthropic API via Bubble's API connector (AI summaries), Memberstack (authentication), Airtable (cohort management data), Zapier (enrollment trigger from payment processor to Bubble).

**Key PRD decisions illustrated:**

AI prompt (weekly reflection summary feature):
System prompt: "You are a professional development coach reviewing a weekly check-in from a cohort participant. Your job is to produce a concise, warm, and specific summary that acknowledges what they did, names one pattern you notice, and offers one practical suggestion for next week. Write in second person. Maximum 150 words."

User prompt template: "Participant name: {name}. Week: {week_number} of 6. This week they reported: Actions completed: {actions_completed}. Biggest win: {biggest_win}. Biggest challenge: {biggest_challenge}. Confidence score (1-10): {confidence_score}. Produce the weekly summary."

Color system: Primary #2D3142 (deep navy), Accent #E8A838 (amber), Background #F9F7F4 (warm off-white), Text #1A1A2E, Border #E0DDD8.

V1 scope: Participant dashboard, weekly check-in form, AI summary generation, cohort facilitator view.

V2 scope (from Stage 2 future scope): Alumni network (requires 2 completed cohorts of data first), mobile app (requires stable web app with proven retention first), peer feedback tool (requires trust established in cohort first).
