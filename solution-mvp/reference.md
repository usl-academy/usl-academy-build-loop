# Stage 2: Solution and MVP
## Decision Rules, Route Guides, and Transfer Packet

---

## SECTION 0: LIVE RESEARCH PROTOCOL

Research supports a scope decision; it does not make the decision. Current category norms, historical launch scope, and observed user behavior are different evidence and must never be blended.

### Operating rules

1. **Offer one batched pass.** After the orientation is proposed, ask once whether the user wants a current evidence check. Batch the questions that could change the route or scope.
2. **Start with inherited evidence.** Reuse Stage 1 and buyer-conversation sources. Do not repeat a search merely to produce a fresher-looking citation.
3. **Prefer primary evidence.** Current product documentation, pricing pages, terms, regulatory sources, public changelogs, archived launch announcements, and first-party onboarding material outrank listicles and summaries.
4. **Name what a source can prove.** A current feature page can establish a current category norm. It cannot establish what the company launched with. A dated launch post or archived page can support a historical launch claim.
5. **Separate signal from instruction.** Competitors reveal expectations and alternatives. They do not determine this solution's MVP.
6. **Confirm before changing scope.** Return a short list of findings, limitations, and the proposed effect. The user confirms or corrects it before it enters the packet.
7. **Record provenance.** Each retained finding includes the source URL, date checked, whether it is inherited or new, and what decision it changed.

### Research by route

**Validation-first:** research only what sharpens the test: whether the behavior has already been observed, what commitment is credible in the category, legal or safety limits on the test, and whether a cheaper test already exists.

**Value-first:** research current category expectations, enabling requirements, relevant onboarding or delivery patterns, and any legal, safety, privacy, accessibility, or platform dependency that could make the proposed release incomplete.

Avoid broad “best tools” searches unless they are needed to discover named comparables. Narrow queries around the persona, action, category, geography, and constraint.

---

## SECTION 1: EVIDENCE CONTRACT AND ORIENTATION ROUTER

### 1.1 Evidence contract

Stage 2 preserves the following Stage 1 fields. If an older packet lacks one, write `Unknown: upstream schema did not contain this field` and ask only when the answer changes the Stage 2 route.

- User persona and persona confidence.
- Payer persona, payer proposition, payer confidence, budget owner, and approval dependency.
- Problem statement, problem source, payer-side problem source, and problem confidence.
- Desirability rubric used, caps applied, and BBM score, confidence, reasoning, and resolution condition for every `?` or Low-confidence value.
- Flag and biggest risk.
- Founder-observed evidence, live-research status, buyer-conversation count, separate feeler and payer counts when recorded, sample, status, and last revision date.
- UVP, UVP confidence, and alternatives.
- Constraints, regulatory or safety dependencies, and open questions.
- Latest Validation Revisions entry and whether Stage 2 was named for review.

Use four evidence classes throughout:

| Class | Meaning | Permitted use |
|---|---|---|
| Observed | Direct behavior, actual delivery, transaction, artifact, or verbatim buyer evidence | Can support a confident scope decision within the observed sample |
| Researched | A checkable external source | Can establish market, regulatory, technical, or category facts within the source's limits |
| User belief | The user's reasoned judgment or estimate | Can seed a hypothesis but cannot silently become a fact |
| Unknown | No honest answer yet | Must carry what would resolve it |

Do not average confidence. One high-confidence fact does not upgrade an unrelated assumption.

### 1.2 Cap and Desirability-orientation router

**Classify every cap before routing:**

| Status | Meaning | Stage 2 consequence |
|---|---|---|
| None / not applicable | Upstream explicitly records no cap, or this is a legitimate standalone intake with no Stage 1 cap contract | Route on the evidence established in this session normally |
| Active | The latest upstream ledger does not record the named resolution evidence | Put the affected material assumption in the assumption map at its capped confidence |
| Released | The upstream revision names the evidence and release | Preserve the history; route on the revised confidence |
| Unknown | Older or incomplete upstream schema, and no reliable answer can be recovered | Ask only if it changes the route; otherwise keep the uncertainty visible |

Stage 2 never releases a cap by inference. Track, artifact count, public research, or the passage of time does not substitute for the release condition recorded upstream. Do not treat every entry in `Caps applied` as an automatic stop: the flat-access note prevents access from inflating demand but creates no independent experiment; a vantage cap constrains Desirability confidence; a regulatory gate constrains Feasibility and may block real-world testing or delivery.

