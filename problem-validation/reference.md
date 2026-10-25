# Stage 1: Problem Validation
## Knowledge File: Frameworks, Rubrics, Templates, and Examples

---

## SECTION 0: LIVE RESEARCH PROTOCOL

Parts of this skill are sharper with current external evidence than with memory alone. This skill's own rubric rewards real-world signals (competitors, demand, what people actually pay), and model knowledge has a training cutoff. Wherever a step is marked **[Live research available]**, follow this protocol.

**1. Offer, do not impose.** Ask before researching, then proceed on a yes. Phrase it as a quick, optional check: "Before we [do X], I can check current [scope] for you. Takes about 30 seconds. Want me to?" If the user declines, proceed on existing knowledge and mark anything it affected as "Unverified: based on model knowledge, not a live check." If the user says to always research, stop asking and run research automatically at each marked point for the rest of the session.

**2. Use whatever web capability is available.** Use your built-in web search and fetch, or an installed search tool if the environment has one (for example Firecrawl, Exa, or Jina). Do not depend on any single tool. If no web capability is available at all, say so once, proceed on model knowledge, and flag the affected outputs as "Unverified." Never block the interview waiting on a tool.

**3. Search narrow.** Build 2 to 4 targeted queries from what you already know: persona, problem, category, and geography. Specific queries beat broad ones. Run one round, then synthesize. If a step has several research needs, batch them into one pass rather than asking the user repeatedly.

**4. Synthesize, then confirm with the user.** Report findings as a short, cited list. Each claim gets a source and, where it matters, a date. Then ask the user to confirm or correct before the findings feed any framework or score. Flag any source older than about twelve months as possibly stale. Findings are evidence the user reacts to, not conclusions you impose.

**5. Record evidence in the Transfer Packet.** Put confirmed findings in the packet's "Market Evidence and Sources" block, one line each: the takeaway, the source URL, and the date checked (use today's date). Downstream stages read this block and reuse it instead of researching the same ground again. Where a finding drives a score or a number, cite it inline at the point where it is used.

**6. Stay honest.** Distinguish what you verified against a source from what you inferred. Never present an unverified figure as a fact. Live research raises confidence; it does not replace the user's own knowledge of their market.

### Research scope for this skill

Two marked points, both in Phase 2:

**Step 3 (BBM Desirability score).** Before scoring Desirability, offer to look for real demand and competition signals. This is the highest-value check in the skill: the rubric scores on external evidence, and this is how that evidence is gathered.
- Example queries, **push rubric**: "[problem] software" or "[problem] tool"; "best [category] alternatives"; "[problem] reddit" or "[category] complaints forum"; "[category] market size" or current search-interest signals.
- Example queries, **pull rubric**: "[category] newsletter" or "[category] community"; "best [category] creators" or "[category] membership"; "how much do [category] creators earn"; "[category] subscription" or "[category] Patreon / Substack / Discord". You are looking for audiences that already pay, not for complaints.
- Where the payer is not the user, add one query on the payer's side: "[payer role] budget for [category]" or "does [payer type] pay for [category]". Viability rests on this and it is the most commonly skipped check.
- Where a regulatory gate may apply, add one query on licensing: "[category] licence requirements [country]" or "regulations for selling [category]".
- Feeds: the Desirability score and its reasoning, the Feasibility regulatory gate, the Viability payer judgment, and the "competitors prove demand" judgment.

**Step 5 (UVP alternatives).** After the user lists the alternatives they compete against, offer to verify that list and surface any they missed.
- Example queries: "[named alternative] vs"; "alternatives to [named alternative]"; "[category] tools comparison".
- Feeds: the UVP "alternatives the user is competing against" list and the UVP confidence level.

If research changes a score or a list, show the before and after so the user sees what moved and why.

---

## SECTION 1: BALANCED BREAKTHROUGH MODEL (BBM) SCORING RUBRIC

This rubric is used by this skill to score the idea in Step 3 of Phase 2. Apply each level description carefully. Do not round up to be encouraging. Do not round down to be dramatic. Score based on evidence available in the conversation.

---

### SCORING MECHANICS (APPLY TO ALL THREE DIMENSIONS)

**Every score carries a confidence level.** High, Medium, or Low. The score says what you believe; the confidence says how much weight the belief can bear. A 4/5 at Low confidence and a 4/5 at High confidence are different objects and downstream stages treat them differently.

**`?` is a legitimate score.** Where no honest number exists yet, write `?` rather than inventing one, and record what would resolve it. A `?` outranks any number when naming the biggest risk: a 2 can be planned around, an unknown cannot.

**The vantage cap.** Carried from Stage 0 and applied here mechanically. A shallow vantage on the problem (arena relationship of *interested outsider* or *participant*) combined with a problem source of `hypothesis` caps **Desirability confidence** at Low, or forces a `?`. It does not cap the score itself: a hypothesis can be a 4 where market evidence supports it, but it cannot be a confident 4. A cap that fired at Stage 0 stays fired here. This exists to stop a hypothesis being laundered into a confident number by the act of moving between stages. Only the evidence named against a cap retires it, and in practice that is `/buyer-conversations`, which releases it at its Step 6 and records the release in this packet's ledger. Public sources do not release a vantage cap, and neither does the passage of time.

**The flat-access note.** Where the user's own capability is reach into the market rather than the product, Stage 0 will have said so. That reach raises Feasibility for a service and Viability for distribution, and it does nothing for Desirability. Do not let it inflate demand.

**Confidence floors and ceilings by problem source:**

