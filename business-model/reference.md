# Stage 3: Business Model and Economics
## Evidence Contract, Model Guides, and Deliverable Templates

---

## SECTION 0: LIVE RESEARCH PROTOCOL

Research can establish current prices, terms, costs, regulations, and category practices. It cannot prove this user's conversion, retention, cost to acquire, or willingness to pay unless the source actually observes those things.

### Operating rules

1. **Offer one batched pass after the model is routed.** Search only for unknowns capable of moving the economics or channel decision.
2. **Reuse inherited sources.** Start with the Market Evidence blocks and buyer-conversation artifact. Do not repeat work merely to add citations.
3. **Prefer primary sources.** Official pricing and terms, regulatory pages, supplier quotes, platform fee schedules, public filings, first-party program rules, and current product documentation outrank comparison blogs.
4. **Match geography, segment, and terms.** Record currency, billing period, included usage, contract length, customer segment, tax treatment, and date where they affect comparability.
5. **Treat benchmarks as ranges, not promises.** A published conversion or churn benchmark is a scenario input with limitations, never this business's observed performance.
6. **Show the proposed effect.** Report finding, source, limitation, and the model input it would change. The user confirms before it is retained.
7. **Do not search for false precision.** If a real answer requires a supplier quote, paid channel test, procurement conversation, or delivery pilot, say so.

### Useful research by archetype

- **Direct or recurring:** current comparable prices and terms, payment and platform fees, refund terms, category contract length.
- **Service:** comparable scope and price, contractor or loaded labor cost where relevant, professional insurance or licensing requirements.
- **Physical:** supplier quotes, landed-cost components, minimum order quantities, duties, fulfillment, returns, certification, and warranty expectations.
- **Marketplace:** take rates, payment fees, incentive patterns, refund or dispute costs, and liquidity expectations on both sides.
- **Audience-funded:** sponsorship rates and minimum audience requirements, affiliate terms, membership pricing, platform share, and concentration risk.
- **Grant or institution-funded:** eligibility, restrictions, award size, match requirements, application timing, and reporting burden.
- **Internal:** loaded labor assumptions, current cycle time and errors, implementation alternatives, approval thresholds, and compliance requirements.

Record retained research in the deliverables with URL, date checked, exact model input affected, and limitation.

---

## SECTION 1: EVIDENCE CONTRACT AND READINESS

### 1.1 Required upstream fields

Preserve these fields rather than summarizing away their uncertainty.

**From Stage 1:**

- user persona and confidence;
- payer persona, payer proposition, payer confidence, budget owner, and approval dependency;
- problem statement and user-side and payer-side problem sources;
- Desirability rubric, caps applied, and BBM score, confidence, reasoning, and resolution condition for every dimension;
- flag, evidence base, buyer-conversation status, separate feeler and payer counts when recorded, sample, latest revision, UVP confidence, constraints, and open risks.

**From Stage 2:**

- route and experiment status;
- assumption map and highest-ranked assumption;
- solution type, actors, and payer decision point;
- value-to-scope traceability or validation design;
- enabling requirements, delivery approach, estimate assumptions, flow, and scope boundaries;
- Stage 2 revisions and Stage 3 readiness.

**From buyer conversations when present:**

- exact current spend and cost figures;
- who approves spending and where the process breaks;
- prior attempts, objections, sample composition, verdict, and Section 9 limitations;
- quoted language only when it is truly verbatim.

### 1.2 Evidence classes

| Class | Meaning | Numerical treatment |
|---|---|---|
| Observed actual | Transaction, invoice, delivery time, usage, supplier quote, measured operational result, or captured buyer behavior | Can be a base input within the observed sample and period |
| Researched benchmark | Current external source with defined population and terms | Use as a range or comparison; retain limitation |
| User estimate | User's informed but unverified number | Use in scenarios and label confidence |
| Unknown | No honest input | Solve symbolically, use a break-even threshold, or make the next action collect it |

Do not call public competitor pricing “willingness to pay.” It is an alternative anchor. Do not call a buyer's stated budget a transaction. It is stronger than a guess and weaker than payment.

### 1.3 Input ledger

Use one row per material numerical input.

| Input | Base value or range | Unit and period | Evidence class | Source | Confidence | Why it matters | What would verify it |
|---|---|---|---|---|---|---|---|

### 1.4 Readiness gate