**Use the Desirability rubric as an orientation router:**

| Orientation | What creates action | Strong test behavior | Value-first consequence |
|---|---|---|---|
| Push | Escape cost, risk, delay, frustration, loss, or obligation | Replaces a workaround, supplies data or access, changes workflow, pays to remove the condition, or accepts a concrete relief step | Scope the shortest coherent path to relief and proof that the condition improved |
| Pull | Move toward identity, belonging, mastery, taste, entertainment, delight, or a desired experience | Voluntarily joins, returns, participates, contributes, invites, collects, waits, renews, or pays for access or continuation | Scope the smallest complete experience people choose and the continuation signal that demonstrates repeat attraction |

For mixed cases, use the primary action motive recorded upstream and preserve the secondary motive in the reasoning. The router does not prescribe a format: a Push business can use membership, and a Pull business can sell a one-off product. It changes the evidence sought and what a complete value moment looks like.

If current evidence contradicts the inherited rubric, show the conflict, confirm the proposed correction, and record that Stage 1 requires revision. Never silently flip the field while carrying the old value in the snapshot.

For a legitimate standalone intake with no inherited rubric, establish and confirm Push or Pull from the first action motive. Record it as established in this session, not inherited or validated upstream.

### 1.3 Assumption map

List only assumptions capable of changing the route or scope.

| # | Category | Assumption | Evidence class and source | Confidence | Impact if wrong | Cheapest credible learning action |
|---|---|---|---|---|---|---|

Categories are demand, value/usability, feasibility, and viability. Rank assumptions using impact if wrong and uncertainty. No numeric formula is required; `Critical / High / Medium` is enough when the reasoning is explicit.

### 1.4 Route decision

Use validation-first when any of these are true:

- A `?` or Low-confidence assumption could kill or materially redirect the solution.
- An active cap keeps a material assumption at `?`, Low confidence, or below the threshold required for safe real-world delivery.
- The payer's willingness or authority is materially less certain than the user's need.
- The proposed differentiator has not been experienced or demonstrated.
- A physical, regulated, safety-sensitive, or operational dependency could invalidate the delivery approach.
- The solution requires behavior that interviews and stated intent cannot credibly predict.

Use value-first when all critical assumptions have enough evidence to justify delivery and the remaining uncertainty can be learned safely through normal use.

Do not use timeline pressure as evidence. A deadline can reduce scope; it cannot turn an unknown into a fact.

---

## SECTION 2: TYPE-SPECIFIC VALUE-FIRST GUIDANCE

Read only the selected type and the hybrid section when relevant.

### Digital product

Scope the shortest coherent path from required input to meaningful output. Include persistence, identity, permissions, privacy, accessibility, payments, support, or audit history whenever the use case makes them necessary. “Not visible in the demo” is not a reason to omit them.

Common deferrals include secondary workflows, broad customization, low-priority integrations, advanced reporting, team administration, and native apps when a responsive web experience is sufficient. Do not defer security, consent, legal compliance, or recovery from a failure that would strand the core action.

### Physical product

Distinguish a concept model, functional prototype, testable pilot unit, and sellable first production unit. They answer different questions. Record which one is being scoped.

Account for materials, sourcing, tooling, minimum order quantities, tolerances, packaging needed for safe delivery, shipping, returns, certifications, and product liability where relevant. A prototype can omit retail polish; it cannot omit a safety requirement necessary for real-world use.

### Service

Scope a specific outcome, participant fit, boundaries, required inputs, delivery steps, handoff, and feedback mechanism. Manual delivery is often useful because it exposes the real work, but automation is allowed when it is already proven, required for the promise, or necessary for safety and consistency.

Include capacity, turnaround, revision limits, client responsibilities, and what happens when the client does not supply an input. A service is not viable merely because the founder can overwork to deliver the first one.

### Process or system

Scope the trigger, required inputs, roles, decisions, controls, output, measurement, and exception handling. Existing tools are preferable when they can support the workflow safely and reliably. Custom software is justified only when the process value depends on it or existing tools cannot meet a material requirement.

For an internal process, include the approver and adoption owner. A technically correct process that nobody is authorized or motivated to follow is incomplete.

