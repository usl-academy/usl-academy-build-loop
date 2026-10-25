# Stage 0: Expertise Map
## Knowledge File: Probes, Tracks, Candidate Rules, Scoring, Templates, and Examples

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

One marked point, in Phase 2. This stage is introspective by design: the raw material is the user's own experience, which no search can retrieve, so research is limited to the single step where external facts genuinely beat introspection.

**Step 5 (shortlist enrichment).** Before scoring, offer to check the shortlisted rows (at most three) against the live market: whether money already moves against each problem, what existing tools or adjacent services cost, whether the category has a named line item, and, where a row has a professional buyer, whether that trade buys anything comparable out of its own pocket.
- Example queries: "[problem] software" or "[problem] tool"; "[category] pricing"; "[role] budget for [problem]"; "how much do people pay for [adjacent service]".
- For consumer rows, search what people in that situation already spend on adjacent things rather than looking for a business category.
- Feeds: the Budget scores and their confidence in Step 6, the shape reading, and, through the packet's evidence block, Stage 1's Desirability scoring, which reuses these findings instead of searching the same ground again.

If research changes a score, show the before and after so the user sees what moved and why.

**Watch provenance, not just age.** Pricing research on these categories returns vendor pages, comparison sites and affiliate roundups, all of which have a commercial interest in the numbers they publish. They are directionally useful and they are not market data. Label them that way. Also check which side of the transaction the money is on: finding that a category is well funded proves nothing if the buyers are the other party. A tool sold to lenders does not establish that borrowers pay.

---

## SECTION 1: THE THREE INTERVIEW LENSES

### How to run the lenses

One lens at a time. One probe at a time. Never present a lens as a list of questions to answer in bulk. Follow up on what the user actually said before moving to the next probe. Answers should be fast and badly written; this is raw material, not a document.

**Three probe sets are given for each lens, and none is the default.** One is phrased for organizational work (meetings, documents, systems, colleagues), one for hands-on and practice-based work (customers, patients, students, clients, materials, craft), and one for distribution (buyers, audiences, deals, referrals). Pick whichever fits the world the user named at intake, or blend them freely. Many people straddle all three. The headline question never changes; only the phrasing of the probes does.

---

### Lens 1: Capability (Step 1)

**What can you do, and what proves it?**

Each capability is recorded in four fields, written once and referenced by id (C1, C2...) everywhere after. Stripping the domain off a capability erases domain-specific value, so keep both the domain form and the portable form:

| Field | Enterprise seller | Engineering manager |
|---|---|---|
| **Domain capability** | Ten years selling enterprise software into mid-market logistics | Eight years engineering, four managing a platform team in payments |
| **Portable mechanism** | Can architect a multi-stakeholder deal and hold a process through six months of uncertainty; can get a first meeting with an operations director cold | Can scope, build and ship a software product solo; can tell when an engineering estimate is fiction |
| **Proof** | Carried the number three years running; named references at four companies | Shipped a working product; ran a team of nine |
| **Transfers to / does not transfer to** | Any considered B2B purchase with three or more stakeholders / self-serve consumer, PLG, anything sold without a conversation | Any arena where the answer might be software / arenas where the bottleneck is audience or supply rather than product |

**The last field is load-bearing.** It forces the honest question of whether an arena's bottleneck matches the mechanism at all: whether travel's bottleneck, say, is product or distribution. Write both halves, and let the "does not transfer to" half be uncomfortable.

Probes, organizational phrasing:
- What have you been trusted to run, and what happened?
- What do colleagues route around the official process to get from you?
- What decision are you consulted on that is not in your job description?
- **What have you built or fixed that outlived your time there?**

Probes, hands-on and practice-based phrasing:
- What do people bring you that they will not trust to anyone else?
- What can you do start to finish with nobody checking your work?
- What do you teach without needing notes?
- **What do you fix that other people make worse?**

Probes, distribution phrasing:
- Who can you get in front of that most people cannot?
- What have you got people to say yes to?
- **What have you sold that others could not?**
- Where do people already act on your recommendation?

*Distribution is a capability, not a personality trait. For some people it is the main one, and a map that ignores it produces rows anyone could pursue.*

---

### Lens 2: Friction (Step 2)

**What breaks, repeats, and costs in this arena?**

Probes, organizational phrasing:
- What broke on your watch that you had to fix?
- What did you build a workaround for because no tool existed?
- What decision have you watched go badly the same way, more than once?
- **What incident are you still slightly angry about?**

Probes, hands-on and practice-based phrasing:
- What goes wrong often enough that you have a routine for it?
- What do you keep re-explaining because nothing explains it for you?
- What can you tell is going to happen before it happens?
- **What went wrong once in a way you have never forgotten?**

Probes, distribution phrasing:
- What do buyers in this arena complain about while you are selling them something else?
- What stalls a deal or a decision here, every time?
- **What have you watched several of them buy and regret?**

Two retrieval questions that work in any set:
- **What have you explained more than five times this year?**
- **What do you wish someone had told you when you started?**

*The burned-by answers are the most reliable, because the memory is emotional and therefore still available. A failure with a repeating shape is a market. Record a problem source for every answer: direct experience, repeated observation, public evidence, or hypothesis. On Track B, the user does not have to have worked in the arena; a serious participant's observations count, and the arena relationship records the vantage they were made from.*

---

### Lens 3: Access (Step 3)

**Whose calls get returned?**

Two halves, and only the second is scored.

**Conversation access (recorded, not scored).** Who could the user get twenty minutes with this month to talk about this arena? The default ask is a count, a role, and a relationship: "four former colleagues who are now finance managers", "a trade group of about forty that answers within the hour". Names are never required, and not wanting to type real names into a chat says nothing about access. A category is not a list: "That is a market, not a list. How many could you message this week?" This half becomes the recruiting list `/buyer-conversations` starts from.