| Problem source | Highest honest Desirability confidence |
|---|---|
| Direct experience, or repeated observation | High |
| Public evidence | High where sources are current and specific, otherwise Medium |
| Hypothesis, with supporting live research | Medium |
| Hypothesis, with nothing external | Low, or `?` |

---

### CHOOSING THE DESIRABILITY RUBRIC: PUSH OR PULL

There are two Desirability rubrics and they are not interchangeable. Choose before scoring, name the choice, and record it in the packet.

**Push (the default).** The buyer is escaping something: a cost, a risk, a loss, a repeated frustration, an obligation. Demand shows up as complaints, workarounds, searches for relief, and money already being spent on inadequate fixes. Most B2B software, most services, most process and system work, and most tools are push.

**Pull.** The buyer is reaching for something: identity, status, belonging, mastery, taste, entertainment, delight, or a version of themselves they want to be. Demand shows up as attention, repeat consumption, membership, participation, and spending in a category where nothing is broken. Newsletters, communities, media properties, education and courses, games, consumer apps built on enjoyment, creator and personal brands, hospitality, and aspirational or design-led physical products are pull.

**The test:** is the buyer escaping something, or reaching for something? Where an idea does both, score on the one that would make them act first, and note the other in the reasoning.

**Why this matters.** The push rubric scores absence of pain as absence of demand. Run a healthy newsletter, a games studio, or a premium consumer brand through it and every level reads as a 1 or a 2, because nobody is complaining, nobody has built a workaround, and nothing is broken. That is a rubric failure, not a business failure. Using the wrong rubric here is the single most likely way this stage kills something good.

---

### DESIRABILITY, PUSH RUBRIC: Do people actually want this?

This dimension measures whether real demand exists for the problem being solved. It is not about whether the idea is clever. It is about whether the pain is felt, acknowledged, and strong enough that someone would change their behavior or pay to make it go away.

| Score | Description |
|-------|-------------|
| 1 | No evidence of demand. The user is solving a problem they invented or assumed exists. No searches, no complaints, no workarounds, no competitors attempting to address it. |
| 2 | Anecdotal interest at best. The user has heard a few people say it is annoying, but there is no evidence of urgency or willingness to act. |
| 3 | Real signals exist. People search for solutions, complain publicly, have built makeshift workarounds, or there are indirect competitors. Demand exists but is not yet validated as urgent or widespread. |
| 4 | Clear demand with evidence. Competitors exist and have customers. People actively seek solutions and are already paying for inferior ones. The problem is named and recognized in the market. |
| 5 | Urgent, widespread pain. The problem is felt acutely by a large and identifiable group. People are already paying for inadequate alternatives. The cost of not solving it is visible and measurable. |

**Guidance notes:**
- Score 1 or 2 must be flagged explicitly as a risk.
- Existence of competitors is usually a Desirability signal of 3 or 4, not a threat. Competitors prove demand exists.
- **Enthusiasm is not evidence. Observation is.** These are different things and the distinction decides many scores. What the user *hopes*, believes, or feels certain about carries no weight, however strongly held, and "everyone I tell about it loves the idea" carries none either: people are agreeable in conversation and it costs them nothing. What the user has *seen* does carry weight. Having lived the problem repeatedly, or having watched it happen to other people more than once first hand, is direct evidence about the world and it counts toward Desirability exactly as a forum thread does. The problem source field in the packet records which of these the score rests on.
- **Thin public signal is not absent demand.** The scoring levels below lean on searchable artifacts: complaints, forums, competitors, search volume. That is a measure of how loudly a market argues in public, not of how much it hurts. Informal sectors, offline trades, regulated professions, older demographics, small-business owners who are not online about their work, and markets outside the English-language internet all under-produce that signal while producing real, expensive problems. Where public signal is thin but the problem source is `direct experience` or `repeated observation`, score the observed reality and say plainly in the reasoning that public evidence is thin and why. Do not mark a real problem down to a 2 for failing to be discussed on Reddit.
- Where public signal is thin **and** the problem source is `hypothesis`, that is the genuine 1 or 2. The two cases look similar from the outside and the problem source is what separates them.

---

### DESIRABILITY, PULL RUBRIC: Are people drawn to this?

Use this rubric when the buyer is reaching for something rather than escaping something. It measures whether attention, participation, and money already move toward this category, and whether this offer has a credible claim on them. Nothing here is broken, so do not look for a break.

| Score | Description |
|-------|-------------|
| 1 | No evidence anyone is drawn to this. The pull is the user's own taste, projected. No audience, no comparable, no category, no one already spending attention here. |
| 2 | A category exists but engagement is thin or passive. People will consume it free and idly. No sign anyone commits time, money, or identity to it, and no comparable has held an audience. |
| 3 | Real attraction exists. There is an active audience, community, or scene around this. Comparables hold attention, people participate rather than only consume, and some money moves, though not obviously toward something like this. |
| 4 | Strong, demonstrated attraction. Comparables have paying audiences, memberships, or repeat customers. People spend on this category by choice with no problem forcing them, and identify with it publicly. |
| 5 | Large, committed, spending audience. The category has proven repeat and premium spending, strong identity attachment, and visible communities. People seek this out, wait for it, and tell others about it unprompted. |

**Guidance notes:**
- The signals differ from the push rubric. Look for audience size and growth, engagement depth rather than reach, repeat consumption, paid memberships and subscriptions, event attendance, waiting lists, merchandise, creator earnings in the category, and how people describe themselves rather than what they complain about.
- **A crowded field is a stronger signal here than in push.** Many people already making a living in a category is close to proof that attention and money exist in it. The risk moves to differentiation, which the UVP handles, not to demand.
- **Free consumption is a weak signal on its own.** Large free audiences that never convert are the characteristic failure of pull businesses, and it is what separates a 2 from a 4. Ask what anyone in this category has actually paid for.
- Taste, judgment, and voice are legitimate differentiators in pull businesses in a way they are not in push. Do not demand a mechanism where a point of view is the product, but do demand evidence that anyone wants that point of view.
- The push guidance notes on observation and thin public signal apply here unchanged.

