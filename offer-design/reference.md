# Stage 4: Offer Design
## Knowledge File: Frameworks, Decision Rules, Templates, and Examples

---

## SECTION 0: LIVE RESEARCH PROTOCOL

This skill makes more checkable claims than any other stage in the pipeline. Every figure in a value stack is a market price someone can look up. Every claim about where a market is heading, how buyers behave, or whether a commercial model has a viable precedent is a claim about the present. Model knowledge has a training cutoff and a value stack that collapses under checking costs more than a modest one gains. Wherever a step is marked **[Live research available]**, follow this protocol.

**1. Offer, do not impose.** Ask before researching, then proceed on a yes. Phrase it as a quick, optional check: "Before we [do X], I can check current [scope] for you. Takes about 30 seconds. Want me to?" If the user declines, proceed on existing knowledge and mark anything it affected as "Unverified: based on model knowledge, not a live check." If the user says to always research, stop asking and run research automatically at each marked point for the rest of the session.

**2. Use whatever web capability is available.** Use your built-in web search and fetch, or an installed search tool if the environment has one (for example Firecrawl, Exa, or Jina). Do not depend on any single tool. If no web capability is available at all, say so once, proceed on model knowledge, and flag the affected outputs as "Unverified." Never block the interview waiting on a tool.

**3. Search narrow.** Build 2 to 4 targeted queries from what you already know: persona, problem, category, and geography. Specific queries beat broad ones. Run one round, then synthesize. If a step has several research needs, batch them into one pass rather than asking the user repeatedly.

**4. Synthesize, then confirm with the user.** Report findings as a short, cited list. Each claim gets a source and a date. Then ask the user to confirm or correct before the findings feed any framework, anchor, model, or claim. Flag any source older than about twelve months as possibly stale. Findings are evidence the user reacts to, not conclusions you impose.

**5. Record evidence in the Transfer Packet.** Put confirmed findings in the packet's "Market Evidence and Sources" block, one line each: the takeaway, the source URL, and the date checked (use today's date). Downstream stages read this block and reuse it instead of researching the same ground again. Value stack anchors are recorded separately in the packet's "Value Stack and Anchors" table, where every figure carries what it is anchored to, its source, and whether it is verified or an estimate.

**6. Stay honest.** Distinguish what you verified against a source from what you inferred. Never present an unverified figure as a fact, and never publish an unverified anchor. Anything not checked against a live source is marked as an estimate requiring verification before publication. Live research raises confidence; it does not replace the user's own knowledge of their market.

### Research scope for this skill

Eight marked points. More than any other stage, because this stage produces claims that go in front of buyers.

Naming research belongs to Stage 5, which does the naming. This stage checks what the category is allowed to claim, and hands that constraint forward.

**Step 1 (market screen).** Check both demand state and market direction. Founders reliably misread a large market as a hungry one and a collapse in buyer confidence as a collapse in demand. Those are different conditions and require different offers.
- Push query examples: `"[problem]" "looking for"`; `"[problem]" "tried" OR "switched"`; `"[problem]" cost`; `site:reddit.com "[problem]"`.
- Pull query examples: `"[category]" membership`; `"[category]" sold out OR waitlist`; `"[category]" community`; `"[category]" repeat customers`; `"[identity]" "I am" "[category]"`.
- Prefer rubric-relevant behavior: purchases and costly workarounds for Push; repeat attention, participation, membership, voluntary spending, waiting, collecting, invitation, and identity expression for Pull. Search volume and market size are context, not proof of hunger.
- Feeds: the demand-concentration criterion, market direction, and the go/no-go read.

**Step 2 (niche lock).** Before locking a niche, offer to check whether each candidate is actively seeking a solution, can actually pay without negotiating, and can actually be reached.
- Example queries: "[niche] [problem] forum"; "[niche] average revenue"; "[job title] typical budget for [category]"; "[niche] association OR directory OR community".
- Feeds: the demand intensity, active solution-seeking, ability-to-pay, and targetability columns of the niche scoring table.

**Step 3 (avatar language table).** The strongest research use in the whole pipeline. Mine the buyer's own words from places they talk unprompted: forums, review sites, community threads, question sites, competitor complaint threads. Pull actual phrasing, not paraphrase.
- Push examples: "[problem] site:reddit.com"; "[competitor] review complaints"; "[persona] forum [problem]"; "why is [problem] so hard".
- Pull examples: `"[category]" "love" OR "favorite"`; `"[category]" "joined" OR "member"`; `"[category]" "worth it"`; `"[identity]" community "[category]"`.
- Feeds: the language table, objection order, prior attempts for Push, and attraction, identity language, participation, and continuation motives for Pull. Quote real phrasing verbatim where you find it.

**Step 9 (trim).** Before scoring value and cost, offer to check what competitors actually deliver at what price, so the quadrants are populated with facts rather than assumptions.
- Example queries: "[competitor] what's included"; "[category] deliverables"; "[competitor] onboarding process".
- Feeds: the value column of the four quadrants, and the delivery vehicle rejections.

**Step 10 (value anchoring).** Every figure in the stack needs a real, checkable market price behind it. This is the point where research is not optional if the buyer is analytical.
- Example queries: "[professional] hourly rate [geography]"; "cost of [equivalent service]"; "[competing product] price"; "average cost of [the problem going unsolved]".
- Feeds: the "Anchored to" and "Source" columns of every stack line. Anything not verified is marked as an estimate.

**Step 8 (offer model lab).** Look for evidence that buyers in this or an adjacent category already accept the proposed payment unit and value exchange. Research precedents, not novelty for its own sake.
- Example queries: "[category] membership pricing"; "[adjacent job] pay per outcome"; "[category] sponsored by employer"; "[category] usage pricing"; "[complementary service] included with membership".
- Feeds: the model portfolio, rough unit economics, assumed frequency or utilization, and transfer-risk note.
- A comparable model proves that behavior can exist. It does not prove this crowd wants it. Keep the conversation test load-bearing.

**Step 12 (enhancement).** Look for genuine deadlines before manufacturing any. Many categories have regulatory dates, seasonal cycles, filing windows, or renewal calendars that make urgency free and honest.
- Example queries: "[industry] deadline [current year]"; "[category] busy season"; "[regulation] compliance date"; "[industry] annual calendar".
- Feeds: the urgency mechanism and the campaign calendar.

**Step 5 (claim limits).** Where the availability audit suggests a claim may be restricted, check what this category is actually allowed to say, on platforms and in regulation. Outcome-plus-duration constructions are a common trigger for both.
- Example queries: "[platform] advertising policy [category]"; "[platform] prohibited claims [industry]"; "[category] ad restrictions [current year]"; "[industry] advertising regulation".
- Feeds: the capped-terms list, the guarantee options at Step 12d, and the "claims that cannot be made" line handed to Stage 5 for naming and to Stage 6 for copy.

If research moves a niche choice, commercial model, anchor, or claim, show the before and after so the user sees what changed and why.

---

## SECTION 1: STEP 0, SOURCE INGESTION AND THE GROUNDING GATE

Step 0 is the highest-leverage step in the pipeline. Everything downstream is only as good as what goes in here.

### Why this exists

Founders describe their business in the language they have been using for years, which is precisely the language that has stopped working. The framework this stage is built on was extracted from a real application, and its highest-value findings did not come from the framework at all. They came from reading the business's own materials: case files, a change log, a real filled customer worksheet. The framework determined that those questions got asked. It could not answer them.

**This stage produces questions reliably. It does not produce judgment.** A session run on nothing but a verbal description of the business will produce a plausible, generic, useless offer, which is worse than no offer because it feels finished.

### What to ingest, in priority order

0. **`usl-build/buyer-conversations.md`, if it exists.** Check for this file by name before asking the user anything. It is written by `/buyer-conversations` and it is built backwards from this step: its language table feeds Step 3, its objections carry their original order because that order sets copy sequence, its cost figures feed the Step 1 market screen and Step 10 anchoring, its break-point sequence feeds Step 6, and its budget-holder finding answers the ability-to-pay criterion at Step 1. Read **Section 9, what is missing**, before anything above it, and treat it as the boundary of the evidence. Honour its tags exactly: quotations are observed, `[user summary]` lines are not quotable, and `[public source]` or `[past artifact]` lines are Track B material sitting inside a Track A document.
1. **Actual customer artifacts.** Filled forms, completed worksheets, submitted applications, support tickets, call recordings, onboarding documents. These contain the customer's real words and real failure points.
2. **Failure post-mortems.** Refund reasons, churn interviews, rejection analyses, complaint logs, lost-deal notes. **Failure documents are the densest source of offer material in any business.** They name the problems the product does not yet solve.
3. **Product state documents.** Dev docs, roadmaps, feature lists, changelogs. Needed for status tagging at Step 7 and to prevent promising things that do not exist.
4. **Existing marketing.** Website copy, brand guidelines, past campaigns. Needed for voice calibration and to find claims that fight each other.
5. **Change logs and decision history.** Reveals what has already been tried and reverted, which prevents recommending a known failure.
6. **Purchase data.** Who actually bought. Overrides all reasoning at Steps 2 and 3.

### The two tracks

The original framework's hard rule is to refuse to proceed without ingested source material. In this pipeline that rule would block every pre-launch user, so it is implemented as an explicit, declared choice between two tracks rather than a refusal. Which track is running is stated to the user, recorded in the packet, and carried on every finding.

**Track A: observed.** Real customer artifacts exist. Ingest them in the priority order above. Read failure documents before success documents. Note what is absent from the materials, not just what is present: missing testimonials, missing win/loss notes, and missing customer records are themselves findings.

**Track B: reasoned.** Pre-launch or no artifacts. Only the upstream Transfer Packets and the user's own knowledge are available. Say so plainly and without softening:

> "You have no customer artifacts yet, so everything we build about your buyer in this session is reasoned, not observed. I will mark it that way and name what would prove each piece wrong. That is honest and it is workable, but it means the avatar and the journey value inventory are the two things to validate first with real people."

Then do three things: offer live research as the strongest available substitute (Steps 1, 2 and 3 in particular), name the cheapest real artifact the user could go and get before committing money to traffic, and mark every avatar and problem finding as reasoned.