### Hybrid

Identify the lead component, which delivers the primary value, and every supporting component. Build the lead to the standard required by the promise. Simplify supporting components only when the simplification does not break trust, access, safety, payment, measurement, or the experience of the lead component.

Do not assume the human component always leads. A software product with optional setup help and a service delivered through a lightweight tool are different hybrids.

---

## SECTION 3: VALIDATION-FIRST ROUTE

### 3.1 A decisive hypothesis

Write one falsifiable sentence:

> We believe [specific participant or payer] will [observable behavior] under [test condition] because [reason]. We will reconsider [named decision] if [failure threshold].

If the sentence predicts only that people will say they like something, rewrite it around a behavior with a real cost: time, data, workflow change, reputation, money, access, or another meaningful commitment.

Match the behavior to the inherited Desirability orientation:

- **Push:** observe action that escapes or reduces the named cost, risk, delay, workaround, failure, or obligation. Complaints and stated urgency without a changed behavior are weak evidence.
- **Pull:** observe voluntary joining, return, participation, contribution, invitation, identity expression, waiting, renewal, or payment for access or continuation. Free first-time consumption without return or commitment is weak evidence.

Do not make a Pull audience perform a pain narrative to qualify, and do not count pleasant participation as Push evidence when nobody changes the costly behavior under test.

### 3.2 Match the vehicle to the assumption

| Assumption | Useful vehicles | Weak substitute |
|---|---|---|
| A payer will pay | Honest pre-sale, paid pilot, signed commitment with terms, procurement conversation with budget owner | “Would you pay?” |
| A user can reach value | Task-based prototype test, concierge delivery, functional sample | Feature preference survey |
| A workflow will be adopted | Time-bounded pilot in the real environment with usage capture | Demo applause |
| A mechanism can work | Technical spike, bench test, small production run, expert or regulatory check | Polished mockup |
| A channel can reach buyers | Small capped campaign or outreach cohort with funnel tracking | Follower count |
| A service can deliver profitably | Paid manual pilot with time and cost capture | Free favor for a friend |

The test can combine assumptions only when the same artifact and sample genuinely test them. Otherwise test the highest-ranked one first.

### 3.3 Experiment specification

Complete and confirm every field:

- **Assumption under test:** one sentence.
- **Decision it controls:** what will be built, changed, or stopped.
- **Participants and payer:** role, recruitment source, count or range, and known sample bias.
- **Test artifact:** exactly what exists and what does not.
- **Task or offer:** what participants are asked to do.
- **Primary behavior:** the one observed action that matters.
- **Success threshold:** enough evidence to proceed.
- **Failure threshold:** enough evidence to change or stop.
- **Inconclusive condition:** when neither threshold is met and what happens next.
- **Duration or sample rationale:** proportional to the decision, not fake statistical precision.
- **Evidence capture:** events, notes, transactions, time, errors, or artifacts.
- **Safety and honesty controls:** consent, privacy, refund terms, disclaimers, regulatory boundaries, and manual assistance disclosed.
- **Decision table:** pass, fail, and inconclusive actions.

### 3.4 Contamination checks

Flag any that apply:

- Friendly or professionally obligated participants.
- Founder coaching that masks unusable design.
- Free use being treated as willingness to pay.
- A fake door that collects commitment without clearly disclosing availability.
- Different payer and user, with only the user tested.
- Test setting materially easier than real use.
- Success threshold chosen after seeing results.
- Multiple variables changed, leaving the result uninterpretable.

### 3.5 Returning with a result

When the user returns with results, read the existing Stage 2 packet. Record actual sample, observed behavior, threshold result, limitations, and decision. Append a Stage 2 revision entry rather than erasing the original plan.

- **Passed:** update the orientation to `value-first after passed experiment`, then scope the first release through Section 4, unless an active upstream cap controlled the route. In that case, record the passing evidence, mark Stage 1 for review, and keep the cap active until its revision ledger records the release.
- **Failed:** revise or stop the solution direction. Do not preserve the roadmap out of attachment.
- **Inconclusive:** name why and design the smallest materially different retest. Do not rerun the same weak test indefinitely.

If downstream packets already exist, list them as requiring review.

---

## SECTION 4: VALUE-FIRST ROUTE