---

### FEASIBILITY: Can this actually be built or delivered?

This dimension measures whether the solution can be created with realistic resources, skills, and available tools. It applies equally to digital products, physical products, services, and processes. Adjust your assessment based on the type of solution.

| Score | Description |
|-------|-------------|
| 1 | Not buildable with current technology, skills, or resources. Requires breakthroughs that do not exist yet or capabilities far beyond what the user has or can access. |
| 2 | Technically possible but requiring deep specialized expertise, significant capital, or extended timelines. Not buildable without major resource acquisition. |
| 3 | Buildable with existing tools and technology but requires meaningful effort, learning, or resources. Not trivial. Will take real time and investment to execute. |
| 4 | Straightforward to build or deliver with tools and skills that are currently accessible or easily acquired. Clear path from idea to first version. |
| 5 | Could be prototyped or piloted within days or weeks using no-code tools, existing platforms, simple processes, or the user's own skills. Very low barrier to a first version. |

**Guidance notes:**
- For services and processes, Feasibility measures whether the user can deliver the service, not just whether the concept makes sense.
- For physical products, Feasibility includes sourcing, manufacturing, and distribution considerations. Design, prototyping, tooling, sourcing, minimum order quantities, and shipping are each real constraints, and a first sellable unit is typically months away rather than days. A physical product that is easy to draw is rarely a Feasibility 5.
- A score of 5 is not inherently better than a 3. A complex, high-Feasibility-3 solution that is still buildable is fine. What matters is whether the score is honest.
- **The regulatory and licensing gate. Apply this before scoring, and let it override the levels above.** The five levels measure technology, skill, and capital, and none of them can see a law. Ask directly: does selling or delivering this require a licence, registration, accreditation, professional indemnity, regulatory approval, data-protection basis, or an age or safety certification that the user does not currently hold? Where the answer is yes:
  - **Feasibility cannot exceed 2** until the user can name the specific approval, roughly what it costs, and roughly how long it takes. A thing that can be prototyped in a weekend but cannot legally be sold is not a Feasibility 5, and scoring it as one is the most dangerous error in this rubric.
  - Once the path is named and it is genuinely walkable within the user's constraints, score normally and record the approval as a dependency in Open Questions at High priority.
  - Where the path is not walkable within the user's constraints, that is a Feasibility 1 or 2 and it must be flagged. It is often repairable by changing who delivers rather than what is delivered: partnering with someone already licensed, selling into the regulated business rather than to its end customer, or moving the offer to the unregulated adjacent step.
  - This gate fires most often in health and clinical work, care, legal and immigration, financial services, lending and payments, insurance, food and beverage, childcare and education, transport, alcohol, cosmetics and supplements, firearms, and anything handling children's data or health records. It also fires for employment-conflicted work, where the constraint is a contract rather than a statute but binds just as hard.

---

### VIABILITY: Can this make money sustainably?

This dimension measures whether a real and durable business model exists behind the idea. Viability is about whether the economics work, not just whether someone might pay once.

| Score | Description |
|-------|-------------|
| 1 | No clear path to revenue. The model relies on scale that is speculative, ad revenue that will never materialize, or the assumption that "if we build it they will come." |
| 2 | A revenue model exists but the margins are thin, the market is too small, or the willingness to pay is unproven at the price point needed to sustain the business. |
| 3 | Reasonable business model with a clear path to profitability. Unit economics work on paper. Willingness to pay exists at a realistic price. Not proven yet but believable. |
| 4 | Strong unit economics and clear evidence of willingness to pay. Multiple revenue streams possible. Market is large enough to build a real business. |
| 5 | Large addressable market, proven willingness to pay at premium prices, recurring revenue potential, and defensible positioning. The economics strongly favor building this. |

**Guidance notes:**
- Score 1 or 2 is a hard flag. Address it directly. A beautiful product with no viable business model is a hobby, not a business.
- Recurring revenue (subscriptions, retainers, repeat purchases) dramatically improves Viability. Note it when present.
- "I will figure out the business model later" always produces a Viability score of 1 or 2.
- **Where the payer is not the user, score the payer.** Viability follows the money. An employer-bought tool is scored on the employer's budget and buying process, not on how much the end user loves it. A product bought by a parent, reimbursed by an insurer, funded by a sponsor, or paid for by an advertiser is scored the same way. Where the payer's willingness is unknown, that is a `?` and it is usually the highest-priority risk in the packet.
- **Where the solution is internal, reframe Viability as return on investment, and say so.** An internal process, system, or tool built for the user's own organisation has no external revenue by design, and scoring it 1 for "no path to revenue" is a category error that this rubric otherwise walks straight into. Score it instead on time saved per cycle, errors and rework eliminated, revenue protected, risk reduced, and whether the person holding the budget agrees those numbers matter. A 3 is the appropriate and honest score for a well-justified internal tool. State the reframe explicitly in the reasoning so downstream stages do not read the 3 as weakness.
- **Where the model is not direct sale, score the actual model.** Advertising, sponsorship, grants, affiliate, marketplace take-rate, freemium conversion, and community membership each have their own economics, and each has a characteristic failure. Ask what volume the model needs to clear the user's own income floor, and score against that number. A model that only works at a scale the user has no route to reaching is a 2, however common the model is.