A full Stage 3 model is ready when Stage 2 is value-first or its decisive experiment passed. When a validation-first experiment is only planned, preliminary economics may answer questions such as “What price or margin would make this worth testing?” but must not produce the primary Stage 3 deliverables.

---

## SECTION 2: ECONOMIC MODEL ROUTER AND FORMULAS

Use the smallest set of calculations that can reveal whether the model works. Show formulas and inputs. Do not calculate metrics whose assumptions are not credible yet.

### 2.1 Common terms

- **Net revenue per unit:** money retained from the payer for one economic unit after discounts, refunds, and pass-through taxes. State whether payment or platform fees are treated here or as variable cost.
- **Variable cost per unit:** cost that rises when one more unit is sold or delivered, including paid delivery labor where appropriate.
- **Contribution per unit:** `net revenue per unit - variable cost per unit`.
- **Contribution margin:** `contribution per unit / net revenue per unit`.
- **Break-even units:** `fixed costs for the period / contribution per unit`. If contribution is zero or negative, break-even does not exist.
- **Cash before break-even:** setup cost, inventory, acquisition, payroll, or other cash paid before enough contribution arrives. Timing matters even when eventual margin is positive.

Founder labor is not automatically free. Treat it as one of: a paid variable cost, a fixed operating cost, or an explicit temporary founder subsidy. Name the choice.

### 2.2 One-time direct sale

Calculate net revenue per sale, variable delivery cost, contribution, contribution margin, fixed-cost break-even, expected purchase frequency where repeat matters, and cash timing.

For a digital one-time product, include support, refund, platform, and update burden when material. For a license, state duration and included usage.

### 2.3 Recurring subscription or retainer

Calculate recurring net revenue, recurring variable cost, contribution per period, churn or retention scenario, acquisition cost or threshold, and payback.

- **CAC payback periods:** `customer acquisition cost / contribution per customer per period`.
- **Simple contribution LTV:** `contribution per period / period churn`, only when churn is observed or used transparently as a scenario and the business is sufficiently stable for the approximation to mean anything.

Do not use a speculative LTV to justify a known CAC. When retention is unknown, solve for the minimum retained periods required to recover acquisition and onboarding cost.

### 2.4 Project or capacity-constrained service

Calculate price per engagement, direct delivery hours by role, loaded labor cost, tools or materials per engagement, contribution, delivery capacity, realistic utilization, and monthly or quarterly contribution capacity.

- **Delivery capacity:** `available delivery hours x utilization / hours per engagement`.
- **Contribution capacity:** `deliverable engagements x contribution per engagement`.

Separate sales, administration, and rework time from paid delivery. Include revision or scope-creep assumptions. A model that works only at 100 percent utilization is not a working model.

### 2.5 Physical or inventory-bearing product

Calculate selling price, landed unit cost, payment and channel fees, pick-pack-ship, returns and warranty allowance, contribution, contribution margin, minimum-order cash, reorder timing, and break-even units.

**Landed unit cost** can include manufacturing, components, inbound freight, duties, inspection, and packaging required to deliver safely. Treat tooling and certification as setup or fixed costs unless they scale per unit.

Run a downside case for cost overrun, return rate, and slower sell-through. A positive unit margin can still fail through inventory cash timing.

### 2.6 Marketplace or transaction take rate

Model both sides.

- **Gross marketplace value:** transaction value moving through the marketplace.
- **Net revenue per transaction:** `transaction value x take rate + other retained fees`.
- **Contribution per transaction:** `net revenue - payment cost - incentives - support - refunds/disputes - other transaction-variable cost`.

Record acquisition or activation costs for supply and demand separately, repeat rate, match or fill rate, and the minimum local or category liquidity needed. A take rate is not a model if one side has no reason to join before the other.

### 2.7 Advertising, sponsorship, affiliate, or audience-funded

Identify the paying party and beneficiary. Calculate the monetized audience or traffic required, revenue per thousand or per conversion, platform share, fulfillment or content cost, sales cost, concentration, and repeat or renewal assumptions.

- **Required monetized volume:** `target contribution / contribution per monetized view, action, member, or sponsor`.

Free audience size is not revenue. Model what fraction can actually be monetized and whether the user has a credible path to that volume.

### 2.8 Grant, donor, or institution-funded

Identify funder, beneficiary, award or contract size, restricted versus unrestricted funds, match requirements, application and reporting cost, probability and timing, delivery obligations, and runway after funding ends.