**Hybrids are normal.** Most businesses have some artifacts and not others. Run Track A on what exists and Track B on the rest, and be specific in the packet about which is which.

### The upstream confidence and orientation controls

Track, caps, and Desirability orientation answer different questions:

| Control | Question answered | What it cannot do |
|---|---|---|
| Track A / B / hybrid | Where did this Stage 4 finding come from? | It cannot raise confidence or release an upstream cap |
| Caps applied | How much weight can the affected BBM dimension bear, and what evidence is still required? | A cap does not decide whether a finding is observed or reasoned |
| Push / Pull rubric | What kind of demand behavior and value should this stage look for? | It does not prescribe a product type or revenue model |

Read the Desirability rubric, every cap, the affected dimension, its resolution condition, and the latest Stage 1 revision before the market screen. Classify cap status as `none/not applicable`, `active`, `released`, or `unknown`. Stage 2 and Stage 3 may carry the fields, but only the Stage 1 revision ledger is authoritative about release. An older Stage 1 schema with no field means unknown, not none. A legitimate standalone Stage 4 entry with no Stage 1 contract is `not applicable`; do not invent a hidden cap, but still judge current evidence through the grounding and traffic-readiness gates.

Do not count artifacts mechanically. Track A with three weak conversations can coexist with an active vantage cap. Public research never releases that cap. If current evidence appears to satisfy the resolution condition but the ledger has not been revised, flag Stage 1 for review rather than silently promoting confidence here.

Applied notes differ in consequence. The flat-access note prevents access from inflating Desirability and creates no independent block. An active vantage cap keeps Desirability confidence at Low or `?`. An active regulatory gate constrains Feasibility and may block a claim, test, delivery method, or launch. Carry the affected dimension and consequence, not merely the cap's name.

For the rubric, use the primary action motive recorded upstream. Push means escape from cost, risk, delay, frustration, loss, or obligation. Pull means attraction toward identity, belonging, mastery, taste, entertainment, delight, or a desired experience. Mixed businesses preserve the primary motive and note the secondary. If current evidence contradicts the inherited choice, show the conflict, confirm any proposed correction, and mark Stage 1 for review.

For a legitimate standalone entry with no inherited rubric, establish and confirm Push or Pull from the first action motive before the market screen. Do not manufacture upstream provenance, but do not leave the orientation unknown when present evidence answers it.

### The marking convention

Every finding at Steps 2, 3, 6 and 7 carries one of two tags:

- `[observed]`: traceable to a specific artifact, a real customer's words, or purchase data. Name the source.
- `[reasoned]`: derived from the upstream packets, the user's belief, or general knowledge. State what would falsify it.

Live research findings are `[observed]` only when the source is the buyer speaking for themselves (a review, a forum thread, a complaint). A market report is evidence about the market, not about this buyer, and it is cited but does not upgrade an avatar finding to observed.

### Decision rules

- **If purchase data exists, it beats reasoning. Always.** If the people who actually bought contradict the persona from Stage 1, the buyers are right and the persona gets revised here.
- Read failure documents before success documents.
- Do not accept a roadmap as a capability list. Roadmap items are not built.
- Do not read the existing marketing first. It anchors on the current framing before the facts are in.
- If the upstream packets contain a Market Evidence and Sources block, reuse it rather than re-researching the same ground.

### Failure modes

- Proceeding on the founder's description alone without declaring Track B. Produces a generic offer that reads as finished.
- Reading marketing copy first.
- Treating the Stage 1 persona as observed when it was reasoned. Check the upstream packet's own confidence note.

---

## SECTION 2: FOUNDATION (STEPS 1 TO 4)

Stages are ordered by dependency, not by importance. Foundation errors propagate through everything after them; packaging errors are cheap to fix. Skipping forward produces rework: avatar before niche produces a fuzzy avatar, journey inventory before avatar produces generic findings, stack before trim produces an unfulfillable offer.

---

### STEP 1: MARKET SCREEN

**Purpose.** Establish whether this market can support an offer at all, before designing one.

**The five criteria:**

1. **Is demand already concentrated?** This is the operational meaning of a "starving crowd": not a demographic and not a large total market, but a group already expending money, time, reputation, attention, participation, or repeated effort to make progress. Route the evidence through the inherited rubric. For **Push**, look for purchases, costly workarounds, switching, active searches, deadlines, repeated failed attempts, and dissatisfaction. For **Pull**, look for voluntary category spending, repeat attention, membership, participation, waiting, collecting, invitation, identity expression, and communities people choose to remain part of. Market size, survey intent, likes, verbal enthusiasm, and free first-time reach do not qualify on their own.
2. **Is the desired progress specific and consequential?** Pain is one form, but strong approach-driven desire can also carry an offer. Require a clock, a cost, a consequence, an identity stake, or a vivid opportunity. Write it as a specific situation, never a category.
3. **Who can purchase without negotiating?** The test is not "who wants this" but "for whom is the price arithmetic rather than a decision." Ability to pay is a targeting criterion, not an afterthought.
4. **Are they reachable?** A segment that cannot be targeted is not a segment. Name the actual mechanism: a job title on a professional network, a search intent, a specific community, a list someone owns, or a credible warm route.
5. **Which way is the market moving?** Growing, flat, shrinking, or shifting.

**Crowd strength and founder fit are separate.** Score the crowd on its demonstrated behavior before considering the user's access, authority, or enthusiasm. Then record founder fit beside it. A hungry crowd the user cannot reach or credibly serve is a real market but may be the wrong first market. A high-fit arena with no demonstrated demand is an interest, not yet an offer opportunity.

**Decision rules:**

- **Interrogate the user's read on market direction rather than accepting it.** Founders frequently mistake a collapse in confidence for a collapse in demand, because both feel like "sales got harder." Demand falling and confidence falling require completely different offers: one needs a new market, the other needs proof and certainty. Get this wrong at Step 1 and the entire offer is aimed at the wrong problem.
- Do not rely on training knowledge for anything about the present state of a market. **[Live research available]**
- **If criterion 1 fails, do not paper over it with better packaging.** Either narrow to where the behavior exists or name the cheapest demand test before proceeding on Track B.
- **If criterion 3 fails, stop.** Redesign the target, payer, or value exchange before continuing. An offer aimed at people who cannot fund it needs a different payer, not more bonuses.

**Output.** A written answer to each of the five, a short demand-evidence ledger separating behavior from inference, founder fit recorded separately, sources for anything about current conditions, and a note naming which criterion is weakest.

The demand-evidence ledger must state the inherited rubric and classify each retained signal as Push-relevant, Pull-relevant, or relevant to both. Do not mark a Pull crowd weak because nobody complains, and do not mark a Push crowd strong because people enjoy free content about the topic.

---

### STEP 2: NICHE LOCK

**Purpose.** Pick one explicit target. Not a segment description: a target so specific that a stranger could tell you whether a given person is in it.

**Procedure:**

1. Generate 4 to 6 candidate niches from the market screen.
2. Score each on the five columns below.
3. Pick one, and **write down why each rejected candidate was rejected.**

| Candidate | Demand intensity | Active solution-seeking | Can pay without negotiating | Urgency | Evidence and product fit | Existing proof | Targetability | Conversation access |
|---|---|---|---|---|---|---|---|---|

The rejected list is not documentation hygiene. It becomes the expansion roadmap at Step 13 and it prevents re-litigating the same choice in three months.

**Decision rules:**

- **Start where demand evidence, credible access, and proof overlap, not where the pool is biggest.** Existing buying behavior plus case material, templates, and demonstrated expertise in a specific profile beat a larger addressable market with no track record.
- **Beware the segment that wants it most and qualifies least.** Almost every market has one: large, eager, high-intent, and structurally a bad fit. It looks like the obvious first niche and it is usually the worst one, because delivering to them produces failures and reputational damage.
- **Ability to pay outranks fit.** A segment with perfect product fit and no budget fails the ability-to-pay criterion and should be a later niche, use a different payer, or receive a different offer.
- **Targetability and conversation access are different.** An audience may be selectable in an ad platform and still be hard to interview, or reachable through warm relationships and impossible to buy efficiently. Record both. Early-stage offers benefit disproportionately from real conversation access.
- Tag the pick `[observed]` if purchase data supports it, `[reasoned]` otherwise.

**Output.** A one-paragraph explicit niche statement, plus the scoring table with reasons for each rejection and a likely order for the rejected candidates as future niches.

---

### STEP 3: AVATAR

**Purpose.** Produce the emotional and linguistic detail that Steps 6, 12 and 13 depend on. This is the step that most determines whether the copy at Stage 6 sounds like the buyer or like the business.

**Required components:**

1. **Situation.** Demographics, role, tenure, credentials, constraints.
2. **Financial position.** Two separate facts: absolute ability to pay, and what they are actually sensitive about. These are often different. Someone can be insensitive to a price and highly sensitive to waste.
3. **Central motive.** The core of the avatar. For Push, identify the unresolved tension. For Pull, identify the attraction, desired identity, experience, participation, or version of themselves they choose.
4. **Prior behavior.** For Push, what they have already tried. For Pull, what they already consume, join, return to, collect, attend, share, or pay for.
5. **Objections, ordered by when they surface.** Order matters as much as content, because it determines copy sequence at Stage 6.
6. **Language table.** Two columns: the words they use, against the words the business currently uses. This single artifact does more for copy than the rest of the avatar combined. **[Live research available]**
7. **Where they are reachable.** Specific mechanisms, not channel categories.
8. **Disqualifiers.** Who is explicitly not the target. Keeps targeting tight and prevents scope creep in the offer.

**The language table:**

| What they say | What the business currently says |
|---|---|
| [Their actual phrasing, quoted] | [The current marketing term] |

Fill the left column from real sources wherever possible. A language table built entirely from imagination is a list of guesses about a buyer's vocabulary, which is the exact failure the table exists to prevent.

**The central-motive test.** Before proceeding, state one sentence. For Push: the unresolved tension. For Pull: what they choose, want to become part of, want to express, or want more of. Then test every proposed element of the offer and funnel against it: does this resolve the Push condition or deepen and deliver the Pull attraction?

In the source application the tension was "I cannot tell whether my case is genuinely borderline or whether I am doubting myself." That one sentence determined the lead magnet type, why phone calls outperformed email, why a community would have been counterproductive, what the guarantee should be, and what the headline promise had to be. One sentence, five downstream decisions. Do not skip it and do not settle for a vague one.