**Buyer access (noted here, scored in Step 6).** Separately: can the user reach the people who would actually pay? Who is that, and how far away are they?

Probes, organizational phrasing:
- Who would take a meeting with you next week?
- Which ten people could you message a question to today?
- What room can you get into that a stranger cannot?

Probes, hands-on and practice-based phrasing:
- Who would reply if you messaged them today, without wondering why you were in touch?
- Which group, forum, or chat would answer a question from you within the hour?
- Who refers people to you, or sends people your way?

Probes, distribution phrasing:
- Who takes your call because of what you have sold them before?
- Which buyers would give you twenty minutes as a favour?
- **Whose budget conversations have you been inside?**

*This is where long exposure to a field beats funding, and it is the lens people most consistently fail to count.*

---

## SECTION 2: THE TRACKS, THE ROUTER, AND THE RETRIEVAL AID

### The three tracks

The track is set at intake by one question: **"Why now, and where do you want this to point? Three answers are all fine: the field you just described, something else you care about, or you do not know yet."**

- **Track A, field-led (default).** The arena is the field the user described. Their expertise and their arena are the same world.
- **Track B, arena-led.** The arena is a different one they care about: a hobby, a community, a market they want into. Legitimate, common, and it changes two things: the default-route check runs, and the vantage rules below apply.
- **Track C, open.** No arena named. Propose two or three arenas from the capability inventory's "transfers to" cells and let the user pick. Arenas do not fall out of an inventory on their own: the model suggests, the user selects, and the packet records the arena as proposed rather than observed.

**Tracks can change after Step 1.** Step 1 ends by re-asking whether the named arena is still right given what the inventory turned up, and the inventory routinely opens arenas the user had not considered. A track change costs nothing: the inventory survives, and only Steps 2 to 4 point somewhere new.

### The default-route check (Track B)

Ask: **"What is the usual way people get into this arena? Does it use any of these capabilities?"**

The default route is named and examined, not assumed wrong. Three outcomes:

1. **The default route uses one of the user's capabilities.** Then it is also their route. Say so.
2. **The default route uses none of them.** Name the cost plainly: on that route they compete with everyone who arrives without their inventory. Keep it as a candidate row if the user wants it, flagged as a default-route row.
3. **A capability-native angle exists alongside it.** Generate at least one candidate from it and score it next to the default route. The comparison rests on scores, not on which one you or the user finds more familiar.

### Vantage recording

Recorded per arena at Step 1 and carried into every candidate row:

```
**Arena relationship:** operator | buyer | participant | community member | interested outsider
**Problem source:**     direct experience | repeated observation | public evidence | hypothesis
```

These feed the vantage cap in Section 4: a shallow relationship plus a hypothesis source caps Frequency and Pain. A serious participant has real insight and can also mistake personal preference for market pain; the fields exist so that distinction is recorded rather than argued about later.

### The router, from the user's first message

- **They have a fixed idea.** This stage is built to produce an idea, not to test one; Stage 1 (`/problem-validation`) is the right entry point. Before handing over, do one favour that costs a sentence: if they stated a solution ("an AI tool that chases invoices"), convert it once into the problem underneath using the table in Section 3, and give them that sentence to take into Stage 1.
- **They have a half-formed idea, or one they suspect is bad.** The most common answer, and it is neither yes nor no. Treat it as no and continue here; say that is exactly what this stage is for.
- **They want to run this anyway, to check their idea against everything else they know.** Continue, but **quarantine the idea first**: write it down, say plainly that it is set aside until Step 4, and do not refer to it before then. An idea left live in the conversation shapes every answer, and the map comes back agreeing with whatever they walked in with. At Step 4 it becomes one row among the others, with no special standing.

### The outgoing-messages search, as an optional retrieval aid

No longer a step. When Step 2's friction answers run thin, offer this; never assign it as homework. The point: things the user wrote in the moment, before they knew it mattered, beat present-tense recall, because memory reorganizes itself around the story you tell now.

Ask where they actually write to people, then pick a route:

- **A searchable written archive** (work email, Slack, Teams, anywhere with a real search box). Search sent, not received, for: `why is this so hard`, `there has to be a better way`, `workaround`, `manually`, `every time`, `I hate`, `spreadsheet`. The strings `manually` and `every time` find the most.
- **Searchable in theory, not in practice** (WhatsApp, phone messages: search runs chat by chat, no sent folder, office idiom returns nothing). Use the strings that survive the move: `every time`, `I hate`, `again`, `still waiting`, `nightmare`, `no idea why`, `keeps happening`.
- **No archive worth searching.** That says nothing about the depth of what they know. Ask: what do people repeatedly come to you for help with, and what did you last help someone do that they could not do alone? (The other two fallback questions are already Friction probes.)

Retrieval moves that need no search box, each a dated record of what actually happened: the last twenty people they spoke to and what each one wanted; the last month's calendar entries that were fixing something that should not have needed fixing; their invoices or bookings; their camera roll, because people photograph problems.

Everything any route returns is Friction material and candidate input.

---

## SECTION 3: CANDIDATE RULES

Candidates come from crossing the capability inventory with the arena's friction. The schema:

| # | Cap | Arena | Arena relationship | Problem | Problem source | Who feels it | Who pays | Edge |
|---|---|---|---|---|---|---|---|---|

**The two-trace rule.** Every row needs two independent traces: the Cap cell holds an id from the Capability Inventory (a capability is written once, properly, in Section 2 of the packet, and referenced by id, never re-summarized per row), and the Problem traces to a recorded source from the Friction or Access steps. A row with one trace is a hypothesis: kept, and marked as one. A row with no trace to anything the user said does not go in, however much it sounds like a business.