### 4.1 Value-to-scope traceability

Build this table before naming a final feature count:

| # | Required user outcome | Component or capability | Why the promise breaks without it | Acceptance signal | Dependencies | Evidence for inclusion |
|---|---|---|---|---|---|---|

A component belongs when at least one is true:

- It directly creates a required outcome.
- It enables access to or delivery of that outcome.
- It prevents a material safety, legal, privacy, trust, or operational failure.
- It measures whether the outcome occurred when measurement is part of the decision.

Apply the orientation before declaring the scope complete:

- **Push completeness:** the release reaches observable relief, risk reduction, avoided loss, reduced effort, or increased certainty and shows the user that the condition changed.
- **Pull completeness:** the release delivers the chosen experience or identity-relevant value and contains the appropriate continuation moment: return, repeat participation, contribution, invitation, collection, renewal, or continued access where evidence says repeat attraction matters.

Do not add membership, community, streaks, or identity mechanics merely because the rubric is Pull. Add them only when they are part of the observed value or the cheapest honest test of continued attraction.

Remove or defer it when it serves an unconfirmed segment, optimizes a workflow not yet used, adds breadth without strengthening the core outcome, or exists mainly to imitate a competitor.

### 4.2 Scope pressure test

Ask in this order:

1. If this item disappears, which required outcome fails?
2. Is that outcome part of the confirmed promise or an attractive expansion?
3. Is there a simpler way to produce the same outcome without creating a dangerous manual burden?
4. What evidence or usage threshold would justify the fuller version?

Group technical or operational subrequirements under the user-facing capability they enable. The goal is a comprehensible release, not an artificially small implementation backlog.

### 4.3 Deferral with triggers

Every deferred item needs a trigger. Useful triggers include a measured user behavior, customer count, capacity limit, failure rate, revenue threshold, regulatory approval, repeated request from the target segment, or proof that a manual step has become the constraint.

“Version two” is not a trigger.

### 4.4 Estimate integrity

State estimates as ranges and name the assumptions that control them. Separate:

- elapsed time;
- founder or team effort;
- external cost;
- waiting time outside the team's control, such as procurement, manufacturing, certification, or participant recruitment.

Where the implementation method is not yet known, recommend the decision criteria rather than inventing a stack.

---

## SECTION 5: FLOW GUIDANCE

Use only moments relevant to the solution. “Return” is not mandatory for a one-time product; referral, renewal, completion, or no repeat may be the honest ending.

### Shared flow fields

For each step record actor, action, required input, output or state change, likely friction, and recovery. Mark the core value moment and the evidence that it occurred.

### Digital product

Entry or acquisition, payer decision where relevant, access and consent, minimum input, core action, meaningful output, save or handoff, recovery, and appropriate return trigger.

### Physical product

Discovery, evaluation, purchase or approval, delivery, first safe use, value realization, support or return, and repeat or referral where relevant.

### Service

Qualification, payer decision, agreement, client inputs, kickoff, delivery, review or revision, handoff, outcome check, and follow-up.

### Process or system

Trigger, ownership, input gathering, sequential work, decision points, exception handling, output, quality check, adoption measurement, and close.

### Validation experiment

Recruitment, disclosure and consent, setup, task or offer, observed behavior, evidence capture, debrief without leading, threshold comparison, and decision.

### Separate payer lane

When payer and user differ, show at least:

1. What makes the payer consider action.
2. What evidence or approval they need.
3. What they authorize or purchase.
4. What result they later use to renew, expand, or stop.

---

## SECTION 6: TRANSFER PACKET TEMPLATE

### 6.1 Preflight

Before writing, verify:

- The route matches the highest-risk assumption.
- Every cap is classified as none/not applicable, active, released, or unknown; any active material cap affected the route or appears in open risks with its resolution condition.
- Push/Pull changed the behavior tested, value moment, or continuation signal where relevant, without prescribing a format.
- Every score retains confidence and any resolution condition.
- User and payer remain separate where needed.
- Every included component or experiment field was confirmed.
- Every estimate carries assumptions.
- Research is not used beyond what its sources establish.
- Unknowns are visible.
- A validation-first packet does not present conditional future scope as committed roadmap.

### 6.2 Template