**Decision rules:**

- **Reconcile, do not collapse, two fields.** Push/Pull is the inherited demand rubric: what first makes the buyer act. Approach/avoidance is the emotional register: how the action feels. They often align, but a Push buyer may approach mastery after removing a risk, and a Pull buyer may avoid exclusion while seeking belonging. Record both when they produce different decisions.
- **Distinguish approach motivation from avoidance motivation.** Is the avatar reaching toward something they want, or escaping something they fear? This changes which enhancement levers work at Step 12. Avoidance-motivated buyers respond well to urgency and badly to manufactured scarcity, because scarcity applied to a frightened person reads as exploitation.
- If current buyer evidence contradicts the inherited rubric, state the before and proposed after, confirm with the user, and mark Stage 1 for review. Stage 4 may route the current session on the confirmed correction, but it never rewrites or silently releases upstream evidence controls.
- Mark the avatar `[observed]` or `[reasoned]`. If it is not derived from purchase data or real customer words, say so and state what would falsify it.
- Do not re-derive the Stage 1 persona. Carry it forward and sharpen it. If this step contradicts it, say so explicitly and record the change.

**Output.** The full profile, central motive sentence, Desirability orientation, emotional register, language table, and a confidence note naming what would falsify the pick.

---

### STEP 4: CONVERSATION THESIS AND FUNNEL ARCHITECTURE

**Purpose.** Decide which buyer conversation is most valuable, create a legitimate value exchange that earns it, and design the path into it. Run this before the full offer is built so the session optimises for learning and commitment rather than merely for traffic.

**The highest-value conversation:**

Name all five before designing the funnel:

1. The person who experiences the value and the person who controls the money. If different, state both.
2. The recent situation, live decision, chosen experience, or identity context the conversation must surface.
3. Push: the current workaround, spend, or failed attempt. Pull: current category participation, repeat behavior, voluntary spend, alternative experience, and what makes them return or identify with it.
4. The smallest rubric-relevant behavioral commitment that would move confidence: an application, disclosed spend, supplied access, joined experience, repeat visit, contribution, invitation, paid diagnostic, deposit, activated trial, renewal, or signed next step.
5. The decision the business will make with the result.

**The provisional conversation offer.** Offer something that creates standalone value and makes the buying motive observable. It may be free or paid. "Book a call" is an instruction, not an offer. A disguised sales call is not standalone value. The conversation offer should help the right buyer even if they do not buy the core offer.

- **Push-shaped options:** diagnostic, audit, benchmark, teardown, plan, trial, or paid entry engagement. They should surface a recent condition, workaround, cost, risk, deadline, or relief action.
- **Pull-shaped options:** preview, tasting, access pass, live experience, challenge, sample, workshop, founding cohort, collectible, or identity-relevant artifact. They should make voluntary choice, participation, return, invitation, or continued access observable without forcing a pain narrative.

These are option territories, not required formats. The cheapest offer that produces standalone value and the relevant behavior wins.

Define the signal ladder before launch:

| Signal | Meaning | Examples |
|---|---|---|
| Curiosity | Attention without material commitment | click, like, email open, compliment |
| Qualification | Evidence the Push condition or Pull attraction and buyer fit are real | completed diagnostic, specific recent story, repeat participation, category spend, fit data supplied |
| Commitment | The buyer spends scarce time, access, attention, reputation, or money | shares data, brings budget owner, joins and participates, returns, invites, pays diagnostic |
| Purchase | Money or a binding commercial next step moves | deposit, paid trial, membership, renewal, signed proposal, purchase |

Optimise for qualified information and commitment, not raw response volume. Five relevant payer conversations with recent Push attempts or demonstrated Pull participation can outweigh a hundred curiosity clicks.

**Decisions required:**

1. **Who are the ads for?** If the business has multiple buyer types, ads target one. Serving two in one creative serves neither.
2. **Where does traffic land?** A dedicated, instrumented, de-indexed page beats an existing page. Instrumentation converts "the right tone" from an opinion into a measurement.
3. **What is the ask?** Contact details, a low-priced entry offer, or the full purchase. For cold traffic to an unknown brand at meaningful price points, contact capture usually wins.
4. **What happens after capture?** Email nurture, a call, or self-serve.

**Decision rules:**

- **Instrument before optimising.** The minimum list: scroll depth against section boundaries, time to first CTA interaction, CTA clicks by position, drop-off point, and source down to the individual creative.
- **De-index ad landing pages.** Pages competing in organic search produce muddy attribution.
- **If a human call is in the funnel, capacity becomes the cap on ad spend.** This changes the business shape from self-serve to consultative and needs its own script, boundaries, and capacity plan. Establish the real number of calls per week before any budget is set. Spend that outruns fulfilment does not produce growth, it produces burned leads and damaged reputation.
- Test the funnel shape against the central motive from Step 3, not against general best practice.

**Output.** The highest-value conversation, the provisional conversation offer, the signal ladder and decision it will inform, the funnel described in words, the instrumentation list, and the capacity constraint with its actual number if a human step exists.

---

## SECTION 3: CONSTRUCTION (STEPS 5 TO 11)

---

### STEP 5: VALUE EQUATION AUDIT

**Purpose.** Determine which of the four value terms are actually available to this business before designing against them.

Value = (Dream Outcome x Perceived Likelihood of Achievement) / (Time Delay x Effort and Sacrifice)

| Term | Direction | Question |
|---|---|---|
| Dream outcome | Increase | What do they actually want? |
| Perceived likelihood of achievement | Increase | Why would they believe it works for them? |
| Time delay | Decrease | How fast do they get value? |
| Effort and sacrifice | Decrease | How much do they have to do? |

**The availability audit.** Not every term is available to every business. The standard treatment assumes the top of the equation is the lazy path because anyone can inflate it. That is not universally true.

For each term, ask:
- Can we make claims here at all, or are there legal, regulatory, or ethical limits?
- Do competitors have assets here that we lack (track record, outcome statistics, brand)?
- Is this term within our control, or does it depend on the customer or a third party?

If a term is capped, say so and reallocate effort to the others.

**Route the equation through the inherited rubric:**

| Term | Push interpretation | Pull interpretation |
|---|---|---|
| Dream outcome | Relief, avoided loss, reduced risk or effort, restored control | Identity, belonging, mastery, taste, delight, access, status, or quality of experience |
| Perceived likelihood | Confidence that the condition will improve or the process will work | Confidence that the promised experience, access, quality, or social value will actually be delivered |
| Time delay | Time to relief, certainty, or the first avoided failure | Time to the first meaningful taste, moment of belonging, expression, progress, or delight |
| Effort and sacrifice | Work, switching, setup, exposure, or coordination required to escape the condition | Friction that interrupts choosing, participating, returning, contributing, collecting, or belonging |

The equation remains an audit, not proof that every Pull offer needs a transformation claim or that every Push offer needs an outcome guarantee.

**The certainty substitution.** When perceived likelihood cannot be claimed through outcome statistics, substitute **certainty about the customer's own position for certainty of outcome.** This generalises well. When you cannot promise the result, you can often promise clarity about where they stand, which is a promise you can keep and frequently the thing they actually want more.

**The bottleneck test.** For the time-delay term, find where the delay actually sits. Ask the user directly:

> "Does that hold end to end, or only after some precondition?"

Founders reliably quote their fastest internal step as the total timeline. In the source application, "one day" was true of drafting and false of the journey, because the real delay was entirely in customer-supplied inputs. That single question redirected the whole offer from "we are fast" to "we absorb the slow part."

**Rule: the speed claim belongs on the bottleneck, not on the fast step.**

**Output.** The four-term audit, capped terms named with the reason, substitutions proposed, and the bottleneck located and named.

---

### STEP 6: JOURNEY VALUE INVENTORY

**Purpose.** Build the complete journey inventory the offer will answer: problems and relief for Push, or attraction, participation, identity, continuation, and their frictions for Pull.

**Procedure:**

1. **Map the journey into phases.** Not marketing funnel stages: the customer's actual sequence, from before they choose through well after the first value moment.
2. **For Push, name the task in each phase and apply the four pressure tests:**
   - **Hard or confusing:** "I do not know how"
   - **Slow:** "This takes too long"
   - **Expensive or not worth it:** "This costs too much"
   - **My situation breaks it:** "This will not work for someone like me"
3. **For Pull, map the chosen experience:** discovery and choice, first meaningful taste, deepening, participation or contribution, return, identity expression or sharing, and renewal or natural completion. At each phase capture what increases attraction and what interrupts it.
4. **Write every retained motive, desired moment, or friction in the customer's voice**, in quotation marks, as they would actually say it.

**Decision rules:**

- **Extend past where the product currently ends.** For Push, downstream anxiety and handoff failures often reveal cheap value. For Pull, the first experience is not the end: return, deeper participation, contribution, invitation, collection, renewal, and natural completion reveal whether attraction persists.
- Extend before the product starts too. The choosing phase contains the objections that copy has to answer at Stage 6.
- **Push blind spot:** the fourth pressure test produces the most differentiated findings and is the one most often skipped. Run it on every step.
- **Pull blind spot:** continuation. A first click or pleasant trial is not sustained attraction. Map what makes someone return, participate more deeply, invite, collect, renew, or identify with it.
- Customer voice is not a stylistic preference. Use the language table from Step 3 rather than translating attraction or frustration into business language.
- Tag each retained finding `[observed]` or `[reasoned]`.

**Output.** A phase-by-phase table in customer voice. Push records problems and relief sought. Pull records desired moments, attraction and participation drivers, identity signals, continuation motives, and frictions. Seek saturation rather than a quota; stop when new passes produce duplicates, and continue when obvious before, during, or after phases are absent.

---

### STEP 7: VALUE MECHANISMS AND STATUS

**Purpose.** Convert the journey inventory into named, status-tagged value mechanisms. This is the highest-leverage step after ingestion.

**Procedure:**