**Edge: what makes the row this user's.** One of `product angle`, `route to market`, or `both`. Most maps assume the edge is a product insight. For someone whose capability is distribution, the row is often a problem everyone in the arena already knows about, where the edge is that this user can reach the buyer. That is a legitimate shape, and the field exists so it can be said. When Edge is `route to market`, what delivery would require is written into the packet's Open Questions at High priority: a seller can validate and even sell before they can deliver, and Stage 2 decides the solution type, but Stage 2 has to meet that question rather than discover it.

**Default-route rows.** A row that uses no capability from the inventory is flagged as a default-route row: kept if the user wants it, with the cost named, which is that anyone could pursue it.

**No row-count target.** Build as many rows as the material honestly supports. Merge rows that share a buyer and a root cause, keep the sharpest phrasing, and say which rows you merged so the user can object. Three well-traced bets beat ten padded ones.

**"Who feels it" is a specific buyer,** in one of three shapes:

| Buyer shape | What it looks like | Example |
|---|---|---|
| **Organizational** | A role plus a context | "VP Engineering at a 200-person SaaS company", "case management director at a 300-bed hospital", "group controller at a 12-entity manufacturer" |
| **Consumer** | A person plus a situation | "new parents in dual-income households with a child under two", "adults six to twelve weeks post-discharge from physiotherapy" |
| **Professional, paying personally** | A trade plus a circumstance | "self-employed personal trainer with 20 or more regular clients and no cover", "classroom teacher buying their own resources", "solo electrician who quotes their own jobs" |

"Tech companies", "healthcare", "mid-market finance", "parents", and "other trainers" are none of them.

**The third shape is the one most often got wrong, and it matters more than it looks.** Anyone whose peers are their market is selling into it, which covers a very large share of the people who arrive at this stage. It behaves like neither of the others: there is no line item to point at, and it is not discretionary household spending either. It is a working person spending their own money on their own livelihood, which makes them both more motivated than a consumer and more price-sensitive than an employer. Score it on its own terms.

**Record who pays when it is not who feels it.** The split is normal for consumer and professional rows: the parent feels the problem and the adult child pays; the patient feels it and the clinic refers. A row that hides this looks stronger than it is, and the pressure-test asks about it directly.

### Problem spaces, not solutions

The Problem column is where this goes wrong. If the user writes a product, back up one step and write the problem that product would address.

| Not this | This |
|---|---|
| An AI tool that reviews Terraform PRs | Platform teams cannot tell which infra changes are risky before they merge |
| A marketplace for fractional CFOs | Series A founders make their first finance hire nine months too late |
| A Chrome extension for clinical notes | Clinicians spend evenings finishing documentation they could not finish in clinic |
| A meal-planning app for new parents | New parents stop eating properly in the first three months and fall back on takeaway they cannot afford |

The left column has already decided the answer, before talking to anybody. The right column leaves room for the answer to be a checklist, a service, a report, a class, or something nobody has thought of yet.

---

## SECTION 4: SCORING RUBRIC AND SHAPE READING

Score each shortlisted row (at most three) 1 to 5 on four criteria. Every score carries a **confidence level** (High / Medium / Low) with one line on what it rests on. Where there is not enough information to score honestly, put a question mark rather than guessing, and record what would resolve it. Question marks carry forward: Stage 1 acts on them, and `/buyer-conversations` seeds interview questions from them. Invented numbers cannot be un-invented.

**Frequency: how often does this bite one buyer?**

| Score | Description |
|---|---|
| 1 | Once ever, or less often than yearly |
| 2 | Once or twice a year, or once per episode with no natural repeat |
| 3 | Quarterly, or tied to a cycle that comes round a few times a year |
| 4 | Weekly to monthly; part of the regular rhythm of the work |
| 5 | Daily, or several times a week |

**Frequency means per buyer, not per market.** This is the single easiest score to get wrong. A problem that hits each person once but hits somebody somewhere every day is a 1 or 2, not a 5. Both readings are defensible in English and only one is meant here, and the difference inverts the shape reading, so state which you are using when you score it.

**Pain: what does it cost when it bites?**

| Score | Description |
|---|---|
| 1 | Mild annoyance, forgotten by the next day |
| 2 | Irritating; costs minutes and mood, not money |
| 3 | Costs real time or small money each instance; has earned a workaround |
| 4 | Costs significant money, margin, or standing; bleeds rather than explodes |
| 5 | Money, status, health, or safety at risk; escalated when it happens |

**Budget: who can pay, and how easily?**

| Score | Description |
|---|---|
| 1 | No budget exists, and this buyer pays for nothing of this form |
| 2 | Money exists somewhere, but spending it here would need a fight with no precedent |
| 3 | The buyer already pays for adjacent things of the same form, but for nothing in this space |
| 4 | Money already moves against this specific problem: headcount absorbing it, a temp hired, a half-solution bought |
| 5 | See the three anchors below |

**Budget has three anchors at 5, matching the three buyer shapes in Section 3:**

| Buyer shape | What a 5 looks like |
|---|---|
| Organizational | There is already a line item, and spending against it does not need to be argued for |
| Consumer | People in this situation already pay for adjacent things without being sold hard |
| Professional, paying personally | People in this trade already buy tools, training, insurance or software out of their own pocket, and this would sit alongside those |

**Adjacency is to the form of the answer, not the category.** Almost anything is category-adjacent to something, which is why the adjacency test needs supervising. A trade that buys four-hundred-pound tools without blinking is not thereby a buyer of methods or spreadsheets; someone who already pays for a physio and a gym is a real adjacent buyer of a recovery programme, because it is the same form of thing. Score adjacency against what the answer would plausibly be sold as, ask what specifically they pay for, how much, and how recently, and when the solution type is genuinely open, score the nearest form and say so.