---

### OVERALL BBM INTERPRETATION

After scoring all three dimensions, provide an overall interpretation using this guidance:

| Pattern | Interpretation |
|---------|----------------|
| All 3s and above | Solid foundation. The idea has real merit and the major risks are manageable. Proceed with attention to the lowest-scoring dimension. |
| One score of 1 or 2 | Proceed with caution. The low score identifies a risk that must be addressed before significant investment. Name the risk and recommend a specific action. |
| Two scores of 1 or 2 | The idea needs significant rethinking in at least two dimensions. Be honest. The session should focus on what would need to be true for these scores to improve. |
| All 1s and 2s | Recommend pausing before proceeding. The idea as currently conceived has fundamental gaps. Explore a pivot or a narrower starting point. |
| High Desirability, Low Feasibility | The problem is real but the proposed solution may be wrong. Explore a simpler delivery approach. |
| High Feasibility, Low Desirability | Something can be built but it is not clear anyone wants it. Validate demand before building anything. |
| High Viability, Low Desirability | A business model exists on paper but the market has not confirmed it wants this. Validate demand first. |
| Any `?` score | The idea is not yet scoreable on that dimension. Treat the unknown as the biggest risk, ahead of any low number, and make the recommended next step the thing that resolves it. Do not average around a `?` and do not treat it as a middling 3. |
| All scores at Low confidence | The scores are a reasoned guess and the packet should say so in those words. This is the normal and honest result for a hypothesis-sourced candidate with no live research and no buyer conversations. The next step is evidence, not Stage 2. |
| Scores good, confidence low, problem source `hypothesis` | The most dangerous shape in this table, because it reads like a green light. Do not flag None. Flag Caution, name the confidence explicitly, and recommend `/buyer-conversations` before anything is built. |

---

## SECTION 2: UNIQUE VALUE PROPOSITION (UVP) FRAMEWORK

### Structure

"For [specific target audience], who struggle with [specific pain point from the problem statement], [product or solution name] provides [unique value or benefit] by [how it works differently from alternatives]."

### Rules

1. The target audience must match the persona from the problem statement. They cannot diverge.
2. The pain point must be the same pain established in the problem statement. Do not introduce a new pain at this step.
3. The unique value must be something competitors do not offer, or offer worse. If you cannot name what is unique, the UVP is not ready.
4. The "how it works differently" clause must describe a mechanism, approach, or differentiator. Not a vague quality ("better," "faster," "easier") but a specific reason why.
5. **The UVP addresses the person feeling the problem.** Where the payer is someone else, do not blend them into it: a UVP written for two audiences at once persuades neither. Write the UVP for the feeler, then add a separate one-line **payer proposition** underneath it in the packet, naming what the payer gets and in their own terms. An employer buys retention or throughput, not the delight their staff feel; an insurer buys avoided cost; a parent buys reassurance. Stage 4 prices against that line, so it has to be there.
6. For a **pull-driven** offer, the "specific pain point" slot holds what the buyer is reaching for rather than escaping, and the mechanism may legitimately be a point of view, a taste, an access, or a standard rather than a feature. Keep the same specificity bar: "a distinctive voice" is not a mechanism, "the only weekly teardown written by someone who has actually shipped one" is.

### Common Failure Modes

| Failure Mode | Example | Fix |
|---|---|---|
| Generic unique value | "provides the best experience" | Replace with a specific, verifiable claim |
| Pain point drifts from problem statement | Problem was about retention, UVP addresses acquisition | Trace back to the confirmed problem statement |
| Missing differentiation clause | Stops at "provides [value]" without saying how | Always complete the "by [mechanism]" clause |
| Solution too broad | "solves all marketing problems for small businesses" | Narrow to the single most important outcome |
| Competitor denial | "there is nothing else like this" | If competitors exist, acknowledge them and explain the difference |

### Worked Example

**Problem statement:** Independent fitness coaches struggle to retain clients past the first three months because they have no structured system for tracking progress and maintaining accountability between sessions.

**UVP:** For independent fitness coaches who struggle to retain clients past the first three months, CoachTrack provides a structured accountability system that keeps clients engaged between sessions by automating progress check-ins and giving coaches a live dashboard of client momentum without adding administrative work.

**Why this UVP works:**
- The audience (independent fitness coaches) matches the persona.
- The pain (client retention past month three) matches the problem statement exactly.
- The unique value (accountability without admin work) is specific.
- The mechanism (automated check-ins and a live dashboard) explains how it is different.

---

## SECTION 3: TRANSFER PACKET TEMPLATE

This is the structured artifact generated at the end of every Problem Validation session. This skill generates this as a markdown document saved to the workspace. Every section must be completed. Do not leave sections blank. If something is genuinely unknown or unresolved, write "Not yet determined" and note what would need to happen to resolve it.

---