1. For Push, cluster duplicate symptoms into root problems. For Pull, cluster desired moments, participation drivers, identity signals, continuation motives, and frictions. Preserve original wording, frequency, sources, and journey locations.
2. Ask what the offer must show, give, remove, absorb, coordinate, enable, deepen, or make easier.
3. Name the value mechanism. Do not create a separate component for every phrasing of the same underlying driver.
4. **Give it a working label.** Unnamed solutions are invisible: a label is what makes a capability show up in the stack, survive the trim, and land in the build plan. Labels are descriptive and stable, because the packet, the PRD, and the build sequence all refer to components by them. The customer-facing display name is written in Stage 5, in the voice, and mapped back to the label there.
5. **Tag its status.**

**Status tagging:**

- **BUILT:** exists and works today
- **PARTIAL:** exists but incomplete, or exists as a document rather than a workflow
- **GAP:** does not exist

For pre-product businesses, substitute **WILL BUILD / WON'T BUILD / UNDECIDED.**

**Why this matters more than it looks:**

1. It converts an offer document into a build roadmap. This is what Stage 7 reads.
2. It prevents promising things that do not exist, which is the most common way a strong offer becomes a fulfilment disaster.
3. It reveals what can launch immediately. In the source application, status tagging showed the business could launch at four times its current stated value on already-built components while building the rest.
4. **It surfaces BUILT-but-unmarketed capabilities, which are free value.** Businesses routinely have differentiated features that appear nowhere in their marketing. These are the cheapest wins available and status tagging is how you find them.

**Decision rules:**

- Component names at this stage are **working labels**, not customer-facing copy. A label says what the thing is and what it does: "done-for-you setup and metric mapping," "client communication template library." The label is the contract; the presentation comes later. Stage 5 runs a display-name sweep that renders each customer-facing component in the brand voice and records the label-to-display mapping, so nothing a buyer reads is ever named before the voice exists. If a label here is reaching for a marketing effect, make it plainer. It will get its lift in Stage 5, from a voice, instead of here, from nothing.
- Cross-reference against the product documents from Step 0. Do not accept the user's status claims uncritically. Check the dev docs.
- **Flag any value mechanism appearing in three or more phases.** For Push this is usually a structural bottleneck. For Pull it may be the repeat attraction or continuation driver. Either is usually the correct next build, and triangulation across independent phases is stronger evidence than one assertion.

**Output.** Named, status-tagged value mechanisms mapped back to the observed journey findings, a separate list of BUILT-but-unmarketed items, and the repeat-appearing bottleneck or attraction driver named explicitly.

---

### STEP 8: OFFER MODEL LAB AND DELIVERY VEHICLES

**Purpose.** Separate what the business makes from what the buyer may actually pay for. Make the conventional offer compete against materially different commercial models before choosing the delivery vehicles and cutting the stack.

### Part A: offer model lab

The inherited Stage 3 revenue model is a hypothesis, not a constraint. Generate a small portfolio of offer theses. Always include the conventional direct-purchase version as the control. At least one other thesis must change the **unit of sale** or the **value exchange**; renaming a bundle or adding bonuses is packaging, not a different model.

Use the lenses below selectively. The goal is material difference, not one idea per row.

| Lens | Conventional end | Model-shift questions |
|---|---|---|
| What is paid for? | The product or service | Are they really paying for access, availability, speed, certainty, convenience, coordination, curation, belonging, status, risk absorption, or a milestone? |
| Unit of sale | Item or project | Could the honest unit be time, access, membership, usage, seat, cohort, priority, milestone, outcome, coverage, or portfolio? |
| Payer | The beneficiary | Does an employer, sponsor, supplier, platform, landlord, insurer, family member, or budget owner benefit enough to pay? |
| Ownership | Keep the thing | Is access, rental, replenishment, managed availability, or guaranteed readiness more valuable than ownership? |
| Boundary of free | Sample as promotion | Could the familiar core be included while the scarce complement is paid, or could a diagnostic be paid and credited to implementation? What funds the free layer? |
| Bundle boundary | Current product category | What does the buyer need immediately before, during, and after the product? Is the more valuable offer the whole job rather than this component? |
| Individual versus group | One buyer, one purchase | Could a team, cohort, household, network, or shared environment buy more naturally? |
| Risk and timing | Pay before value | Can payment attach to a milestone, verified usage, retained access, or another trigger without creating perverse incentives or legal exposure? |

**The inversion prompt.** Ask: "If the obvious product became free or merely included, what scarce or recurring value around it could honestly carry the price?" Then ask the reverse: "If the surrounding service disappeared, what would someone still pay to own?" These prompts expose the real value source. They do not imply that free, subscription, or outcome pricing is better.

**Coffee example.** The conventional thesis sells cups of coffee. An alternative sells dependable workspace access through a membership and includes coffee. The customer may be paying for a seat, reliable Wi-Fi, predictable spend, community, and permission to stay, while the beverage becomes an acquisition and retention cost. The model works only if the target segment uses those benefits, membership revenue covers beverage and occupancy costs, seat utilization remains viable, and non-membership sales are not destroyed. "Free coffee" is not the insight; discovering which scarce surrounding value the crowd repeatedly needs is.

If Stage 1 classified this crowd as Pull, the journey inventory would map choosing the space, the first meaningful visit, return, participation, identity and invitation, and renewal or natural completion. A short access pass could be the conversation offer, with return, guest invitation, and paid continuation as stronger signals than satisfaction after one free coffee. None of those choices follows from the word `Pull` alone; they follow from observed repeat behavior around the space.

**Score the theses:**

| Thesis | What is paid for | Payer | Unit | Demand evidence | Conversation yield | Customer economics | Business economics | Credibility | Fulfilment | Reversibility | Strategic fit |
|---|---|---|---|---|---|---|---|---|---|---|---|

Conversation yield means the thesis gives a qualified buyer a reason to reveal a recent situation, priority, current spend, objection, or buying path. It is not predicted click volume.

Eliminate any model that requires unobserved behavior, hides an unavoidable cost, attracts the wrong user, creates obvious abuse, or cannot be explained in one clean sentence. Select:

- **Primary thesis:** strongest combined evidence and economics.
- **Runner-up thesis:** materially different and credible enough to test.
- **Conversation offer:** the smallest standalone value exchange that can discriminate between them.

Record why the conventional thesis won or lost. Novelty receives no points by itself. **[Live research available]** for comparable models and rough category economics; precedent reduces plausibility risk but does not replace this crowd's behavior.

Use the rubric to widen the relevant territory:

- **Push territories:** absorbed effort, coordination, speed, certainty, readiness, risk coverage, priority, managed availability, or outcome/milestone-linked value.
- **Pull territories:** access, continuity, membership, participation, curation, collecting, editions, identity, status, belonging, shared experience, or patronage.

Do not force the territory into the model. A Push membership can sell continuous readiness; a Pull one-off product can carry taste or identity. Score the actual thesis on observed behavior and economics.

### Part B: delivery vehicles

**The axes:**

| Axis | Options |
|---|---|
| Personal attention | 1:1, small group, one-to-many |
| Effort expected | DIY, done-with-you, done-for-you |
| Live medium | In-person, phone, video, email, chat, text |
| Recorded medium | Audio, video, written |
| Response speed | 24/7, business hours, within minutes, within a day |

**The stretch tests:**

**10x test.** If they paid ten times the price, what would you provide? Produces the genuinely high-value items and frequently surfaces an entirely separate premium offer.

**1/10th test.** If they paid a tenth, how would you still make them successful? Produces the minimum viable version and may identify the right conversation offer. Do not automatically give it away. A small price can be the qualification signal the business needs.

**Decision rules:**

- **Test each vehicle against the avatar's central motive, not against general best practice.** Standard instincts fail here. In the source application a video course, the default instinct for value stacking, was wrong because the buyer wanted a verdict rather than education. A community was actively counterproductive because peer comparison was already making the avatar more anxious. Both would have been recommended by any generic playbook.
- Record deliberate rejections with reasons. They prevent the same wrong instinct returning later.

**Output.** The scored thesis portfolio, primary and runner-up, selected conversation offer, why the conventional model won or lost, full delivery option list, 10x and 1/10th outputs, and a rejections list with reasoning.

---

### STEP 9: TRIM

**Purpose.** Cut to what is worth delivering.

Cost means cost to the business, including founder or expert time, which is usually the scarcest input and is routinely undercounted. Value is assessed against the four value-equation tests: will they financially value it, will it raise belief in success, will it reduce effort and sacrifice, will it reduce time to outcome.

| Quadrant | Action |
|---|---|
| High cost, low value | **Cut first** |
| Low cost, low value | **Cut second** |
| Low cost, high value | **Keep. This is the core of the stack** |
| High cost, high value | **Keep selectively.** Retain while volume is low; productise or price separately as volume grows |

**Decision rules:**

- **Prioritise build-once, serve-infinitely items.** These move the business in the right direction on both axes at once: easier to sell and easier to fulfil. In the source application nearly every low-cost high-value item had this property, which made it the single most efficient category of investment.
- **Do not optimise fulfilment prematurely.** A business that has not yet established demand should keep its unscalable high-converting elements even though they do not scale. The unscalable thing is often what is producing the yes.
- Name the capacity ceiling of every high-cost high-value item retained. **[Live research available]** on what competitors actually deliver, so the value column is populated with facts.
- **Stress-test the commercial model, not only the components.** Record rough revenue per unit, direct variable cost, constrained time, expected frequency or utilization, gross-margin direction, cancellation or abuse path, and what has to be true for the model to work. False precision is unnecessary; an unspoken economic dependency is not.

**Output.** Four populated quadrants, with the keep list annotated by build cost and status tag.

---

### STEP 10: STACK

**Purpose.** Assemble kept solutions into bundles with values attached.

**Procedure:**

1. Group kept solutions into bundles aligned to journey phases.
2. Give each bundle a name and a one-line promise.
3. Attach a value to each.
4. Total, and compare to the price and revenue-model hypotheses carried in from Stage 3.

**Value anchoring. Anchor every value to a real, checkable market price. Do not assign numbers.** **[Live research available]**

Acceptable anchors:
- What a professional charges for the equivalent
- What a competing product costs
- The documented cost of the alternative
- The quantified cost of the problem going unsolved

For each figure, record what it is anchored to, the source, and whether it is verified or an estimate. Anything unverified is marked as requiring verification before publication.