**Access: can you reach the people who would pay, this month?**

| Score | Description |
|---|---|
| 1 | Strangers; every conversation would start cold |
| 2 | Second-degree only; each introduction is a favour to ask |
| 3 | A few warm routes; conversations possible, but slower than a month |
| 4 | Known in the right rooms; several buyer conversations reachable this month |
| 5 | Could count ten reachable people this week |

### Two mechanical rules

**The vantage cap.** Where the row's arena relationship is participant, community member, or interested outsider *and* its problem source is hypothesis, Frequency and Pain must be `?` or carry Low confidence. A serious participant has real insight and can also mistake personal preference for market pain. The cap is not a judgment; it is the two fields doing their job.

**The flat-access rule.** Someone whose portable mechanism is reach will score 4 or 5 on Access for every row, because the score measures them, not the row. When Access is uniform across the shortlist, say so, and read the comparison on Frequency, Pain and Budget. A column identical across all rows carries no information, whatever its value. Do not mark it down to manufacture spread: it is genuinely high, and it is genuinely not a differentiator between these rows.

These are a simplified version of the market screen the user meets properly in Stage 4, `offer-design`. If a candidate survives here and dies there, that is the system working.

### Read the shape, not the total

- **Budget scoring 1 or 2 is usually fatal.** Ability to pay is a targeting criterion, not a weakness to fix later. If nobody in that market can pay without a fight, that is a different business.
- **Access scoring 1 or 2 is a cost, not a verdict.** It means the first stretch of work goes into building reach, and that bill comes due immediately.
- **High Frequency with low Pain is the trap.** It feels validated because it happens constantly. Nobody pays to fix a mild annoyance.
- **High Pain with low Frequency reads differently depending on who the buyer is, and this is where most misreadings happen.**
  - For an **organizational** buyer it can be excellent. Rare and catastrophic problems carry real budgets, because the organization persists between episodes, carries the risk continuously, and often has insurance, compliance exposure or a regulator making it pay attention.
  - For a **consumer or professional** buyer it is a warning. Rare means every customer is a new customer: no repeat purchase, no renewal, and a marketing cost paid again for every sale. That can still work, but only priced as a one-off rather than a subscription, and it decides the shape of the business before anything is built. Put it in the open questions rather than burying it in a score.
- **For consumer and professional buyers, the default competitor is doing nothing, and doing nothing is free.** An organization with a problem on somebody's dashboard has to answer for it. A person can simply live with it, and usually does. Ask what happens if they never solve it, and be honest when the answer is "not much."
- **Allocated money and discretionary money behave differently.** A line item is defended and spent. Money out of someone's own pocket competes with everything else they might spend it on that month, and loses to most of it. Two rows can score the same on Budget and be nothing alike.

### Choosing

**Pick the strongest row by shape, not by total, that the user would not be embarrassed to talk about every day for the next month.** Interest is a legitimate criterion: someone disengaged from their own problem space does not go and run the buyer conversations that validation depends on. If shape and total disagree about which row is strongest, say so and let the user break the tie.

**Deliverability is recorded, not tested, at this stage.** A row whose Edge is `route to market`, or whose likely answer strains the intake constraints, is not marked down for it: what delivery would require goes into Open Questions at High priority, so Stage 2 meets the question deliberately. A seller can validate, and even sell, before they can deliver.

Then get two sentences from the user: **why this one**, and **what would change my mind**. The second is the more useful. It goes into the packet, Stage 1 carries it forward, and the first real buyer conversations are checked against it.

---

## SECTION 5: THE PRESSURE-TEST

Run this after the user has chosen. Tell them up front that it is deliberately adversarial, that some of it will be wrong, and that they should argue back.

Work through five challenges:

1. **Is this a problem or a solution in disguise?** If the user has picked a solution and described it as a problem, say so.
2. **Who exactly pays, and out of what money?** If the person who feels the pain is not the person who controls the money, name that gap. It is the most common reason a good problem is a bad business.
3. **What is the honest case that this is a mild annoyance rather than real pain?** Make that case as well as you can.
4. **Is this your capability's angle, or the default route into the arena?** The two can coincide. When they do not, the default route means competing with everyone who arrives without this user's inventory, and the row needs a different reason to win. Name which one was chosen and why.
5. **Can you run the next validation experiment inside your constraints?** Name what the next two weeks of validation would actually involve — the conversations, the access, the hours — and hold it against the constraints from intake. This challenge is deliberately about the next experiment rather than eventual delivery: delivery requirements are already in Open Questions for Stage 2 to meet. But someone who cannot reach the first five conversations cannot validate anything, and that has to be said now.

Then give a plain verdict: **advance this candidate to validation**, or pick a different row, and why.

Do not manufacture enthusiasm. Do not soften. If it is a good choice, say so briefly and move on. If the choice does not survive, run the same five challenges against the next strongest shortlisted row by shape rather than by total, or reopen the portfolio if the shortlist is spent.

---

## SECTION 6: TRANSFER PACKET TEMPLATE (SCHEMA VERSION 2)

The structured artifact generated across the session, saved to `usl-build/0-expertise-map.md` and updated silently at the end of every step. Every section must be completed by the end. If something is genuinely unknown, write "Not yet determined" and note what would resolve it.

**Privacy preamble.** Before writing anything identifying: the default is roles and relationships, never names. Clinical, employer-sensitive, and regulated material is stored as "a former colleague, now a ward manager", not as a person's name. Write a name only if the user volunteers it and confirms it belongs on file.