```markdown
# Problem Validation Transfer Packet
## Stage 1 Output | USL Academy

**Idea / Product Name:** [Working name or description]
**Session Date:** [Date]
**Schema version:** 3
**Status:** [in progress / complete]
**Last completed step:** [Step number, only while in progress]
**Prepared for:** [User's name if provided, otherwise "USL Academy User"]

---

## 1. INTAKE SUMMARY

**Upstream:** [Stage 0 packet read from usl-build/ / Stage 0 material pasted / none — started here]
**Starting point:** [New idea / Existing product / Observed problem / Running business]
**What the user has today:** [One to two sentences describing what exists right now]
**URL or product reference:** [If provided]

---

## 2. TARGET PERSONA AND PAYER

**Who this is for:** [Specific description of the target user, the person who feels the problem]
**What makes them specific:** [Job title, life situation, demographic, or behavioral trait that makes this a defined group, not a broad population]
**Persona confidence level:** [High / Medium / Low] + one sentence of reasoning

**Who pays:** [Same as above, or a different person. If different, name them specifically.]

*Complete the block below only when the payer is not the person who feels the problem. Where they are the same, write "Payer is the user" and move on.*

**Payer persona:** [Who they are, to the same standard as the persona above]
**Why the payer pays:** [Their own reason, in their terms. It is rarely the user's reason.]
**Payer confidence level:** [High / Medium / Low] + one sentence of reasoning
**Does the deal fail without them:** [Yes / No, and what happens if they say no]
**Two-sided dependency:** [For marketplaces and platforms: which side is harder to get, and what the chicken-and-egg risk is. Otherwise "Not applicable." A real dependency here also belongs in Section 8 at High priority.]

---

## 3. CONFIRMED PROBLEM STATEMENT

**Problem statement:**
> [Persona] struggles with [Problem] because [Root Cause].

**Notes on this problem statement:**
[Any important context, edge cases, or nuances identified during the session that a future module should know about]

**Problem source:** [Direct experience / Repeated observation / Public evidence / Hypothesis. Carried unchanged from Stage 0 if it set one. This field caps the Desirability confidence in Section 4, so it is load-bearing.]
**Problem source, payer side:** [The same four levels, for the belief that the payer will pay. Often weaker than the feeler side. Write "Same as above" where the payer is the user.]
**Problem confidence level:** [High / Medium / Low] + one sentence of reasoning

---

## 4. BALANCED BREAKTHROUGH MODEL (BBM) SCORECARD

**Desirability rubric used:** [Push / Pull] + one sentence on why. (Push measures escape from a problem; pull measures attraction toward an offer. See reference Section 1.)

| Dimension | Score | Confidence | Key Reasoning | What would resolve a `?` or a Low |
|---|---|---|---|---|
| Desirability | X/5 or `?` | High / Medium / Low | [2 to 3 sentence summary of reasoning] | [Blank if High confidence] |
| Feasibility | X/5 or `?` | High / Medium / Low | [2 to 3 sentence summary of reasoning] | [Blank if High confidence] |
| Viability | X/5 or `?` | High / Medium / Low | [2 to 3 sentence summary of reasoning] | [Blank if High confidence] |

**Caps applied:** [Vantage cap fired / flat-access note applied / regulatory gate fired / none. Name any cap carried from Stage 0 and say it is still in force. A confidence downgrade recorded upstream is never silently dropped here.]

**Biggest identified risk:**
[The lowest-scoring dimension, or any `?`, which outranks any number. What it means in practice, and the recommended action to address it.]

**Flag:** [None / Caution / Stop and Rethink]

**Evidence base:**

**Founder-observed evidence:** [yes/no + one line]
**Live research completed:** [yes/no; see Market Evidence and Sources]
**Buyer conversations completed:** [N]
**Conversation sample:** [warm / cold / mixed / public-source substitute / none]
**Conversation status:** [not attempted / deferred by user on DATE / substituted, reason / completed]
**Evidence last revised:** [date]

These fields are the record of what the Desirability score actually rests on. `/buyer-conversations` updates them when the sprint runs, and `/build-loop` reads them at the gate after this stage: the conversation recommendation fires only when the count is 0 **and** the status is `not attempted`, so a recorded deferral or substitution is never nagged. A packet without these fields predates them (schema v1): consumers treat the conversation count as unknown, ask the user once, and never infer zero or fire the gate on an assumption.

**Schema compatibility.** A packet marked `Schema version: 2` predates the fields added in version 3: the confidence column and `?` scores, the caps line, the rubric line, the payer block, the problem source, and the hybrid solution type. Version 3 is additive, so a v2 packet stays readable. Consumers treat the missing fields as unknown rather than as absent or as zero, and any stage passing back through this one fills them rather than re-deriving the whole packet.

---

## 5. SOLUTION DIRECTION

**What the user currently has or is proposing:**
[One to three sentences describing the solution as understood from the session]

**Solution-to-problem alignment:**
[Does the proposed solution directly address the root cause in the problem statement? Yes / Partially / No, and why]

**Recommended adjustments or reframes:**
[Any specific suggestions made during the session about how to tighten the solution direction. If none, write "None. Solution aligns with problem statement."]

**Solution type (check one):**
- [ ] Digital product (app, platform, software tool)
- [ ] Physical product
- [ ] Service
- [ ] Process or system
- [ ] Hybrid (two or more of the above)
- [ ] Not yet determined

**If hybrid:**
**Lead component:** [The one that delivers the core value. Stage 2 scopes this one first.]
**Supporting component:** [The other. Stage 2 stubs or simplifies this one in version one.]
**Why this is the lead:** [One sentence. If the user cannot say which leads, that is an open question, not a coin toss.]

---

## 6. USER CONSTRAINTS AND CONTEXT

These constraints should be surfaced during intake or validation and carried forward into every subsequent module. Stage 2 uses these to scope the MVP realistically.

**Budget:** [What the user has available to build or launch a first version. If not stated, write "Not disclosed."]

**Timeline:** [Any deadline or urgency the user has named. If none, write "No stated deadline."]

**Technical skill level:** [Can the user build things themselves, or do they need no-code tools or external help? Options: Non-technical / Some technical ability / Can build independently]

**Team:** [Solo founder / Has a co-founder or partner / Has a small team / Not stated]

**Stage:** [Has not started / Early experiments / Has paying customers / Established business exploring a new direction]

**Other constraints:** [Anything else that would affect how aggressively or conservatively to scope the MVP. Geographic constraints, regulatory considerations, existing commitments, etc.]

---

## 7. UNIQUE VALUE PROPOSITION (UVP)

**Confirmed UVP:**
> For [specific target audience], who struggle with [specific pain point], [product name] provides [unique value] by [how it works differently].

**Payer proposition (only where the payer is not the user):**
> [One line naming what the payer gets, in the payer's own terms. Stage 4 prices against this line. Write "Payer is the user" where they are the same.]

**What makes this genuinely unique:**
[One to two sentences naming the specific differentiator and why it matters to the target persona]

**Alternatives the user is competing against:**
[List 2 to 4 alternatives the target user currently uses or falls back to, including "doing nothing"]

**UVP confidence level:** [High / Medium / Low] + one sentence of reasoning

---

## 8. OPEN QUESTIONS AND UNRESOLVED RISKS

[List any questions or risks that came up during the session that were not fully resolved. These are not failures. They are honest signals of what needs attention next. Carry forward from Stage 0, when it ran: the what-would-change-my-mind sentence, and every question-mark score with what would resolve it. `/buyer-conversations` reads these rows to seed its question list instead of re-eliciting them.]

| # | Open Question or Risk | Priority (High / Medium / Low) |
|---|---|---|
| 1 | | |
| 2 | | |
| 3 | | |

---

## 9. MARKET EVIDENCE AND SOURCES

Findings confirmed through live web research during this session. Downstream stages reuse these instead of researching the same ground again. If no live research was run, write "No live research run this session."

| # | Finding (one line) | Source URL | Date checked |
|---|---|---|---|
| 1 | | | |
| 2 | | | |
| 3 | | | |

**Still unverified (worth a live check later):**
[Any claim, number, or competitor assumption that drove a score or the UVP but was not verified against a source. If none, write "None."]

---

## VALIDATION REVISIONS

Append-only ledger. Later evidence (most often `/buyer-conversations`) revises this packet by adding entries here; nothing above is deleted. Re-running a revision must not duplicate an entry: match on date plus original value. If empty, write "No revisions yet."

**Date:** | **Evidence:** | **Original value:** | **Revised value:**
**Scope of revision:** | **Downstream packets requiring review:**

---

## 10. RECOMMENDED NEXT STEP

*This section branches on the flag in Section 4. Complete only the branch that applies and delete the other.*

**If the flag is Stop and Rethink:**

**Next module:** Not Stage 2.
**What happened:** [The dimension that failed and the evidence that failed it, in one or two sentences.]
**Path taken:** [Portfolio: this packet archived to `usl-build/archive/1-problem-validation-[slug].md`, the Stage 0 row marked `rejected [date], [evidence]`, and the next candidate confirmed with the user. / No portfolio: the single dimension that would have to move, and the cheapest experiment that would move it.]
**Do not proceed to Stage 2 on this candidate.**

**If the flag is None or Caution:**

**Next module:** Stage 2: Solution and MVP Fleshing

**What to bring into that session:**
This Transfer Packet. Paste it at the start of the Stage 2 session. This skill will read it and pick up from where this session ended.

**What Stage 2 will build on top of this:**
- MVP scope and feature definition based on the solution direction above
- User flow mapped to the confirmed persona and problem
- Identification of the minimum thing to build, test, or deliver first

**One thing to think about before that session:**
[A specific question or prompt for the user to reflect on before continuing. Tailored to the specific idea and open questions identified above.]

---

## 11. SESSION NOTES (OPTIONAL)

[Any additional context, tangents, or details that came up during the session that did not fit neatly into the sections above but may be relevant to future modules.]
```