**Why this matters more than it appears.** In any market where the buyer is analytical, or where the purchase is consequential, an inflated anchor that collapses under checking damages more than a modest anchor gains. Sophisticated buyers check. The value stack's credibility is load-bearing for the entire offer, and one collapsed line takes the rest with it.

**Decision rules:**

- Target a total-to-price ratio in the range typical for the category. Ratios above roughly 10x strain credibility unless every anchor is independently verifiable.
- Keep status tags attached to every component. The stack is also the build roadmap.
- If a bundle's value cannot be honestly anchored, either find a real anchor or drop the figure and describe the bundle qualitatively. A qualitative bundle is better than a fabricated number.
- This is where the Stage 3 price and revenue-model hypotheses get validated or revised. If the anchored total does not support the hypothesis, say so and revise the price or model, not the anchors.
- For membership, usage, outcome, or subsidized models, a large lifetime value stack is not enough. Test the payment unit, expected frequency, direct cost, capacity exposure, cancellation path, and who bears the risk.

**Output.** The bundle table with names, promises, anchored values with sources and verification status, status tags, and a total compared against the price.

---

### STEP 11: MAKE THE VALUE LEGIBLE

**Purpose.** Make every real component legible without forcing a theatrical bonus structure onto a model that is stronger as a coherent whole.

**The principle.** Unnamed components are invisible. Enumeration makes them real. Bonus framing is one presentation option, not a requirement and not a substitute for substance.

**Procedure:**

1. Identify the core: the thing they think they are buying.
2. Name the components required to fulfil the core promise as **included**.
3. Label something a **bonus** only when it is genuinely additional, independently useful, and not necessary for the promised outcome.
4. Choose the presentation: one coherent offer with enumerated inclusions, core plus a small number of real bonuses, or tiered access where the selected commercial model requires it.

**Decision rules:**

- **Register is separable from substance.** Escalating reveals repel analytical buyers, premium buyers, and buyers making consequential purchases. Name everything, anchor where appropriate, and present it as a clear enumeration.
- **Do not hollow out the core.** If essential value has been relabelled as bonuses, restore it to the core. A membership or managed service should usually read as a coherent system, not a pile of gifts.
- A component is only distinct when it is a real thing that gets done. Inventing components is fabrication, not enumeration.
- No eclipse ratio or bonus count is required. The strongest structure is the one that makes the selected value exchange easiest to understand and believe.

**Output.** The core, included components, any genuine bonuses, and the chosen presentation structure with one sentence explaining why it fits this buyer and model.

---

## SECTION 4: PACKAGING (STEP 12)

---

### STEP 12A: SCARCITY (A FUNCTION OF QUANTITY)

Three types: limited slots, limited bonuses, never-available-again.

**Decision rules:**

- **Prefer real constraints to manufactured ones.** Most businesses have a genuine capacity limit somewhere: expert time, onboarding bandwidth, review capacity. State it with its reason. "Limited to X per month, because each one is personally reviewed" is true, self-justifying, and converts an operational constraint into a selling point. The scarcity and the differentiator become the same fact.
- **Avoidance-motivated buyers punish manufactured scarcity.** Check the emotional register from Step 3. Fake limits applied to frightened people read as exploitation and do lasting damage.
- **Never-available-again requires an honest version or it should be dropped entirely.** In most businesses there is none. Price grandfathering is the usual honest adjacent option, and only if a price rise is genuinely intended.
- Publishing a slot limit requires knowing the real number first. Get it from the capacity work at Step 4.
- In Pull markets, editions, cohorts, events, physical capacity, creator attention, or genuine access boundaries can be part of the value. Identity and exclusion do not make an invented limit honest. State the operational or creative reason the boundary exists.

---

### STEP 12B: URGENCY (A FUNCTION OF TIME)

Four mechanisms: rolling cohorts, rolling seasonal, promotional or pricing, exploding opportunity.

**Decision rules:**

- **Look for existing real urgency before manufacturing any.** **[Live research available]** Many markets have genuine deadlines built in: regulatory dates, seasonal cycles, expiry dates, filing windows, market windows. Real urgency outperforms manufactured urgency and carries no risk.
- **Match the cohort interval to the constraint, not to convention.** Monthly cohorts add friction that can defeat a genuine customer deadline. A weekly cycle usually does not, and it batches the constrained resource, creates a real recurring deadline, and makes the capacity limit legible.
- **Map the category's natural calendar.** Many markets have annual rhythms that amount to a free campaign calendar. Find them before inventing promotions.
- **Distinguish urgency-to-start from urgency-to-finish.** Where rushing the customer produces bad outcomes, urgency to begin is honest and aligned with their interest, while urgency to complete is not. This also resolves the apparent conflict between urgency and any honesty-gate positioning.
- Avoid buy-today bonus urgency where the buyer is stressed or the purchase is consequential. Cycle-based urgency is structurally honest because the cycle is real.
- For Pull, prefer genuine release dates, seasons, live events, cohort starts, edition windows, or participation calendars. Do not manufacture a problem deadline for an experience people are choosing.

---

### STEP 12C: ADDITIONAL BONUSES, WHEN REAL

"No bonus layer" is a valid outcome. When genuine additional items exist, they should be low-cost high-value items from Step 9 and should solve the **next** problem from Step 6. Do not relabel fulfilment essentials as gifts.

**Presentation script, per bonus:**

1. The problem it solves, in customer voice
2. What it is
3. How it was created or discovered
4. What it changes for them, mapped to a value-equation term
5. Proof
6. A vivid picture of them already using it
7. An anchored price

**Decision rules:**

- **Never fabricate origin stories.** Element 3 requires real history. If it is not known, mark it as a placeholder for the user to supply. Invented origin stories are dishonest and, with analytical buyers, self-defeating.
- Tools and checklists beat additional training. Lower effort and lower time means higher value.
- **Prioritise BUILT-but-unmarketed items from Step 7. These are free.** The best bonus is often an existing capability the business has never sold, because it costs nothing and frequently eliminates a major objection outright.

---

### STEP 12D: RISK REVERSAL AND GUARANTEES

Four types: unconditional, conditional, anti-guarantee, implied or performance.

**Decision rules:**

- **Audit which types are legally and structurally available before designing.** In regulated categories the strongest type, outcome-based, is often unavailable, which forces the strategy onto the others. Determine this first rather than designing a guarantee that cannot be used.
- **Unconditional money-back on a retained digital deliverable is an abuse vector.** It needs either a crisp trigger or a withheld component.
- **Conditional guarantees that align incentives are the strongest general-purpose option.** A guarantee conditioned on the customer's own inputs, for example "delivered within X of your materials arriving," is honest, achievable, and pushes the customer to relieve the business's own bottleneck. Guarantees that align incentives outperform guarantees that merely transfer risk.
- **The anti-guarantee is underrated where a qualification gate exists.** "All sales final, because we tell you before you pay whether this is right for you" is only credible if the business genuinely turns people away. Where it is credible, it converts a negative into proof of integrity, and it is operationally free. Most businesses cannot use it. Those with a real qualification step should.
- Never suggest a guarantee the user is not actually prepared to honour. Ask directly: "What are you willing to stand behind?"
- All guarantee wording needs professional review in regulated or high-consequence categories. Flag it; do not resolve it.

**Route risk reversal through the rubric.** Push guarantees commonly stand behind a controlled relief process, delivery, timing, or a condition the business can influence. Pull guarantees should usually stand behind access, delivery quality, cancellation boundaries, authenticity, or the promised experience. Do not invent an outcome failure for a buyer who is purchasing taste, participation, identity, or delight. For Pull, a clear trial, easy cancellation, sample, preview, or access boundary may reverse the relevant risk better than a dramatic guarantee.

---

### NAMING IS NOT DONE HERE

The offer name and the lead magnet name are built in **Stage 5 (`/brand-strategy`, Step 8)**, not in this stage. A name has to be filtered against a brand voice, and that voice does not exist until Stage 5 defines it. Naming before then means naming against nothing, then discovering the conflict when it is expensive to change.

What this stage owes Stage 5 is the raw material, gathered into the packet's Section 10:

- **The dream outcome in the customer's own language** (Step 5, plus the language table from Step 3). This is the Goal component.
- **The identity axis the niche is cut on** (Step 2). Field, specialty, vertical, life stage, or geography, whichever is most identity-salient to this buyer. This is the Avatar component, and it is what gives a clean ad-set variant structure later.
- **Any interval the process reliably hits** (Step 5's bottleneck work). Name the deliverable the interval attaches to, or state plainly that no interval is reliable yet. An interval that slips is worse than no interval.
- **The register constraint** (Step 3's emotional register). An avoidance-motivated buyer punishes hype; an approach-motivated buyer tolerates more heat.
- **Any claim the category forbids** (Step 5's availability audit and Section 6 below). Outcome-plus-duration constructions are a common platform policy trigger and, in regulated categories, a legal exposure.

At the end of Phase 5, give the offer a **working title**: a plain descriptive handle so the documents have something to call it, labelled provisional. "The setup and reporting package" is a working title. Do not construct it, do not weigh register, and do not run a platform policy check. That is Stage 5's job and it will do it properly.

The same split applies one level down. Component working labels from Steps 7, 10 and 11 stay exactly as they are: they are the identifiers the PRD and the build sequence depend on. Stage 5's display-name sweep writes the customer-facing rendering of each one and records the mapping, so the label survives as the contract and the display name carries the voice.

---

## SECTION 5: SEQUENCING (STEP 13) AND CROSS-CUTTING PRINCIPLES

### STEP 13: SEQUENCING

**Purpose.** Convert the offer into a launch order. Sort every element into four categories:

1. **Ships now, zero build.** Usually: claiming BUILT-but-unmarketed capabilities, positioning changes, enumeration, honest framing changes.
2. **Cheap builds, high value.** The low-cost high-value quadrant from Step 9. Days of work.
3. **Real builds.** The repeat-appearing bottleneck or attraction driver from Step 7.
4. **Blocked on an unknown.** Capacity numbers, legal review, cost sizing.

**Decision rules:**

- Launch on category 1 alone if it clears a credible value ratio. Do not wait for the full stack.
- Add components or genuine bonuses as they ship rather than promising the complete stack on day one.
- Anything blocked on legal review stays blocked. Do not launch it and fix it later in a regulated category.

Categories 2 and 3 are the build scope that Stage 7 reads. Carry them into the packet in enough detail that a PRD can be written from them.

### Paid-traffic readiness gate

Set one status at the end of the stage:

| Status | Conditions | Permitted next move |
|---|---|---|
| Ready | No active material cap; demand, payer, claims, fulfilment, capacity, and economics can bear ordinary acquisition spend | Proceed to the planned launch after downstream brand and page work |
| Test only | Cap status is unknown, or a non-demand uncertainty permits a small pre-budgeted experiment with a stopping rule | Run only the named test; do not describe the offer as launch-ready or scale spend |
| Not ready | Active Desirability cap, unresolved payer confidence, legal or regulatory block, or another active cap prevents the offer bearing traffic | Run the upstream resolution action before paid traffic |

Track A does not imply `Ready`. Three weak conversations or a folder of artifacts can coexist with an active cap. Paid traffic never releases a vantage cap; only the buyer evidence named upstream and recorded in the Stage 1 revision ledger does. If new evidence appears sufficient, mark Stage 1 for review and keep the status below `Ready` until the revision exists.

### The offer conversation test

Run this before committing to a full launch when the commercial model, payer, unit of sale, or entry offer is still reasoned. It validates the value exchange and buying path; it does not replace `/buyer-conversations`, which validates the underlying problem.

Specify:

1. **Theses compared.** Usually the primary and runner-up from Step 8. If only one is credible, compare its two most important payment or entry variants.
2. **Audience.** A small number of people who fit the locked niche, including the budget owner when the feeler and payer differ.
3. **Exact invitation.** The conversation offer and what the buyer is asked to do.
4. **Minimum honest commitment.** Prefer behavior that costs scarce time, access, reputation, or money.
5. **Capture.** Exact language, recent situation, current workaround and spend, objection order, who approves, accepted or declined next step, and why.
6. **Decision rule.** State in advance what would keep the primary, promote the runner-up, revise the offer, or send the work back to problem discovery.

Do not treat compliments, hypothetical willingness to pay, likes, opens, or undifferentiated bookings as success. Useful signals include a completed application, supplied data, introduced budget owner, paid diagnostic, deposit, activated trial, signed next step, or purchase. A rejection with a specific economic reason is more informative than enthusiasm with no behavior.

### The fourteen cross-cutting principles

These apply at every step rather than at one.

1. **The living document with a change log.** Write to the packet in the same session as each decision, not at the end. Log what changed and why. The reasoning behind rejected options is as valuable as the conclusions, because it prevents re-litigating settled questions and reveals when a conclusion was built on an assumption that has since changed.

2. **Separate verified facts from estimates.** Mark every number as verified or estimated. Flag anything requiring verification before publication. In any market with an analytical buyer, a single collapsed claim damages more than several good ones gain.

3. **Capacity is the cap on demand generation.** If any part of fulfilment depends on a constrained human resource, that constraint caps ad spend. Establish the number before the budget. This is frequently the single most overlooked constraint in offer design, because offer work feels like a marketing exercise and capacity feels like an operations problem.

4. **Voice calibration is a real constraint.** Offer construction frameworks carry an implicit register. Where that register fights the brand, separate the substance from the delivery. The mechanics almost always transfer; the cadence often should not.

5. **Check whether the free tier claims sufficiency.** Businesses that give away genuinely useful material frequently include language claiming the free material is complete. That sentence argues directly against the paid offer. Be generous with the material and precise about the boundary: "You now know what you need" rather than "you now have everything you need." Costs nothing to fix and is a common, invisible leak.

6. **Build an offer for the people who fail the qualification gate.** Any offer with a qualification step produces rejected leads. They are typically motivated, able to pay, and have a real problem. Treating them as dead is a significant loss. A structured path to becoming qualified is usually low fulfilment cost, converts a dead end into a pipeline on a known timeline, and manufactures future core customers.

7. **Find the repeat-appearing value mechanism.** Track which gap surfaces across multiple independent steps. For Push this is often a bottleneck; for Pull it may be the attraction or continuation driver. Convergence across the value audit, customer artifacts, and journey inventory is stronger evidence than any single assertion and usually identifies the correct next build.

8. **Approach versus avoidance motivation.** Established at Step 3, applied at Step 12. Frameworks generally assume approach motivation. Avoidance-motivated buyers respond differently: urgency lands harder, manufactured scarcity backfires, hype reads as predation, and restraint reads as trustworthiness.

9. **A starving crowd is a demand state.** It is evidenced by what people are already doing to make progress: spending, searching, switching, waiting, improvising, missing deadlines, or repeating failed attempts. It is not inferred from audience size, identity, enthusiasm, or the founder's affinity for the market.

10. **Make the obvious offer earn its place.** Treat the inherited product, payer, unit, and revenue model as hypotheses. Generate materially different commercial theses, then prefer the one with the strongest evidence, economics, credibility, and fulfilment. Creativity without constraint is novelty; constraint without divergence is packaging.

11. **Optimise for conversation yield, not lead volume.** The best early offer often earns fewer but more revealing exchanges with the right payer. Define which behavior counts as curiosity, qualification, commitment, and purchase before outreach or traffic begins.

12. **Provenance is not confidence.** Track A/B records where a finding came from. Caps record how much the affected conclusion can bear. Never use one as a proxy for the other.

13. **Orientation is a router, not a format.** Push/Pull changes relevant demand signals, conversation behavior, value moments, model territory, and risk reversal. It never mandates membership, community, subscription, diagnostics, or services.

14. **Traffic readiness is explicit.** No packet leaves paid acquisition as an implied next step. Record `Ready`, `Test only`, or `Not ready`, the controlling evidence, and what changes the status.

---

## SECTION 6: REGULATED AND HIGH-CONSEQUENCE CATEGORIES

Adaptations for categories where claims carry legal exposure: healthcare, legal, financial, immigration, education outcomes, and anything affecting someone's status, safety, or money. Check at Step 0 whether the business is in one of these, and apply this section from Step 5 onward if it is.

**What changes:**

1. **Outcome claims are usually unavailable.** This caps the perceived-likelihood term at Step 5 and eliminates the strongest guarantee type at Step 12d. Plan around it from the start rather than discovering it at the end.
2. **The certainty substitution becomes central.** Where you cannot promise the result, promise clarity about the customer's position. This is usually deliverable, usually what they actually want, and usually safe.
3. **Manufactured urgency and scarcity carry real risk**, not just credibility risk. Enforcement attention in these categories is meaningfully higher.
4. **Every human touchpoint widens exposure.** A static disclaimer on a website does not cover what a person says on a call, or what a reviewer writes in feedback, or what a numerical score implies. Each added human or algorithmic judgment step needs its own boundary review.
5. **Scoring and assessment outputs sit closer to the line than descriptive outputs.** A number plus a comparison to prior outcomes reads more like a prediction than a comment does.
6. **Platform advertising policies add a second constraint** on top of the legal one, particularly around outcome-plus-duration claims.

**The standing instruction: flag these for professional review; do not resolve them.** This stage can identify where a boundary exists. It cannot place the boundary. Surface every instance explicitly with a note that it requires qualified review, and leave anything unresolved in category 4 at Step 13 rather than launching provisionally.

---

## SECTION 7: OFFER DOCUMENT TEMPLATE

The shareable standalone document generated at the end of every Stage 4 session. It should be readable by a co-founder, a marketer, or a copywriter in under 10 minutes and should contain everything needed to put the offer in front of a buyer. Every section must be completed. If something is genuinely unknown, write "Not yet determined" and note what is needed to resolve it.

---

```markdown
# Offer Document
## Stage 4 Output | USL Academy

**Business / Product Name:** [Name]
**Date:** [Date]
**Prepared for:** [User's name or "USL Academy User"]

---

## THE OFFER IN ONE PARAGRAPH

[Who it is for, the progress they seek, what they are really paying for, the unit and price, what they get, and what happens if it does not work. Write this last.]

---

## WHO THIS IS FOR

**Niche:** [The explicit niche statement. Specific enough that a stranger could tell you whether a given person is in it.]

**Their central tension / attraction (central motive), in one sentence:**
> [Push: the unresolved tension the offer answers. Pull: the attraction, identity, experience, or participation it delivers.]

**Prior behavior:** [Push attempts and workarounds, or Pull consumption, participation, return, identity expression, and category spend]

**Explicitly not for:** [Disqualifiers]

---

## WHY THIS CROWD, NOW

**Desirability orientation:** [Push / Pull + inherited reason; note any confirmed revision]

**Demand state:** [Push: spending, attempting, switching, searching, deadlines, or workarounds. Pull: repeat attention, participation, membership, category spending, waiting, collecting, invitation, or identity expression.]

**Strongest behavioral evidence:** [Specific observed behavior and source, or "Reasoned; not yet observed"]

**Trigger:** [The clock, cost, consequence, identity stake, or opportunity that makes action timely]

**Founder fit, recorded separately:** [Why this business can credibly reach and serve the crowd]

---

## THE PROMISE

**Dream outcome:** [One vivid, specific sentence in the customer's own language]

**What we can honestly claim:** [After the Step 5 availability audit. If outcome claims are capped, state the substitution being used instead.]

**Where the real delay sits:** [The bottleneck. The speed claim, if any, belongs here.]

---

## THE COMMERCIAL MODEL

**What the customer is really paying for:** [Product / access / availability / speed / certainty / convenience / coordination / curation / belonging / status / risk absorption / milestone / other]

**Beneficiary:** [Who gets the value]
**Payer:** [Who funds it]
**Unit of sale:** [Item / project / membership / usage / seat / cohort / priority / milestone / outcome / other]
**Payment timing:** [When and on what trigger money moves]

**Why this model beat the conventional version:** [Or why the conventional direct-sale model remained strongest]

**Economic conditions:** [The frequency, utilization, margin, capacity, cancellation, or abuse assumptions that must hold]

---

## WHAT IS INCLUDED

Components and any genuine bonuses below are listed under their working labels. Stage 5 produces the customer-facing display names; do not publish these labels on a page.

**Core offer:** [The thing they think they are buying, under its working label]

| # | Component | What it does | Value | Anchored to | Verified? |
|---|---|---|---|---|---|
| 1 | | | | | |
| 2 | | | | | |

**Genuine additional bonuses (write "None" when the offer is stronger as a coherent whole):**

| # | Bonus | The problem it solves (customer voice) | Value | Anchored to | Verified? |
|---|---|---|---|---|---|
| 1 | | | | | |
| 2 | | | | | |

**Total enumerated value:** [Sum]
**Price:** [Number]
**Ratio:** [Total to price]

Any figure marked unverified must be checked against a live source before this document is published.

---

## RISK REVERSAL

**Risk-reversal type:** [Unconditional / Conditional / Anti-guarantee / Implied / Trial / Sample / Cancellation / Access or delivery commitment / None]

**Exact wording:** [The guarantee as it would appear on the page]

**Why this type:** [What the Step 12d availability audit and Push/Pull router found]

**Requires professional review:** [Yes, and what specifically / No]

---

## SCARCITY AND URGENCY

**Scarcity:** [The real constraint and its reason, or "None. No honest constraint exists at this stage."]

**Urgency:** [The real deadline or cycle and where it comes from, or "None manufactured."]

---

## WORKING TITLE

**Working title:** [A plain descriptive handle. Provisional.]

The offer is named in Stage 5 (`/brand-strategy`, Step 8), once a brand voice exists to filter the name against. The inputs that decision needs are gathered below.

**Naming inputs for Stage 5:**
- Dream outcome in the customer's own words: [ ]
- Identity axis the niche is cut on: [field / specialty / vertical / life stage / geography / other]
- Reliable interval, and the deliverable it attaches to: [ , or "None reliable yet"]
- Register constraint: [Avoidance-motivated, so no hype / Approach-motivated, tolerates more heat]
- Claims this category forbids: [ , or "None identified"]

---

## THE FUNNEL

**Ads target:** [One buyer type]
**Traffic lands on:** [Page, de-indexed yes or no]
**The ask:** [Contact capture / entry offer / full purchase]
**After capture:** [Nurture / call / self-serve]
**Instrumentation:** [The measurement list]
**Capacity ceiling:** [The real number, if a human step exists. This caps ad spend.]

---

## THE CONVERSATION OFFER

**Standalone value offered:** [Push example: diagnostic / audit / benchmark / plan / paid entry. Pull example: preview / tasting / access pass / experience / challenge / founding cohort / identity artifact. Other is valid.]

**Who it is for:** [Buyer and payer]
**What accepting requires:** [The smallest honest commitment]
**What the conversation must reveal:** [Recent situation, current spend or workaround, live decision, budget path, other]
**Curiosity signal:** [ ]
**Qualification signal:** [ ]
**Commitment signal:** [ ]
**Purchase signal:** [ ]
**Decision rule:** [What result keeps, revises, or replaces the selected offer thesis]

---

## LAUNCH SEQUENCE

**Offer conversation test before full launch:**
[Primary versus runner-up, audience, exact invitation, commitment asked for, capture plan, and decision rule]

**1. Ships now, zero build:**
[List]

**2. Cheap builds, high value:**
[List with rough effort]

**3. Real builds:**
[List, with the repeat-appearing bottleneck or attraction driver named first]

**4. Blocked on an unknown:**
[List, with what would unblock each]

---

## HOW CONFIDENT THIS IS

**Grounding:** [Track A observed / Track B reasoned / hybrid, and what specifically]

**Desirability rubric:** [Push / Pull + why]
**Caps applied and status:** [none / not applicable / active / released / unknown; affected dimension and resolution condition]
**Paid-traffic readiness:** [Ready / Test only / Not ready]
**What controls readiness:** [Evidence and exact action that would change the status]

**Validate first:** [The two or three findings that most need real customer contact before spending money on traffic]
```

---

## SECTION 8: Stage 4 TRANSFER PACKET TEMPLATE

The structured handoff document that carries everything into Stage 5 (Brand Strategy), Stage 6 (Landing Page), and Stage 7 (PRD Generation).

**This packet is written incrementally, not at the end.** Create it at the first phase checkpoint and update it at every checkpoint after that. The `Status` line at the top is what `/build-loop` reads to decide whether Stage 4 is complete or resumable, so keep it accurate.

---

```markdown
# Offer Design Transfer Packet
## Stage 4 Output | USL Academy

**Business / Product Name:** [Name]
**Date:** [Date]
**Prepared for:** [User's name or "USL Academy User"]
**Status:** [in progress | complete]
**Last completed phase:** [Phase name, for resuming]

---

## 1. INPUTS CARRIED FORWARD FROM STAGES 1 TO 3

**Problem statement:** [Confirmed]
**Persona:** [Confirmed, and whether this stage revised it]
**UVP:** [Confirmed]
**MVP core features:** [List]
**Price hypothesis from Stage 3:** [Number]. **Validated / revised to [number]** at Step 10.
**Revenue-model hypothesis from Stage 3:** [Model]. **Validated / revised to [model]** at Steps 8 to 10.
**Desirability rubric from Stage 1:** [Push / Pull + reason; note any confirmed revision requiring upstream review]
**Caps applied:** [verbatim carry-forward]
**Cap status, affected dimension, and resolution condition:** [none / not applicable / active / released / unknown + details]

---

## 2. GROUNDING AND CONFIDENCE

**Track:** [A observed / B reasoned / hybrid]

**Confidence control:** [How the cap status limits this packet independently of Track]
**Paid-traffic readiness:** [Ready / Test only / Not ready + controlling reason]

**Source material ingested:** [List what was actually read, or "None. Pre-launch."]

**Notably absent:** [Missing testimonials, win/loss notes, customer records, and what that means]

**Marked reasoned (needs validation):** [The findings carrying [reasoned] that most affect the offer]

**What would falsify the avatar:** [One or two specific, checkable things]

---

## 3. NICHE AND AVATAR

**Locked niche:** [One paragraph, specific enough that a stranger could apply it]

**Demand state (the starving-crowd evidence):** [Specific buying, attempting, switching, searching, waiting, deadline, or workaround behavior. Separate observed behavior from inference.]

**Desirability orientation:** [Push / Pull + which demand signals and value shape apply]

**Founder fit, recorded separately:** [Access, authority, proof, and capability to serve]

**Rejected candidates (the expansion roadmap):**

| Candidate | Why rejected | Likely order as a future niche |
|---|---|---|
| | | |

**Central tension / attraction (central motive), one sentence:**
> [Push tension or Pull attraction / identity / experience / participation]

**Emotional register:** [Approach / Avoidance]. Keep distinct from Push/Pull; this determines which Step 12 levers are safe.

**Language table:**

| What they say | What the business currently says |
|---|---|
| | |

**Objections, in the order they surface:**
1.
2.
3.

**Disqualifiers:** [Who is explicitly not the target]

---

## 4. OFFER MODEL, CONVERSATION, AND FUNNEL ARCHITECTURE

**Highest-value next conversation:** [Who, what recent situation or decision it must surface, the commitment signal sought, and the business decision it informs]

**Offer theses considered:**

| Thesis | What is paid for | Payer | Unit | Why it won or lost |
|---|---|---|---|---|
| Conventional control | | | | |
| Creative alternative | | | | |

**Selected primary thesis:** [ ]
**Credible runner-up:** [ ]
**Conversation offer:** [Standalone value and what accepting it requires]

**Signal ladder:** Curiosity [ ]; Qualification [ ]; Commitment [ ]; Purchase [ ]

**Ads target:** [One buyer type]
**Landing:** [Page, de-indexed yes or no]
**The ask:** [What is requested]
**After capture:** [What happens]
**Instrumentation list:** [What gets measured]
**Capacity ceiling:** [The real number and what it caps, or "No human step in the funnel"]

---

## 5. VALUE EQUATION AUDIT

| Term | Available? | Notes |
|---|---|---|
| Dream outcome | | |
| Perceived likelihood | | |
| Time delay | | |
| Effort and sacrifice | | |

**Capped terms and why:** [Legal, competitive, or structural]
**Substitutions used:** [For example, certainty about position in place of certainty of outcome]
**The bottleneck:** [Where the delay actually sits. Any speed claim belongs here and nowhere else.]

---

## 6. THE OFFER

**Working title:** [Provisional handle. Stage 5 Step 8 produces the real offer name and lead magnet name.]
**Dream outcome:** [One sentence, customer language]
**What the customer is really paying for:** [Access / availability / speed / certainty / convenience / coordination / curation / product / milestone / other]
**Beneficiary:** [Who receives the value]
**Payer:** [Who funds it]
**Unit of sale and payment trigger:** [ ]
**Core:** [What they think they are buying]
**Included components:** [Working-label list]
**Genuine additional bonuses:** [Working-label list, or "None"]
**Risk reversal / guarantee:** [Type and exact wording, or "None"]
**Scarcity:** [The real constraint and its reason, or "None"]
**Urgency:** [The real deadline or cycle, or "None"]
**Price:** [Number and model]

---

## 7. VALUE STACK AND ANCHORS

Every figure carries what it is anchored to. Unverified figures must be checked before publication. Components are listed by working label; the customer-facing display names are produced in Stage 5 and recorded in its packet.

| # | Component | Value | Anchored to | Source URL | Verified / Estimate | Status |
|---|---|---|---|---|---|---|
| 1 | | | | | | BUILT / PARTIAL / GAP |
| 2 | | | | | | |

**Total:** [Sum] | **Price:** [Number] | **Ratio:** [x]

---

## 8. SOLUTION STATUS AND BUILD IMPLICATIONS

**Counts:** BUILT [n], PARTIAL [n], GAP [n]

**The repeat-appearing bottleneck or attraction driver:** [The value mechanism that surfaced in three or more journey phases. This is usually the correct next build.]

**BUILT but unmarketed (free value, claim immediately):**
[List]

**GAPs that the offer depends on:**
[List. Anything the offer promises that does not exist yet is a fulfilment risk, not a feature.]

---

## 9. LAUNCH SEQUENCE

**Offer conversation test:** [Primary versus runner-up, audience, exact invitation, minimum commitment, signals captured, and decision rule]

**Paid-traffic readiness:** [Ready / Test only / Not ready]
**Readiness evidence:** [Why]
**Resolution action before readiness can increase:** [Exact upstream evidence, review, or operational condition]

**1. Ships now, zero build:** [List]
**2. Cheap builds, high value:** [List]
**3. Real builds:** [List]
**4. Blocked on an unknown:** [List, with what unblocks each]

---

## 10. BRAND INPUTS (FOR Stage 5)

**Who we are for:** [The locked niche in plain language]
**The problem we solve:** [In the customer's words, from the language table]
**What makes us different:** [The point of difference the offer actually delivers]
**The feeling we want customers to have:** [Derived from the central motive]
**Register constraint:** [What the buyer's emotional register rules out. Avoidance-motivated buyers punish hype.]
**Brands or businesses the user admires:** [If captured]
**Tone direction:** [Any preference expressed this session]

**Naming inputs (Stage 5 Step 8 builds the offer name and lead magnet name from these):**

| Component | Input from this stage |
|---|---|
| Goal (the dream outcome) | [One sentence in the customer's own words] |
| Avatar (the identity axis) | [Field / specialty / vertical / life stage / geography / other, and which] |
| Interval | [The reliable interval and the deliverable it attaches to, or "None reliable yet, do not name one"] |
| Container and register | [The register constraint above, stated as what to avoid] |
| Forbidden claims | [Anything the category or a platform will not allow, or "None identified"] |

**Working labels to sweep:** [The bundle and bonus labels from Sections 6 and 7 that will appear in customer-facing material. Stage 5 writes a display name for each, or marks it "unchanged."]

**Working title used in this packet:** [Handle]. Stage 5 replaces it. Every downstream document should use the Stage 5 name once it exists.

---

## 11. LANDING PAGE INPUTS (FOR Stage 6)

**Headline direction:** [The dream outcome in customer language]
**Primary CTA goal:** [From the funnel architecture]
**Objections in the order copy must answer them:** [From Section 3]
**Language table:** [Reuse Section 3. This is the copy vocabulary.]
**Offer to feature:** [Core, included components, any genuine bonuses, guarantee, and price. Use the offer name from the Stage 5 packet, not the working title below.]
**Social proof available:** [What exists now]
**Claims that cannot be made:** [From the value equation audit and any regulated-category flags]

---

## 12. PRD INPUTS (FOR Stage 7)

The status tagging and launch sequence are build scope, not just marketing material.

**Must exist for the offer to be deliverable:** [Every GAP the offer promises]
**The correct next build:** [The repeat-appearing bottleneck or attraction driver, with why it was picked]
**Cheap builds worth scoping now:** [The low-cost high-value list]
**Explicitly out of scope for v1:** [What was cut at Step 9 and why]

---

## 13. OPEN QUESTIONS AND RISKS

| # | Item | Priority | Needs professional review? |
|---|---|---|---|
| 1 | | | |
| 2 | | | |
| 3 | | | |

---

## 14. MARKET EVIDENCE AND SOURCES

Findings confirmed through live web research during this session. Downstream stages reuse these instead of researching the same ground again. If no live research was run, write "No live research run this session."

| # | Finding (one line) | Source URL | Date checked |
|---|---|---|---|
| 1 | | | |
| 2 | | | |
| 3 | | | |

**Still unverified (worth a live check later):**
[Any anchor, market claim, or platform policy assumption that drove the offer but was not verified. If none, write "None."]

---

## 15. RECOMMENDED NEXT STEP

**Next module:** Stage 5: Brand Strategy Sprint

**Before paid traffic or a full launch:** Run the offer conversation test in Section 9 if the commercial model, payer, unit, or entry offer remains reasoned. The working labels are sufficient for this test; do not delay learning merely to polish a name.

**What to bring into that session:** Sections 3 and 10 above. The central motive and the language table are the two most useful things brand work has ever been handed, and Section 10's naming table is what Stage 5 Step 8 builds the offer name from.

**What Stage 5 will build on top of this:** Positioning, voice, values, and identity direction, calibrated against the register constraint named in Section 10. It also names the offer and the lead magnet, replacing the working title used here.

**One thing to think about before that session:** Which existing brand feels like it talks to your buyer the way you want to, and which one gets it wrong.

---

## 16. CHANGE LOG

One line per decision that changed, with the reason. Rejected options are recorded here so they are not re-litigated later.

| Date | What changed | Why |
|---|---|---|
| | | |
```

---

## SECTION 9: WORKED EXAMPLE

This continues the example from Stage 3 so the handoff is visible end to end.

### Example: B2B SaaS (ClientProof, an agency reporting tool)

**Step 0, grounding.** Track B, with a partial Track A. No purchase data and no customer artifacts, because the product is pre-launch. The founder did have two things worth reading: a dev changelog showing that a client-facing share link had been built and then never mentioned in any marketing, and a set of notes from three lost sales conversations. The lost-deal notes were the densest material in the session. All avatar and problem findings tagged `[reasoned]` except the three objections that came directly from the lost-deal notes, tagged `[observed]`. Stage 1 carried the Push rubric and an active vantage cap on Desirability confidence. The three notes did not release it: Track and cap status were recorded separately, and the offer started as `Not ready` for paid traffic.

**Step 1, market screen.** The crowd showed behavioral demand rather than merely reporting pain: owners were paying for reporting tools, rebuilding decks on weekends, and switching tools after lost renewals. Pain is specific and has a cost: a lost renewal is 2,000 to 5,000 in annual contract value. Ability to pay is clean, since an agency owner signs a 149 per month tool without a committee. Reachable through agency owner communities and a job title on a professional network. On market direction, the founder said the market was flat. Research showed agency count growing while average client tenure fell. That is a confidence problem, not a demand problem, which meant the offer needed to be about proving value, not about finding more agencies.

**Step 2, niche lock.** Locked: agency owners with 5 to 15 retainer clients who have lost at least one client in the last 6 months for reasons related to demonstrating value. Rejected: solo freelancers (cannot pay without negotiating), 50-plus person agencies (have in-house analysts, wrong fit), and in-house marketing teams (no renewal risk, so the central pain does not exist). Solo freelancers were the segment that wanted it most and qualified least.

**Step 3, avatar.** Central motive, expressed as a Push tension: *"I know the work is good, but I cannot prove it in a way the client believes, and I find out I failed at renewal."* Emotional register: avoidance. Language table entries pulled from community threads: they say "the client ghosted us at renewal," the business said "churn reduction"; they say "I spend my Sunday building the deck," the business said "reporting automation."

**Step 4, conversation thesis.** The highest-value conversation was not a generic demo. It was with an agency owner facing a renewal in the next 60 days, using their most uncertain account as the working case. The provisional conversation offer was a Renewal Risk Audit: the owner supplied one current report and answered five questions, then received a short risk map they could use whether or not they bought. A completed audit was qualification; supplying the report and bringing the account lead was commitment; paying for setup was purchase.

**Step 5, value equation audit.** Dream outcome and effort are both fully available. Perceived likelihood is capped, because there is no track record and no outcome statistics for a pre-launch product. Substitution used: certainty about where each client relationship currently stands, rather than a promise of retention. The bottleneck test changed the offer. The founder said reports generate in under a minute. Asked whether that held end to end, the answer was no: the real delay is the two to three hours of ad platform connection and metric mapping at setup. The speed claim moved off report generation and onto setup, and the offer absorbed the setup instead of claiming it was fast.

**Step 7, value mechanisms and status.** Forty-one Push findings produced thirty-three named value mechanisms. BUILT 11, PARTIAL 6, GAP 16. The client-facing share link was BUILT and unmarketed, and it directly answered the strongest objection in the lost-deal notes. Free value, claimed immediately. "Explain what this number means to a non-marketer" appeared in four separate journey phases, which made it the repeat-appearing bottleneck and the correct next build.

**Step 8, offer model lab.** The conventional control was a 149-per-month reporting software subscription. Two alternatives survived initial divergence: a per-client "renewal readiness" workspace priced by active account, and a service-backed membership that included software but charged for continuous review and priority setup. The second sounded more differentiated but depended on expert-review capacity and retention behavior with no evidence. The per-client model matched how agencies described the value and made a single at-risk account an easy entry point, so it became the primary. The service-backed membership remained the runner-up for the conversation test rather than being declared the winner because it was more novel.

**Step 10, stack with anchors.** Done-for-you setup and metric mapping anchored at 450, against a freelance analyst day rate verified against two published rates. Client communication template library anchored at 200, against a comparable template pack sold publicly. Monthly outcome summary anchored at 1,788 per year, against the cost of a single lost renewal at the low end of the founder's own range, marked as an estimate pending verification with real customers.

**Step 12, enhancement.** Scarcity is real and stated with its reason: 10 onboarding slots per month, because setup is done personally. Urgency came from the category calendar rather than invention: agency retainers concentrate their renewal dates in January and July, so the campaign calendar is free. Guarantee is conditional and incentive-aligned: fully configured within 5 business days of receiving platform access, since access is the customer-side bottleneck.

**Naming inputs handed to Stage 5.** Goal, in the customer's words: "know which client relationships are actually at risk before renewal, not after." Identity axis: agency size band, not geography. Interval: none reliable on the outcome, because retention is not something the business controls; the only reliable interval is 5 business days to full configuration, and it attaches to setup. Register constraint: avoidance-motivated, so no hype and no manufactured scarcity. Forbidden claims: none regulated, but an outcome-plus-duration construction ("keep every client in 90 days") would be both unprovable and a platform policy risk. Working title used in the Stage 4 documents: "the client retention reporting package." Stage 5 named it The Renewal Conversation Kit, with The Renewal Risk Audit as the lead magnet.

**Step 13, sequencing.** Ships now with zero build: claim the share link, enumerate the setup service that was already being done free and unnamed, and reframe the speed claim onto setup. That alone cleared a credible value ratio, but the active vantage cap kept paid-traffic readiness at `Not ready`. The founder first offered the audit directly to ten agency owners with near-term renewals and captured the conversations through `/buyer-conversations`: recent spend, whether they supplied a live report, whether the account lead joined, and whether they chose per-client access or continuous review. The precommitted decision rule was to keep per-client pricing if at least three qualified owners supplied data and two took a paid next step; promote the membership only if continuous review was requested unprompted by at least three qualified owners and the capacity math held. Stage 1's revision ledger released the cap only after those conversations supplied the named evidence. Stage 4 then moved readiness to `Ready`; the existence of the original notes and the offer-test result alone did not silently do it.