Do not average grant probability into spendable revenue. Model the operation if funded and separately model the pipeline required to maintain funding.

### 2.9 Internal investment or operating improvement

There is no customer price. Calculate current baseline, annual quantifiable benefit, implementation cost, ongoing cost, payback, adoption requirement, and downside case.

- **Annual net benefit:** `conservative annual benefit - annual operating cost`.
- **Simple ROI over a stated period:** `(total quantified benefit - total implementation and operating cost) / total implementation and operating cost`.
- **Payback period:** `initial investment / monthly net benefit`, when monthly benefit is positive.

Count time savings only when the organization can redeploy, avoid, or monetize the time. Separate hard savings, capacity released, revenue protected, and risk reduction. For risk reduction, expose probability and impact rather than presenting avoided loss as guaranteed cash.

### 2.10 Hybrid model

Model each stream separately, including its payer and variable costs, then show shared fixed costs and cross-subsidy. Name whether one stream is intentionally an acquisition mechanism for another. A profitable total can hide a structurally losing stream; show both.

### 2.11 Scenario table

Use downside, base, and upside only where inputs materially vary. Avoid inventing a full forecast.

| Driver | Downside | Base | Upside | Evidence and reason for range |
|---|---:|---:|---:|---|

Then show the resulting contribution, break-even condition, cash need, or internal payback for each case.

---

## SECTION 3: ADAPTED LEAN CANVAS

The Canvas summarizes the working model after the evidence and economics are visible. Mark material claims `Observed`, `Researched`, `User belief`, or `Unknown`.

### Default external model

1. **Problem or desired gain:** one to three distinct items supported upstream. Do not split one problem into three phrasings.
2. **Customer and payer segments:** user, payer, budget owner, early adopter, and any approval dependency.
3. **Unique value proposition:** carry forward; do not rewrite casually.
4. **Solution:** map Stage 2 components to the confirmed problem or gain. Flag unmatched items.
5. **Channels and sales motion:** realistic first access path, decision process, and time to outcome.
6. **Revenue or funding streams:** exact mechanism, unit, timing, and terms.
7. **Cost and capacity structure:** governing variable costs, fixed costs, setup cash, and bottleneck.
8. **Key metrics:** three to five decision-driving metrics, including the economic constraint.
9. **Defensibility:** current advantage or `Not yet established`, plus how it could be built.

### Internal adaptation

Replace customer channels and revenue streams with:

- affected users and adoption owner;
- approval path and investment owner;
- current baseline and cost of the status quo;
- implementation and operating cost;
- quantified benefit and success measure;
- adoption, change-management, and compliance risks.

### Marketplace adaptation

Name supply, demand, payer, hardest side, cold-start sequence, liquidity metric, take rate, transaction cost, trust mechanism, and side-specific acquisition.

### Audience or funded adaptation

Separate beneficiary from payer or funder. Record what the payer buys, what scale or eligibility is required, concentration risk, restrictions, and renewal condition.

---

## SECTION 4: PRICING AND FIRST-CHANNEL TEST

### 4.1 Pricing or investment triangulation

Use all applicable anchors:

| Anchor | Question | Failure to avoid |
|---|---|---|
| Economic floor | What must be retained after variable cost, capacity, risk, and cash timing? | Pricing below sustainable delivery |
| Market reference | What do current alternatives charge, under what terms, for which segment? | Treating a superficially similar price as directly comparable |
| Value or willingness ceiling | What has the payer spent, lost, gained, budgeted, or actually authorized? | Treating theoretical value as willingness to pay |

The recommendation may be a price, range, take rate, funding ask, sponsor package, or internal investment ceiling. State taxes, billing period, usage, implementation, contract length, or other terms that materially define it.

Do not claim that higher prices inherently create better customers or that lower prices inherently create worse ones. Price affects positioning, access, sales motion, expectations, and margin; the effect depends on the market.

### 4.2 First-channel or adoption test

Complete:

- **Target:** segment, payer, and decision maker.
- **Access advantage:** why this channel is reachable now.
- **Proposition:** the message or value case.
- **Sequence:** contacted or exposed, engaged, qualified, decision-maker reached, offer or approval requested, paid/funded/approved/adopted.
- **Ranges:** expected count at each step, marked as observed, benchmark, estimate, or unknown.
- **Cap:** maximum time and cash before review.
- **Primary signal:** the earliest behavior that genuinely predicts economic progress.
- **Thresholds:** success, failure, and inconclusive.
- **Capture:** where the funnel and objections are recorded.
- **Decision:** what changes after each result.