---

```markdown
# Expertise Map Transfer Packet
## Stage 0 Output | USL Academy

**Prepared for:** [User's name if provided, otherwise "USL Academy User"]
**Session Date:** [Date]
**Schema version:** 2
**Status:** [in progress / complete]
**Last completed step:** [Step number, only while in progress]
**Track:** [A field-led / B arena-led / C open]

---

## 1. INTAKE SUMMARY

**Where the expertise comes from:** [The world, role, craft, or practice]
**Track and arena:** [Track, the arena it points at, and whether the arena was named or proposed]
**Why now:** [What the user wants out of this]
**Constraints:** [Time per week, money available, whether they can build things themselves, whether they are working alone, product or service preference, anything else stated. If something was not given, write "Not stated." Stage 1 reads this list instead of re-asking, and Stage 7 branches on the build question, so keep it complete.]

---

## 2. CAPABILITY INVENTORY

One entry per capability, referenced by id everywhere else in this packet.

**C1: [short name]**
- **Domain capability:** [with the domain left on]
- **Portable mechanism:** [with the domain stripped]
- **Proof:** [what demonstrates it]
- **Transfers to / does not transfer to:** [both halves]

**Arenas considered:**
| Arena | How it was chosen (named / proposed) | Arena relationship |
|---|---|---|

---

## 3. ACCESS

### Conversation access

The recruiting list for buyer conversations. Count, role, and relationship; names only if volunteered and confirmed.

| Count | Role | Relationship | Route (message, call, community) |
|---|---|---|---|

### Buyer access

[Who would actually pay in this arena, how far the user is from them, and through whom.]

---

## 4. CANDIDATES

| # | Cap | Arena | Arena relationship | Problem | Problem source | Who feels it | Who pays | Edge |
|---|---|---|---|---|---|---|---|---|

[Rows with one trace are marked "(hypothesis)". Default-route rows are marked "(default route)". Merged rows are noted below the table.]

---

## 5. SHORTLIST AND SCORES

At most three rows. Every score carries a confidence level; question marks are preserved with what would resolve them.

**Row [#]: [problem, one line]**
| Criterion | Score | Confidence | What it rests on / what would resolve a "?" |
|---|---|---|---|
| Frequency | | | |
| Pain | | | |
| Budget | | | |
| Access | | | |

**Shape reading:** [Across the shortlist: strongest shape and why, what is overrated, and whether the flat-access rule or vantage cap fired.]

---

## 6. CHOSEN CANDIDATE

**The row, in full:** [copied from the candidate table, with its scores]
**Why this one:** [One sentence, the user's]
**What would change my mind:** [One sentence, the user's. Stage 1 carries this forward and the first buyer conversations are checked against it.]
**Pressure-test outcome:** [Which challenges landed, what the user argued back, and the verdict.]

---

## 7. OPPORTUNITY PORTFOLIO

Every candidate not chosen, ranked. This is the recovery path if validation kills the chosen candidate, so keep it honest and current.

| Rank | Row (problem + buyer) | Scores (if shortlisted) | Why not chosen (one line) | Status |
|---|---|---|---|---|
| | | | | open / rejected [DATE], [evidence] |

---

## 8. STAGE 1 HANDOFF PARAGRAPH

Stage 1 reads this packet directly; this paragraph is its orientation, and what the user pastes if they run Stage 1 somewhere this file is not.

> [Plain prose, 200 to 300 words. No headings, no bullets. Covers: the starting point (an observed problem, arrived at from the user's own experience); the chosen problem space in one or two sentences; who feels it, as a specific buyer, and who pays if that is someone else; whether anything is actually built yet, stated plainly; what the user already has that is relevant, including specifically their access to these people; their constraints, including whether they can build; and what they do not yet know. Ends with one line naming the strongest rejected candidate and why.]

---

## 9. OPEN QUESTIONS AND UNRESOLVED RISKS

Where the chosen row's Edge is `route to market`, or its likely answer strains the constraints, what delivery would require is recorded here at High priority.

| # | Open Question or Risk | Priority (High / Medium / Low) |
|---|---|---|

---

## 10. MARKET EVIDENCE AND SOURCES

Findings confirmed through live web research during this session. Downstream stages reuse these instead of researching the same ground again. If no live research was run, write "No live research run this session."

| # | Finding (one line) | Source URL | Date checked |
|---|---|---|---|

**Still unverified (worth a live check later):**
[Any assumption that drove a Budget score but was not verified against a source. If none, write "None."]

---

## 11. VALIDATION REVISIONS

Append-only ledger. Later evidence revises this packet by adding entries here; nothing above is deleted. Re-running a revision must not duplicate an entry: match on date plus original value. If empty, write "No revisions yet."

**Date:** | **Evidence:** | **Original value:** | **Revised value:**
**Scope of revision:** | **Downstream packets requiring review:**

---

## 12. RECOMMENDED NEXT STEP

**Next module:** Stage 1: Problem Validation (`/problem-validation`)

Stage 1 reads this packet on start: run it directly, or run `/build-loop` to be routed. It will build a sharpened persona, a structured problem statement, a Balanced Breakthrough Model score, and a Unique Value Proposition. It scores honestly, and a low score somewhere is normal and useful. It is not a signal to start over.

---

## 13. SESSION NOTES (OPTIONAL)

[Anything that came up and did not fit above but may matter later.]
```

---

### Worked example: the handoff paragraph

For the electrician from Section 7, so the shape is calibrated against a real one:

> I got here from my own experience rather than from an idea. I spent fourteen years self-employed in electrical contracting, quoting and running every job myself, and the problem I keep seeing is that newly self-employed electricians and similar trades quote off materials and time on site, so the unbilled hours, the travel, the wholesaler runs, the coordination and the rework, come straight out of their margin, and they end up working sixty-hour weeks for less than they earned employed. The person who feels this is a self-employed electrician one to three years out on their own, writing their own quotes, and he is also the person who pays, out of his own pocket. Nothing is built yet; there is no product, no page, and no name, just this direction. What I bring is the fourteen years, the fact that I have made and fixed this exact mistake, and access: my own trade network, the wholesaler counter, two trade WhatsApp groups of about forty each that answer within the hour, and every apprentice I have trained. My constraints are about eight hours a week, a small amount of savings I am willing to spend, and I cannot build software, so whatever this becomes has to be something I can deliver or buy help for. What I do not yet know is whether people in year one will pay before they have been burned, or only recognise the problem in year three. The strongest candidate I rejected was compliance paperwork for small firms: real, but the buyer already treats it as solved by their accountant.

---

### Migration from v1 packets

A packet without a `**Schema version:**` line is v1, from the earlier nine-step flow. Never fail on a missing v2 heading, never restart, and never discard completed work.

| Situation | Rule |
|---|---|
| **v1, `Status: complete`** | Consumers accept it as-is. Read `## 2. EXPERTISE INVENTORY BY LENS`: the Access lens answers are conversation access. Buyer access is unknown, not zero. The scored map's rows are candidates without Cap ids, Edge, or vantage fields; treat those fields as unrecorded. |
| **v1, `Status: in progress`** | Say the stage has been revised since the packet was written, map the completed work forward, and resume at the equivalent new step. Old steps: scar tissue (1) and pattern (4) are Friction material; translation (2) is a capability, so it feeds Capability; access (3) maps to the new Step 3; archive-search results (5) are Friction material. Old steps 1 to 4 complete satisfy new Steps 1 to 3; old step 5 folds into new Step 2; old step 6 or beyond means candidates exist, so resume at new Step 5 by re-shortlisting the existing rows rather than rebuilding them. |

---

## SECTION 7: WORKED EXAMPLES

Eight worked rows, so the user can calibrate.

They come from deliberately different fields, and none of them is the "right" kind of answer. Read them before scoring a shortlist. Each is strong for a different reason. The fourth is strong and fragile at the same time, which is the most common shape among people with long experience. The fifth shows a consumer buyer, the sixth a working professional spending their own money, the seventh a Track B arena outside the day job, and the eighth a capability that is distribution rather than product.

**When a user is stuck, offer one of these from a field other than their own.** They are here to calibrate the shape of a good row, not to supply its content. Hand someone a finished, scored row from their own domain and the map comes back as that row wearing their clothes.

---

### Row 1: Security and compliance

**The friction answer it came from (burned-by):**

> "Every quarter we did a security review of our vendor integrations and every quarter it took three weeks because nobody could tell me which integrations actually had production data access. I ended up building a spreadsheet that I maintained by hand for two years. I am still annoyed about that spreadsheet."

**The row:**

| Capability | Arena | Problem | Who feels it |
|---|---|---|---|
| Eight years running vendor security review at a regulated fintech | Mid-size regulated companies, 200 to 2000 staff | Security teams cannot tell which third-party integrations have production data access, so quarterly reviews take weeks of manual tracing | Security engineering lead or GRC manager at a regulated company with a real compliance calendar |

**The score:**

| Frequency | Pain | Budget | Access |
|---|---|---|---|
| 3 (quarterly) | 5 (audit failure, regulatory exposure) | 5 (compliance has a line item) | 4 (long-standing peers in the same role) |

**Why it is strong:** Frequency is only a 3, and that does not matter, because Pain and Budget are both high. Quarterly and catastrophic beats daily and mild. Budget at 5 is doing the heavy lifting, because compliance spend is already allocated and does not need to be justified from scratch.

**What is still unknown:** whether existing tools already solve this well enough. That is exactly what Stage 1 and the buyer conversations that follow it are for. Notice that the row does not pretend to know it.

---

### Row 2: Clinical operations

**The friction answer it came from (burned-by):**

> "Discharge planning ran every morning and half the cases stalled on the same thing. Nobody could tell me whether the patient's home care was actually confirmed, so we chased it by phone. I kept a whiteboard for six years because the system could not answer the question."

**The row:**

| Capability | Arena | Problem | Who feels it |
|---|---|---|---|
| Twelve years running discharge planning for a regional hospital system | Mid-size hospital systems and the skilled nursing facilities they discharge into | Discharge teams cannot confirm post-acute placement in time, so beds stay occupied and avoidable readmission risk rises | Case management director or discharge planning lead carrying a length-of-stay target |

**The score:**

| Frequency | Pain | Budget | Access |
|---|---|---|---|
| 5 (daily) | 5 (bed capacity, readmission penalties) | 4 (length of stay is already a tracked cost) | 4 (peers across the region) |

**Why it is strong:** the buyer already has a number for this problem. Length of stay is measured weekly and reported upward, so you are not selling them on the problem existing, only on your answer to it. When the cost is already on somebody's dashboard, the sale is a different and much easier conversation.

**What is still unknown:** whether this is a workflow problem or a data-access problem. Those are different products with different buyers, and the row is honest about not knowing yet.

---

### Row 3: Finance

**The friction answer it came from (repeating pattern):**

> "Every company I have joined, the month-end close broke in the same place. Not the accounting. The part where four business units send their numbers in four different shapes and somebody spends a week reconciling formats before anyone can look at the actual result."

**The row:**

| Capability | Arena | Problem | Who feels it |
|---|---|---|---|
| Nine years in FP&A across multi-entity manufacturing and retail businesses | Multi-entity companies, 5 to 50 units, that have not done a full ERP rollout | Units report in inconsistent formats, so finance spends the first week of every month reconciling structure instead of analysing results | Group financial controller or FP&A lead who owns the close calendar |