```markdown
# Solution and MVP Transfer Packet
## Stage 2 Output | USL Academy

**Schema version:** 2
**Status:** complete
**Idea / Product:** [Working description]
**Session date:** [Date]
**Route:** [validation-first / value-first / value-first after passed experiment]

---

## 1. UPSTREAM EVIDENCE SNAPSHOT

**Stage 1 schema read:** [version / no version line / no Stage 1 packet]
**Latest upstream revision:** [date and summary / none / unknown]
**Why Stage 2 required review:** [if applicable / not applicable]

**User persona:** [verbatim or faithful carry-forward]
**Persona confidence:** [High / Medium / Low + reasoning]
**Payer:** [same as user / separate payer persona]
**Payer confidence and budget authority:** [carry-forward]
**Payer proposition:** [carry-forward / payer is the user / unknown]

**Problem statement:** [carry-forward]
**Problem source, user side:** [source + confidence]
**Problem source, payer side:** [source + confidence / same as user]

**Desirability rubric used:** [Push / Pull + inherited reason, or established in this standalone session]
**Caps applied:** [carry-forward, including whether each cap remains in force or was released by later evidence]
**Cap status and affected dimension:** [none / not applicable / active / released / unknown + dimension]
**Cap resolution evidence required:** [carry-forward / already supplied in upstream revision / unknown]

| BBM dimension | Score | Confidence | Evidence basis | What resolves `?` or Low confidence |
|---|---|---|---|---|
| Desirability | | | | |
| Feasibility | | | | |
| Viability | | | | |

**Stage 1 flag and biggest risk:** [carry-forward]
**Evidence base:** Founder-observed [yes/no]; live research [yes/no]; buyer conversations [N, with feeler/payer split when recorded]; sample [type]; status [value]; last revised [date]
**UVP and confidence:** [carry-forward]
**Alternatives:** [carry-forward]
**Constraints and dependencies:** [budget, time, capability, team, regulation, safety, privacy, platform, manufacturing]
**Upstream open questions retained:** [list]

---

## 2. SOLUTION TYPE AND ACTORS

**Type:** [digital / physical / service / process or system / hybrid]
**Lead component:** [for hybrid / not applicable]
**Supporting components:** [for hybrid / not applicable]
**Who experiences value:** [user]
**Who decides or pays:** [payer, approver, budget owner]
**Type-specific consequence for scope:** [one to three sentences]

---

## 3. ASSUMPTION MAP

| # | Category | Assumption | Evidence class and source | Confidence | Impact if wrong | Cheapest credible learning action |
|---|---|---|---|---|---|---|

**Highest-ranked assumption:** [one sentence]

---

## 4. ORIENTATION DECISION

**Route:** [validation-first / value-first / value-first after passed experiment]
**Reason:** [tie directly to evidence and risk]
**What would change the route:** [specific result or new evidence]
**Desirability orientation consequence:** [Push/Pull + behavior, value moment, and continuation signal this stage will use]
**Active-cap routing consequence:** [experiment or constraint it caused / none]

---

## 5A. VALIDATION EXPERIMENT

Complete when the route is validation-first. Otherwise write `Not applicable: value-first route.`

**Experiment status:** [planned / passed / failed / inconclusive]
**Falsifiable hypothesis:** [statement]
**Decision controlled:** [decision]
**Participants and payer:** [sample, recruitment, bias]
**Test artifact and honest limitation:** [what exists and does not]
**Task or offer:** [what they do]
**Primary observed behavior:** [behavior]
**Success threshold:** [set in advance]
**Failure threshold:** [set in advance]
**Inconclusive condition:** [condition and next action]
**Duration or sample rationale:** [reason]
**Evidence capture:** [what and where]
**Safety, privacy, legal, and refund controls:** [controls]

| Result | Decision |
|---|---|
| Pass | |
| Fail | |
| Inconclusive | |

**Test flow:**
1.
2.
3.
4.
5.

**Contamination risks:** [list]

---

## 5B. VALUE-FIRST RELEASE SCOPE

Complete when the route is value-first. Otherwise write `Conditional until the experiment passes.`

| # | Required user outcome | Component or capability | Why required | Acceptance signal | Dependencies | Evidence for inclusion |
|---|---|---|---|---|---|---|

**Enabling requirements:** [identity, privacy, accessibility, payment, support, safety, regulatory, operational controls as applicable]

---

## 6. USER, PAYER, OR DELIVERY FLOW

| Step | Actor | Action | Input | Output or state change | Friction or failure | Recovery |
|---|---|---|---|---|---|---|

**Core value moment:** [step and evidence]
**Payer decision moment:** [step / payer is user / no payment decision]
**Honest ending:** [return / repeat / referral / renewal / completion / no repeat]

---

## 7. SCOPE BOUNDARIES

**In this release or test:** [list]

**Later, with a trigger:**

| Item | Why deferred | Trigger that makes it relevant |
|---|---|---|

**Explicitly excluded:** [list and reason]
**Still deliberately unresolved:** [list and resolution condition]

---

## 8. APPROACH AND MILESTONE

**Recommended approach:** [method and why]
**Estimate range:** [elapsed time, effort, external cost, outside waiting time]
**Estimate assumptions:** [list]
**First milestone:** [decision-quality result or usable delivery milestone]
**Definition of MVP complete:** [observable condition; for validation-first, completion means a decision-quality test result]

---

## 9. EVIDENCE AND SOURCES

| # | Finding | Evidence class | Source or origin | Inherited or new | Date checked | Decision affected | Limitation |
|---|---|---|---|---|---|---|---|

**Still unverified:** [claim or assumption + what would verify it]

---

## 10. OPEN RISKS

| # | Risk or unknown | Priority | Consequence | Resolution action |
|---|---|---|---|---|

---

## 11. STAGE 2 REVISIONS

Append-only. Record experiment results or upstream changes without erasing the original decision.

**Date:** | **Evidence:** | **Original value:** | **Revised value:**
**Scope of revision:** | **Downstream packets requiring review:**

If empty, write `No revisions yet.`

---

## 12. NEXT ACTION

**Immediate action:** [run the named experiment / proceed to Stage 3]
**Stage 3 readiness:** [ready / preliminary economics only until experiment passes]
**One decision Stage 3 must preserve:** [specific instruction]
```