For a long enterprise or institutional sale, a qualified budget-owner meeting or procurement entry can be the test outcome, but it must not be reported as revenue. For an internal initiative, use approval and repeated adoption behavior rather than leads.

### 4.3 Risk specification

| Risk | Evidence class | Consequence | Leading indicator | Threshold | Mitigation or test |
|---|---|---|---|---|---|

Prioritize a risk when it can invalidate the economics, consume unrecoverable cash, create legal or safety exposure, or require scale the user cannot plausibly reach.

---

## SECTION 5: BUSINESS PLAN SUMMARY TEMPLATE

This is a compact decision brief. It is not a full investor business plan, audited forecast, or proof of market demand.

```markdown
# Business Plan Summary
## Business Model and Economics Decision Brief | USL Academy

**Schema version:** 2
**Status:** complete
**Business / initiative:** [name or working description]
**Date:** [date]

---

## EXECUTIVE DECISION

**Decision:** [Proceed / Proceed with caution / Test before committing / Rethink the model]
**Why:** [three to five sentences grounded in evidence and economics]
**Most sensitive variable:** [variable and threshold]
**Immediate action:** [specific test or execution step]

---

## EVIDENCE BASIS

**User, payer, and budget owner:** [separate where needed]
**Stage 1 evidence:** [scores with confidence, conversation count and sample, latest revision]
**Stage 2 readiness:** [route and experiment result]
**Observed evidence:** [list]
**Researched evidence:** [list]
**User estimates:** [list]
**Critical unknowns:** [list and resolution]

---

## PROBLEM, VALUE, AND SOLUTION

**Problem or desired gain:** [carry-forward]
**UVP and confidence:** [carry-forward]
**Alternatives:** [carry-forward]
**Solution type and release scope:** [summary]
**Why now:** [source-backed reason / user belief / Unknown; do not invent]

---

## ECONOMIC ARCHITECTURE

**Primary archetype:** [type]
**Economic unit:** [unit]
**Beneficiary:** [who receives value]
**Payer, funder, or investment owner:** [who authorizes money]
**Money or authorization event:** [event and timing]
**Delivery unit and governing constraint:** [unit and bottleneck]
**Sales or approval motion:** [motion]

---

## ADAPTED LEAN CANVAS

| Box | Content | Evidence class |
|---|---|---|
| Problem or desired gain | | |
| User, payer, and early adopter | | |
| UVP | | |
| Solution | | |
| Channel or adoption path | | |
| Revenue, funding, or benefit mechanism | | |
| Cost, cash, and capacity structure | | |
| Key metrics | | |
| Defensibility | | |

---

## INPUT LEDGER

| Input | Base value or range | Unit and period | Evidence class | Source | Confidence | What would verify it |
|---|---|---|---|---|---|---|

---

## UNIT ECONOMICS OR INTERNAL ROI

**Formula set used:** [archetype]
**Calculations:**

[Show formulas with substituted inputs and units. Include contribution or annual net benefit, break-even, governing capacity or scale requirement, and cash before break-even where material.]

| Output | Downside | Base | Upside | Interpretation |
|---|---:|---:|---:|---|

**Structural or testable:** [whether downside failure can be tested or requires a different model]

---

## PRICE, FUNDING, TAKE RATE, OR INVESTMENT HYPOTHESIS

**Recommendation and terms:** [specific lever, amount or range, period, included usage or scope]
**Economic floor:** [calculation]
**Market reference:** [evidence and limitation]
**Value or willingness ceiling:** [evidence and limitation]
**What would move it:** [input and test]
**Status:** Hypothesis until tested through a real transaction, funding decision, or internal approval.

---

## FIRST CHANNEL OR ADOPTION TEST

**Target and decision maker:** [who]
**Channel or path:** [where and why accessible]
**Proposition:** [message or value case]
**Sequence and expected ranges:** [funnel or approval steps]
**Time and cash cap:** [cap]
**Success / failure / inconclusive:** [thresholds]
**Evidence captured:** [where]
**Decision after result:** [table or list]

---

## RISKS

| Priority | Risk | Consequence | Leading indicator and threshold | Mitigation or test |
|---|---|---|---|---|

---

## NEXT 30 DAYS

[Three to five sequenced actions with an observable completion condition.]

---

## SCOPE NOTE

This is an evidence-labeled business-model decision brief, not an audited forecast or a complete investor business plan. Unknowns and estimates remain visible by design.
```