---

## SECTION 4: WORKED EXAMPLES

These are complete, realistic worked examples for each step. Use these when a user says they are stuck or asks to see what a finished output looks like. Reference the example most similar to their situation.

| Example | Type | Shows |
|---|---|---|
| A | Digital product, B2B SaaS | The standard push case |
| B | Service | Viability constrained by the buyer's budget |
| C | Physical product | Feasibility constrained by manufacturing |
| D | Process or system, internal | Viability reframed as return on investment |
| E | Audience business | The **pull rubric**, where nothing is broken |
| F | Hybrid, regulated, split payer | The **regulatory gate**, a **payer who is not the user**, and a **hybrid** lead component |

---

### EXAMPLE A: Digital Product (B2B SaaS)

**Context:** User runs a small marketing agency and wants to build a tool that helps clients see ROI from their campaigns.

**Problem Statement:**
Marketing agency owners struggle to retain clients past the first contract renewal because clients cannot clearly see the ROI from the work being done, despite results being delivered.

**BBM Scores (push rubric):**
Desirability: 4/5 (High confidence) | Feasibility: 4/5 (High confidence) | Viability: 4/5 (Medium confidence)

*Desirability reasoning:* This is a well-documented pain in the agency world. Client churn is a top-three concern for agency owners and the inability to prove ROI is consistently cited as a primary cause. Competitors exist (AgencyAnalytics, Databox) which confirms demand.

*Feasibility reasoning:* The core of this product (a reporting dashboard pulling from marketing APIs) is buildable with existing tools and no-code platforms. No novel technology required.

*Viability reasoning:* Agencies pay monthly SaaS fees readily if the tool saves them time or protects revenue. A $99 to $299 per month price point is realistic. The retention risk being solved directly maps to revenue saved for the customer.

*Biggest risk:* Competitive landscape. The space has established players. The UVP must be specific and the initial market segment must be narrow enough to win.