---

## SECTION 7: COMPACT WORKED EXAMPLES

### Example A: Validation-first service with a separate payer

A team lead experiences slow onboarding, but the department director controls budget. The critical assumption is not whether the lead dislikes onboarding; it is whether the director will fund a fixed-scope intervention.

- Hypothesis: three of eight qualified directors will authorize a paid pilot after seeing a quantified baseline from their team.
- Artifact: a clearly bounded diagnostic and one manual onboarding redesign, not a full portal.
- Success: at least three paid pilots at the stated price.
- Failure: zero paid pilots after eight budget-owner conversations with the value case understood.
- Inconclusive: one or two pilots, triggering a second test of price versus approval timing.
- Next decision: pass scopes the repeatable service; failure revisits payer or value case.

The team lead and director have separate flow lanes. Positive user interviews do not substitute for the director's action.

### Example B: Value-first digital product

A reporting tool has observed weekly use in a concierge pilot and three paying customers. The route is value-first.

Required outcomes map to: connect two proven data sources, generate the plain-language report, review it, share it with a client, and recover from a failed connection. Authentication and account isolation remain in scope because customer data requires them. Advanced analytics, five additional integrations, and team permissions are deferred with usage and customer-count triggers.

The completion signal is not “the app is deployed.” It is that a target user can connect an account, generate an accurate report, correct it, and share it without founder intervention, while data remains isolated between customers.

### Example C: Physical product test before a sellable unit

The unresolved assumption is whether the mechanism works safely under real load. The validation artifact is a functional prototype tested under a defined load range, not branded packaging or a pre-order campaign. Success and failure thresholds use measured performance and safety criteria. Only after the mechanism passes does the value-first scope add supplier, landed-cost, certification, packaging, return, and production requirements.

### Example D: Pull-oriented membership experience

A local creative club has observed paid attendance and repeat participation, so the Pull rubric routes the work. The MVP is not a pain diagnostic or a feature checklist. Its complete value path is: discover a session, understand the taste and identity of the group, attend a genuinely representative event, contribute or connect, and choose whether to return. The acceptance signal includes a second paid attendance or membership conversion, not merely positive feedback after the first evening. Member profiles, streaks, and a community app remain out of scope until participation shows they strengthen belonging rather than decorate it. Membership is considered because repeat behavior is observed, not because Pull automatically means subscription.