---

## SECTION 6: TRANSFER PACKET TEMPLATE

```markdown
# Business Model Transfer Packet
## Stage 3 Output | USL Academy

**Schema version:** 2
**Status:** complete
**Business / initiative:** [name or working description]
**Date:** [date]
**Decision:** [Proceed / Proceed with caution / Test before committing / Rethink the model]

---

## 1. FOUNDATION AND READINESS

**Stage 1 schema and latest revision:** [version, date, effect]
**Stage 2 schema, route, and experiment status:** [values]
**User persona and confidence:** [carry-forward]
**Payer, budget owner, and confidence:** [carry-forward]
**Payer proposition:** [carry-forward / payer is the user / unknown]
**Problem and source, user side:** [carry-forward]
**Problem and source, payer side:** [carry-forward]
**UVP and confidence:** [carry-forward]

**Desirability rubric used:** [Push / Pull + carry-forward reason]
**Caps applied:** [carry-forward, including whether each cap remains in force or was released by later evidence]

| BBM dimension | Score | Confidence | Evidence basis | Resolution condition |
|---|---|---|---|---|
| Desirability | | | | |
| Feasibility | | | | |
| Viability | | | | |

**Buyer evidence:** [count with feeler/payer split when recorded, sample, status, verdict, limitations]
**Solution scope and constraints:** [carry-forward]

---

## 2. EVIDENCE LEDGER

**Observed:** [list]
**Researched:** [list]
**User beliefs and estimates:** [list]
**Unknowns:** [list with resolution action]

---

## 3. ECONOMIC ARCHITECTURE

**Primary archetype:** [type]
**Secondary streams:** [list / none]
**Economic unit:** [unit]
**Beneficiary:** [who]
**Payer, funder, or investment owner:** [who]
**Money or authorization event:** [event]
**Delivery unit:** [unit]
**Governing constraint:** [capacity, retention, inventory, liquidity, audience, funding, adoption, other]
**Sales or approval motion:** [motion and expected timing]

---

## 4. UNIT ECONOMICS OR INTERNAL ROI

| Input | Base value or range | Unit and period | Evidence class | Source | Confidence |
|---|---|---|---|---|---|

**Formula set and calculations:** [show]

| Output | Downside | Base | Upside |
|---|---:|---:|---:|
| Contribution or annual net benefit | | | |
| Contribution margin or ROI | | | |
| Break-even or payback | | | |
| Cash before break-even | | | |
| Governing scale or capacity requirement | | | |

**Most sensitive variable:** [variable and threshold]
**Structural or testable weakness:** [assessment]

---

## 5. PRICE OR INVESTMENT HYPOTHESIS

**Lever and recommendation:** [price / take rate / funding ask / sponsor package / investment ceiling / other]
**Terms:** [period, scope, usage, contract, implementation, relevant tax treatment]
**Economic floor:** [calculation]
**Market reference:** [source and limitation]
**Value or willingness ceiling:** [source and limitation]
**Confidence:** [High / Medium / Low + reason]
**What would move it:** [input and exact test]

Stage 4 may validate or revise an external offer price against the actual package and anchored value. It must preserve the floor and evidence limitations recorded here.

---

## 6. FIRST CHANNEL OR ADOPTION TEST

**Target, payer, and decision maker:** [who]
**Channel or adoption path:** [where]
**Access advantage:** [why reachable]
**Proposition:** [message or value case]
**Sequence and expected ranges:** [funnel or approval path]
**Time and cash cap:** [cap]
**Primary signal:** [behavior]
**Success threshold:** [threshold]
**Failure threshold:** [threshold]
**Inconclusive condition:** [condition]
**Evidence capture:** [where]
**Decision table:** [pass / fail / inconclusive]

---

## 7. OFFER OR ADOPTION INPUTS

**What the payer currently spends or authorizes:** [evidence class and source]
**Cost or consequence of the status quo:** [quantified carefully]
**Urgency and why now:** [evidence / belief / unknown]
**Observed objections in order:** [from buyer evidence / unavailable]
**Known delivery and capacity constraints:** [list]
**Available source material:** [buyer conversations, tickets, sales notes, supplier quotes, usage data, other]
**Regulated or high-consequence category:** [yes and which / no / unknown]
**Claims this evidence permits:** [list]
**Claims this evidence does not permit:** [list]

For an internal initiative, interpret this section as adoption-case inputs. Do not invent an external offer.

---

## 8. ADAPTED CANVAS SUMMARY

| Box | Content | Evidence class |
|---|---|---|

---

## 9. RISKS AND DECISION

| Priority | Risk or unknown | Consequence | Leading indicator and threshold | Mitigation or test |
|---|---|---|---|---|

**Decision reasoning:** [plain-language explanation]

---

## 10. MARKET EVIDENCE AND SOURCES

| # | Finding | Source URL or origin | Date checked | Model input affected | Limitation |
|---|---|---|---|---|---|

**Still unverified:** [list with resolution]

---

## 11. STAGE 3 REVISIONS

Append-only. Record upstream evidence or actual economics that changes this model.

**Date:** | **Evidence:** | **Original value:** | **Revised value:**
**Scope of revision:** | **Downstream packets requiring review:**

If empty, write `No revisions yet.`

---

## 12. NEXT MODULE OR ACTION

**Immediate action:** [specific]
**External offer status:** [ready for Stage 4 / test first / not applicable to internal model]
**What Stage 4 must preserve:** [payer, economic floor, evidence limits, delivery constraints]
**One number or assumption to verify first:** [specific]
```