**UVP:**
For marketing agency owners who struggle to retain clients past the first renewal, ClientProof provides a plain-language ROI report their clients can actually understand by automatically translating campaign data into client-facing outcomes instead of platform metrics.

---

### EXAMPLE B: Service Business

**Context:** User is a freelance HR consultant who wants to offer a packaged onboarding service for small tech startups.

**Problem Statement:**
Founders of early-stage tech startups struggle to onboard their first five hires effectively because they have no HR infrastructure and are too busy building the product to create one from scratch.

**BBM Scores (push rubric):**
Desirability: 4/5 (Medium confidence) | Feasibility: 5/5 (High confidence) | Viability: 3/5 (Low confidence, resolved by asking five founders what they last paid for HR help)

*Desirability reasoning:* Early-stage startup hiring pain is widely documented. First hires leaving due to poor onboarding is a recurring founder complaint. The persona is specific and the problem is real.

*Feasibility reasoning:* This is a service delivered by the user themselves using existing knowledge and tools. The barrier to a first version is essentially zero. Could be piloted with a single client this week.

*Viability reasoning:* The market exists but the size is constrained. Early-stage startups have limited budgets. Pricing must be carefully positioned. The business is viable but unlikely to scale without productizing or moving upstream to slightly larger companies.

*Biggest risk:* Viability. Early-stage startups often cannot pay consulting rates. The offer may need to be productized (a fixed-scope package at a fixed price) to reduce friction and make the unit economics work.

**UVP:**
For first-time founders of early-stage tech startups who struggle to onboard their first hires without distracting themselves from the product, the First Five Framework provides a done-for-you onboarding system that is installed in two weeks by handling every step of the process so the founder never has to think about it.

---

### EXAMPLE C: Physical Product

**Context:** User has designed a reusable travel organizer for parents of young children.

**Problem Statement:**
Parents of children under five struggle to stay organized during travel because existing travel bags and organizers are designed for adults and do not account for the unpredictable, high-volume needs of traveling with small children.

**BBM Scores (push rubric):**
Desirability: 4/5 (High confidence) | Feasibility: 3/5 (High confidence) | Viability: 3/5 (Medium confidence)

*Desirability reasoning:* Parents of young children are a vocal, solution-seeking group. Travel with small children is consistently ranked as one of the highest-stress parenting activities. The market has competitors (diaper bags, travel pouches) which confirms demand but also signals a need for genuine differentiation.

*Feasibility reasoning:* Producing a physical product requires design, prototyping, manufacturing, and sourcing. None of these are impossible, but each is a real constraint. An MVP here is a handmade or 3D-printed prototype, not a market-ready product. Timeline to first sellable version is months, not days.

*Viability reasoning:* The parenting product market is large and spending is high. Margins on physical products are tighter than software. The business is viable but requires more capital upfront and the path to profitability is longer. A direct-to-consumer brand strategy is needed.

*Biggest risk:* Feasibility and time-to-market. Physical products take longer and cost more to get to market than digital ones. The user should validate demand with a prototype before committing to manufacturing.

**UVP:**
For parents of children under five who struggle to stay organized during travel, the TravelKit provides a purpose-built travel organizer that keeps every child essential within reach by organizing items by moment of need (departure, in-transit, arrival, and emergency) rather than by item type.

---

### EXAMPLE D: Process or System

**Context:** User is an operations manager at a mid-size professional services firm who wants to build an internal onboarding system for new client engagements. There is no product to sell externally. The goal is to standardize and speed up internal delivery.

**Problem Statement:**
Operations managers at professional services firms struggle to onboard new client engagements consistently because each project team improvises the setup process from scratch, leading to missed steps, delayed starts, and early client frustration.

**BBM Scores (push rubric):**
Desirability: 5/5 (High confidence, problem source is direct experience) | Feasibility: 5/5 (High confidence) | Viability: 3/5 (High confidence, scored as return on investment)

*Desirability reasoning:* The pain is felt acutely and repeatedly by the user themselves and their team. It is not an assumed problem. Missed onboarding steps and delayed starts are measurable and costly. The motivation to solve it is high and immediate.

*Feasibility reasoning:* A process or system MVP requires no new technology. It can be built using existing tools the firm already has: a shared document, a checklist, a project template, or a simple workflow tool. A first version could be piloted within a week.

*Viability reasoning:* This is an internal efficiency improvement, not a commercial product. Viability here means return on investment in time saved and error reduction rather than external revenue. The score reflects that there is no direct monetization path, but the business case for building it is clear and the cost of not building it is measurable.

*Biggest risk:* Adoption. Internal process tools frequently get built and ignored. The risk is not in building the system but in whether the team will use it consistently. The pilot plan needs to include a change management component, not just a technical rollout.

*Note on Viability for internal tools:* This is the reframe in the Viability guidance notes in Section 1, applied. Viability is scored as return on investment (time saved per engagement, errors eliminated, client satisfaction improvement) rather than as external revenue. A 3 is the appropriate and honest score, not a flag, and the reasoning says so explicitly so that Stage 3 does not read it as weakness.

*Note on Desirability confidence:* The user has lived this problem repeatedly and is scored at High confidence on that basis alone, with no public evidence gathered. This is the observation-counts rule in Section 1. A hypothesis about someone else's firm would have been capped at Low.

**UVP:**
For operations managers at professional services firms who struggle to onboard new client engagements consistently, the Client Launch System provides a standardized, repeatable onboarding process that every project team can follow from day one by replacing improvised setup with a sequenced checklist that covers every critical step from contract signature to first delivery milestone.