**The score:**

| Frequency | Pain | Budget | Access |
|---|---|---|---|
| 4 (monthly, and it consumes a quarter of their month) | 4 (late decisions, not a catastrophe) | 4 (the current solution is salaried headcount) | 3 (strong peer network, but the buyer is often a level above it) |

**Why it is strong:** it is strong for a different reason than the first two. Frequency at 4 is the honest score on the rubric, monthly rather than daily, and it does not need inflating, because what carries this row is that the problem is currently being solved by a person's time, which means it already has a price attached to it whether anyone has named it or not. Access at 3 is a cost to plan around, not a reason to drop the row.

**What is still unknown:** whether the buyer treats this as a process failure they ought to fix internally rather than something to buy. That is a question for the first buyer conversations and it decides the whole direction.

---

### Row 4: Professional services

**The friction answer it came from (translation work):**

> "Most of my career was explaining what a piece of work would actually involve to a client who had already decided what it should cost. The projects that went wrong went wrong at the proposal, before anyone did any work."

**The row:**

| Capability | Arena | Problem | Who feels it |
|---|---|---|---|
| Fifteen years scoping and delivering change programmes in professional services | Independent consultants and boutique firms, 2 to 30 people | Scoping is done from the client's description rather than the underlying work, so projects are underpriced at proposal and margin is lost before delivery starts | Boutique firm principal or independent consultant who writes their own proposals |

**The score:**

| Frequency | Pain | Budget | Access |
|---|---|---|---|
| 4 (every proposal) | 5 (it is their margin) | 3 (they feel it acutely and still buy reluctantly) | 5 (this is their own peer group) |

**Why it is strong, and where it is fragile:** Access at 5 and Pain at 5 make this unusually quick to test, which matters. But Budget at 3 is the honest score and it is the first thing to probe in buyer conversations. High pain with low willingness to pay is the most common trap in expert-led businesses, because the expert assumes their peers value the thing the way they do. Sometimes peers do. Often they want a template rather than a service, and that is a different business.

**What is still unknown:** whether they will pay for judgment, or only for a tool.

---

### Row 5: Training and rehabilitation

**The friction answer it came from (repeating pattern):**

> "Every client who came to me after being discharged by a physio had the same gap. Physio ends when you can walk without pain. The gym assumes you are starting from zero but healthy. Nobody covers the eight weeks in between, so people either hurt themselves again or they quietly stop going."

**The row:**

| Capability | Arena | Problem | Who feels it |
|---|---|---|---|
| Ten years training general population clients, specialising in return to exercise after injury | Adults discharged from physiotherapy who intended to get back to training | Physiotherapy ends before someone is ready to train normally and nothing covers the gap, so people re-injure themselves or stop exercising altogether | An adult in their 40s or 50s, six to twelve weeks past discharge for a knee or back injury, who was active before and is now afraid to load the joint |

**The score:**

| Frequency | Pain | Budget | Access |
|---|---|---|---|
| 2 (once per injury, not recurring) | 4 (fear, lost fitness, real re-injury risk) | 3 (no line item, but they already pay for physio and gym membership, the same form of thing) | 5 (sees these people every week, and so does every physio they know) |

**Why it is strong, and where it is fragile:** this is the shape consumer rows usually take. Access at 5 means the user can test this next week rather than next quarter, with people they already know. Budget at 3 is not the fatal kind: nobody has a line item for this, but money is already moving in the category, on services, which is the form a recovery programme would take. That is adjacency of form, not just of topic, and it is why the 3 holds.

The fragility is Frequency at 2. A once-per-injury problem means every customer is a new customer and there is no natural repeat. That is survivable if what gets sold is a one-off programme rather than a subscription, but it decides the shape of the business before anything is built, so it belongs in the open questions rather than buried in a score.

**What is still unknown:** whether the buyer is the person recovering or the physiotherapist looking for somewhere safe to send them. Those are different businesses with different economics, and the row does not pretend to know which one it is.

---

### Row 6: A trade

**The friction answer it came from (repeating pattern):**

> "Every young spark who goes out on their own makes the same mistake. They can do the work. They cannot price it. They quote the materials and the hours on site, and they forget the driving, the parking, the trip back to the wholesaler because the part was wrong, and the hour on the phone with the customer's architect. Then they cannot work out why they are doing sixty hours a week and taking home less than when they were employed."

**The row:**

| Capability | Arena | Problem | Who feels it |
|---|---|---|---|
| Fourteen years self-employed electrical contracting, quoting and running every job | Newly self-employed electricians and similar trades in their first three years | Jobs are quoted off materials and time on site, so the unbilled hours (travel, wholesaler trips, coordination, rework) come straight out of the margin, and the business runs on volume rather than profit | A self-employed electrician one to three years out on their own, working alone or with one mate, writing their own quotes |

**The score:**

| Frequency | Pain | Budget | Access |
|---|---|---|---|
| 5 (every quote, several a week) | 4 (it is their whole income, but it bleeds rather than explodes) | 3 (no line item, but this trade already buys tools, van, insurance, certification and job software personally) | 5 (his own trade, the wholesaler counter, the trade groups, every apprentice he has had) |

**Why it is strong, and where it is fragile:** this is the professional-paying-personally shape at its clearest, and its Budget 3 means something different from the consumer 3 in Row 5. Money moves constantly in this trade and it comes out of the same pocket, so the habit of spending on the business is already there. That is a real asset.