---

## SECTION 7: COMPACT WORKED EXAMPLES

### Example A: Capacity-constrained service

A service sells for $3,000. Delivery uses 24 founder hours and $150 of tools. The founder chooses a temporary loaded labor value of $75 per hour rather than treating labor as free.

- Variable delivery cost: `24 x $75 + $150 = $1,950`.
- Contribution: `$3,000 - $1,950 = $1,050`.
- Contribution margin: `35%`.
- At 80 available delivery hours per month and 70 percent sustainable utilization, capacity is `80 x 0.70 / 24 = 2.3`, or two engagements per month.
- Monthly contribution capacity is approximately `$2,100` before fixed selling and administrative costs.

The model may still be worthwhile as a paid validation service, but it does not support a large business at current scope. The sensitive variable is delivery time. The next test captures actual hours and revision load across three paid engagements before raising price or redesigning delivery.

### Example B: Early recurring product with unknown retention

A product is considering $149 per month. Current infrastructure and support cost are estimated at $24 per active customer per month, and onboarding costs $250. Retention is not observed.

- Contribution before acquisition: `$149 - $24 = $125` per month.
- Minimum retained periods to recover onboarding: `$250 / $125 = 2 months`.
- If a capped acquisition test spends $1,000 and produces four paying customers, provisional CAC is `$250`; payback including onboarding is `($250 + $250) / $125 = 4 months`.

Do not calculate lifetime value yet. The decision is whether customers remain and use the product beyond month four, not whether a benchmark churn rate can make a spreadsheet look attractive.

### Example C: Internal operating improvement

An internal process is expected to save 20 hours per week across a team. Only 12 hours are conservatively considered redeployable at a loaded cost of $55 per hour. It also avoids an estimated $12,000 per year in rework, based on recorded incidents.

- Annual capacity value: `12 x $55 x 48 working weeks = $31,680`.
- Annual hard rework reduction: `$12,000`.
- Conservative annual benefit: `$43,680`.
- Implementation cost: `$28,000`; annual operating cost: `$8,000`.
- Annual net benefit: `$35,680`.
- Approximate payback: `$28,000 / ($35,680 / 12) = 9.4 months`.

The adoption threshold remains load-bearing. If fewer than 60 percent of the target team follows the new process, the measured benefit falls below the base case. The first test is therefore an adoption pilot with actual cycle-time and rework capture, not a customer pricing interview.

### Example D: Marketplace before liquidity

A marketplace proposes a 12 percent take rate on a $200 transaction, creating $24 of gross net revenue. Payment cost, expected support, refunds, and initial incentives total $18, leaving $6 contribution before acquisition. The model cannot justify substantial paid acquisition at that repeat rate.

The first decision is not whether 12 percent matches competitors. It is whether a narrow geographic or category wedge can produce repeat transactions without incentives. Supply activation, demand activation, match rate, and repeat are tested separately; total signups are not a liquidity metric.