---

### EXAMPLE E: Audience Business (pull rubric)

**Context:** User is a structural engineer who wants to build a paid weekly publication and community for early-career engineers about how buildings actually get built, as opposed to how they are taught. Nothing is broken. Nobody is complaining. The push rubric would score this a 2 on every line, which is why it is scored on the pull rubric instead.

**Rubric choice:** Pull. The reader is not escaping a cost or a risk. They are reaching for competence, taste, and a professional identity they do not have yet. Scored on attraction, not relief.

**Problem statement:** Early-career structural engineers struggle to develop practical judgment in their first five years because formal training teaches codes and calculation while the reasoning behind real design decisions is transmitted informally, if at all, by whoever happens to sit near them.

**Problem source:** Direct experience, plus repeated observation. The user went through this and has since mentored eleven juniors through the same gap.

**BBM Scores (pull rubric):**
Desirability: 4/5 (Medium confidence) | Feasibility: 5/5 (High confidence) | Viability: 3/5 (Low confidence)

*Desirability reasoning:* Scored on attraction. There is an active scene: engineering subreddits with six figure memberships, several structural engineering podcasts with sustained audiences, and at least two paid technical newsletters in adjacent trades holding four-figure subscriber counts. Engineers publicly identify with their discipline and pay for professional development out of their own pockets when employers will not. It is a 4 rather than a 5 because none of the proven paid comparables are in structural specifically, so the willingness to pay is inferred from adjacent trades rather than observed in this one. Confidence is Medium for the same reason.

*Feasibility reasoning:* The user writes it. There is no build. A first issue can go out this week on an off-the-shelf publishing platform, and the community can start as a single group chat. The constraint is sustained weekly output over a year, not the setup.

*Viability reasoning:* The economics need roughly 400 paying subscribers at a realistic price to clear the user's income floor, and no comparable in structural specifically has been shown to reach that. This is a `?` dressed as a 3 and it is scored Low confidence deliberately. Resolved by: launching free, measuring whether 2,000 readers accumulate in six months, and asking twenty of them directly what they last paid for professional learning.

*Biggest risk:* Viability, and specifically the free-to-paid conversion that is the characteristic failure of pull businesses. A large free audience that never converts is the likeliest outcome and the plan has to be built against it.

**UVP:** For early-career structural engineers who want the practical judgment their degree did not teach them, The Load Path provides the reasoning behind real design decisions, one building at a time, by walking through actual projects with the engineer who made the calls and explaining what was rejected and why.

*Why the mechanism holds:* "A distinctive voice" would not be a mechanism. "The engineer who made the calls, explaining what was rejected" is one, and it is not something a publication without practitioner access can copy.

---

### EXAMPLE F: Hybrid, Regulated, Split Payer

**Context:** User is a paediatric speech and language therapist who wants to sell a home-practice app to parents, paired with fortnightly video reviews from a qualified therapist. Their employer is an NHS trust.

**Solution type:** Hybrid. **Lead component:** the service, meaning the therapist reviews, because that is what produces the outcome. **Supporting component:** the app, which in version one is a structured activity log and a video upload rather than an authored exercise library. Stage 2 will build the review workflow first and stub the library.

**Problem statement:** Parents of children in speech therapy struggle to keep home practice consistent between sessions because they are given exercises without feedback, cannot tell whether they are doing them correctly, and lose confidence within a fortnight.

**Who feels it:** The parent. **Who pays:** In private practice, the parent. In the larger market, the commissioning body or the school. The two have different reasons and the packet carries both.

**Problem source:** Direct experience on the feeler side, the user has watched this for nine years. **Hypothesis on the payer side:** nobody has confirmed that a commissioner would buy this, and that is recorded as the weaker of the two.

**BBM Scores (push rubric):**
Desirability: 5/5 (High confidence) | Feasibility: 2/5 (High confidence, regulatory gate fired) | Viability: `?` (resolution named below)

*Desirability reasoning:* Direct and repeated observation over nine years, and drop-off between sessions is a documented and measured problem in the field. Public evidence is thin because the people affected are not discussing it online, which under the observation rule does not mark the score down.

*Feasibility reasoning:* **The regulatory gate fired and it caps this at 2.** Delivering clinical feedback on a child's speech is regulated practice: it requires HCPC registration, which the user holds, but also professional indemnity that covers independent practice, information-governance handling of video of minors under UK GDPR, and DBS-cleared reviewers if the service scales beyond the user. Separately, the employment contract needs checking for a private-practice restriction, which binds as hard as any statute. The app itself is a weekend build; that is exactly why the levels above cannot be trusted here. Once the approval path is costed and timed, rescore. Recorded as the top row in Open Questions at High priority.

*Viability reasoning:* Scored `?`, not a number. Parent-paid private practice has known willingness to pay, but the user's stated goal is scale, and scale means commissioner-paid. Nobody has asked a commissioner. The payer-side problem source is a hypothesis and Viability follows the money, so no honest number exists. Resolved by: two conversations with commissioning leads about budget and buying process, which is also the highest-value thing in this packet.

*Biggest risk:* The `?` on Viability, which outranks the Feasibility 2. A 2 with a named approval path can be planned around; an unknown payer cannot.

**Flag:** Caution.

**UVP:** For parents of children in speech therapy who cannot tell whether their home practice is working, [name] provides fortnightly feedback from a qualified therapist on video of their own child by reviewing what the parent actually did rather than issuing another exercise sheet.

**Payer proposition:** For commissioners, the same service is measured drop-off reduction between funded sessions, which is cost avoided per referral rather than reassurance bought.