The fragility is the form of what that pocket is used to buying. This buyer will spend four hundred pounds on a tool without blinking, because it is visibly required and they can hold it. A method, a way of thinking about pricing, or a spreadsheet is a different form of thing sold to exactly the same person, which is precisely what the adjacency-of-form rule exists to catch. High Frequency with Pain 4 also sits close to the trap: it happens constantly, which feels like validation, and the honest question is whether it hurts enough on any single quote to make someone act.

**What is still unknown:** whether they will pay before they have been burned. The people who most need this are in year one and do not yet know they have the problem. The ones who know they have it are in year five and have already half-solved it. That gap between who needs it and who will buy it is the first thing to test.

---

### Row 7: Track B, an arena outside the day job

**The setup:** Stephanie has eight years as a software engineer, four of them managing a platform team in payments. Her arena is not payments: she wants to build something in independent travel, where she is a serious participant, a planner of elaborate multi-country trips and an active member of two travel forums. Track B.

**The default-route check, run at Step 1:** the usual way into a travel audience business is content creation, a blog, an Instagram, a newsletter, built over years. Named explicitly, and checked against her inventory: her capabilities are scoping and shipping software solo and telling when an estimate is fiction. Content creation uses neither. So the default route goes on the map as a candidate, flagged as a default-route row with its cost named, and at least one capability-native row is generated to score beside it.

**Two of her rows:**

| # | Cap | Arena | Arena relationship | Problem | Problem source | Who feels it | Who pays | Edge |
|---|---|---|---|---|---|---|---|---|
| 1 | (none) | Independent travel | participant | Travellers do not trust generic itineraries and seek out individual voices they can follow | repeated observation | Independent travellers planning trips over two weeks | The traveller | route to market (default route: audience building) |
| 2 | C1 (ship software solo) | Independent travel | participant | Groups planning multi-country trips together lose decisions and money across chat threads, spreadsheets and split apps that do not talk to each other | direct experience + repeated observation (her own trips, both forums) | The organiser of a 4-to-8 person trip, self-appointed and resentful | The organiser, sometimes split | product angle |

**The scores that matter:** Row 2 scores Frequency 2 (a couple of trips a year per organiser) with High confidence, because the source is her own repeated experience. Pain comes back 3 with Medium confidence. Budget is `?`: she does not know what group organisers pay for, and the row records what would resolve it (what the forums' organisers report spending, checked in Step 5 research). Row 1's Frequency and Pain sit at Low confidence: her belief that travellers want individual voices is a participant's hypothesis about other people, so the vantage cap holds them down until a recorded source exists.

**Why this example matters:** the default route was evaluated, not dismissed, and not adopted by reflex either. The comparison rests on scores. Content creation loses here on her map because it uses none of her capabilities and its access is a bill she has not started paying, but on another user's map, with an audience already half-built, the same row wins. Passing this test means the check ran, not that content creation lost.

---

### Row 8: Capability as distribution

**The setup:** ten years selling enterprise software into mid-market logistics. His domain capability is the selling; his portable mechanism is that he can architect a multi-stakeholder deal, hold a process through six months of uncertainty, and get a first meeting with an operations director cold. Proof: carried the number three years running, named references at four companies. Track A: the arena is the logistics operations world he already sells into.

**His row:**

| # | Cap | Arena | Arena relationship | Problem | Problem source | Who feels it | Who pays | Edge |
|---|---|---|---|---|---|---|---|---|
| 1 | C1 (multi-stakeholder selling, cold access to ops directors) | Mid-market logistics operations | operator-adjacent (sells to them daily) | Ops directors run carrier performance on spreadsheets assembled by hand each quarter; everyone knows it, nobody has bought their way out of it | repeated observation (watched it in dozens of accounts) | Operations director, 100-to-500-truck fleet | The same director, against an ops budget | route to market |

**The scores:** Frequency 3, Pain 3, Budget 4 (money already moves: analysts' time absorbs it, and two of his accounts hired temps for it), Access 5. And Access is 5 on every other row of his map too, which is the point: **the flat-access rule fires.** His reach scores the same wherever he points it, so the column carries no information for choosing between his rows, and the reading moves to Frequency, Pain and Budget. Access is not marked down for being uniform; it is genuinely his edge.

**Edge is `route to market`, so delivery risk is recorded:** he cannot build software and does not want to run a consultancy. The packet's Open Questions carries, at High priority: "Delivery for this row requires either a technical partner, a white-labelled product, or a service-first version he can staff. Stage 2 must resolve which before scoping." He can validate, and probably pre-sell, before any of that exists, which is exactly why the row is not marked down for it.

**Why this example matters:** the problem is one everyone in the arena already knows about. On a product-angle reading, that makes it a weak row. With Edge recorded, it is a legitimate one: his differentiation is that he can get the meeting, and the schema can now say so.

---

### Reading across the eight

None of these is stronger than the others, and they are not strong for the same reason. Row 1 is carried by Budget, Row 2 by an already-measured cost, Row 3 by an expensive current workaround, Row 4 by speed of access with a real question mark over willingness to pay, Row 5 by access to a buyer who is a person, Row 6 by a trade already in the habit of spending its own money, Row 7 by an honest comparison between a default route and a capability-native angle, and Row 8 by reach, recorded as an Edge the schema can finally express.

Read Rows 1, 5 and 6 together and you have the three buyer shapes side by side: an organization with a line item, a consumer spending discretionary money, and a working professional spending out of their own pocket. The same score means three different things across them. Read Rows 7 and 8 together and you have the two cases the old map handled worst: an arena entered from outside the day job, and a capability that is reach rather than product.

That is the point. There is no template row. What every one of them has in common is that the problem is specific, the buyer is a role, a person in a situation, or a trade in a circumstance rather than a category, the capability and the problem each trace to something real, and the row admits what it does not yet know.
