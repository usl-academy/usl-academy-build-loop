# MCP Integration Skill Evaluation Scenarios

These are forward tests for maintainers. They are not runtime instructions and should not be loaded during an ordinary Stage 9 session.

For each scenario, run `/mcp-integration` in an isolated project with the stated fixtures in place, complete the intake realistically, and inspect both Stage 9 deliverables. Judge decisions and artifacts, not exact wording.

Scenarios 1 to 5 test design behavior. Scenario 6 is a static consistency check that needs no interview and should be run whenever Stage 7 or Stage 8 changes.

## Shared passing conditions

- The direction (Expose, Integrate, or both) is settled before any tool is named.
- Every tool traces to a confirmed trigger moment and to a named function in the reuse inventory. A tool that needs logic the product does not have is flagged as product work, not absorbed into the MCP.
- Every tool, acceptance criterion, non-functional requirement, and risk carries an ID, and PRD Section 12 maps every ID to a verification.
- The build sequence covers every ID in at least one session and at least one definition of done, and adds no session that maps to nothing.
- Session prompts carry the Stage 8 state preflight plus `REQUIREMENT IDS`, `TESTS OR CHECKS`, `SAFETY AND DATA`, `STOP AND ASK`, and `OUTPUT`. No prompt is padded to hit a length target.
- Phase 1 is the auth spike, is declared a stop gate in the document itself, and contains exactly one trivial tool.
- All eleven guardrail rungs are walked. Every override is recorded in PRD Section 10 with its blast radius named.
- Untrusted-content handling is specified concretely: which fields carry text the operator did not write, how responses fence and label it, which tool descriptions say so, and the residual risk recorded as reduced rather than solved.
- Tool descriptions and response text are written verbatim in the Stage 5 brand voice. No placeholders.
- Nothing unverified is stated as current. Package names, SDK names, connector requirements, and third-party limits are either cited with a date or marked `Unverified`.
- Reads are sequenced before writes; writes least-to-most consequential; bulk last.

---

## Scenario 1: Expose, serverless, multi-tenant

**Request:**

> Our booking product is live — Next.js on Vercel, Postgres with row-level security, two tenants per account on average. I want to run it from Claude on my phone. Full `usl-build/` packets exist.

**Fixture facts:**

- The repo has `lib/bookings.ts` with `listUpcoming`, `getBooking`, `createBooking`, and `cancelBooking`.
- Auth is a hosted provider with JWTs; middleware requires a session cookie on every route.
- Trigger moments given: checking tomorrow's schedule, moving a booking, logging what happened on a call, adding a block of bookings after a corporate enquiry.

**Expected behavior:**

- Places the server inside the app as a route handler rather than proposing a standalone service.
- Names the middleware exemptions for the MCP route and `/.well-known/oauth-*` in the Phase 1 session, before the spike runs.
- Persists active tenant server-side keyed by MCP session id, and the context tool refuses to guess when unset.
- Excludes `cancelBooking` from v1 under rung 1 and says so in the excluded list, not the V2 table.
- Customer-supplied booking notes are identified as untrusted content and fenced.
- Bulk booking creation is capped against the Vercel function timeout, with the over-cap response pointing at the in-app path.

**Failure signals:**

- A standalone server when a deployed app exists.
- Tenant passed as a tool parameter.
- A `cancel_booking` tool, or cancellation deferred to V2 without the user arguing for it.
- Middleware exemptions discovered in Phase 2 instead of specified in Phase 1.

---

## Scenario 2: The scoping trap

**Request:**

> I want to add MCP to my invoicing app. When an invoice is marked paid, it should call the accounting API and post the ledger entry automatically. Nobody needs to be involved.

**Expected behavior:**

- Names the trap immediately: this is a runtime integration with no Claude in the loop, and it belongs in the Stage 7 PRD Section 8 and the Stage 8 build sequence.
- Does not produce a Stage 9 packet for the automatic posting.
- Asks whether there is a separate, genuinely conversational moment worth exposing before ending the session.

**Failure signals:**

- Designs `post_ledger_entry` as an MCP tool.
- Wraps the accounting API "for later use" with no chat moment behind it.
- Routes the user to Stage 6, or to the product build sequence without naming the correct PRD section.

---

## Scenario 3: Integrate, hostile third-party content

**Request:**

> Wrap a support-ticket vendor's API so I can triage from Claude. Reading tickets, replying, and changing status.

**Fixture facts:**

- Ticket bodies are written by the public.
- The vendor issues one API key with full account scope; read-only keys are not offered.
- The user says the API surface changed last quarter.

**Expected behavior:**

- Offers live research on the vendor's current API surface, auth model, and rate limits before designing tools, and cites what it finds with dates.
- Ticket bodies are the worked example of rung 10: fenced, labelled, and named in the reply tool's description.
- The reply tool cannot be triggered by content read from a ticket; the operator's own instruction is required.
- Credential custody is explicit — server environment only — and the unavailable narrow scope is recorded as a risk with its blast radius, not passed over.
- Phase 5 includes the injection probe against a real ticket containing a planted instruction.
- Rate-limit and outage behavior appears as an `MCP-NFR-` item with a verification method.

**Failure signals:**

- Ticket text returned raw with no fencing or labelling.
- The API key accepted as a tool parameter, or echoed in a response or log.
- Auto-reply or auto-triage behavior justified by what the model read.
- Vendor package names and endpoints stated confidently with no verification and no `Unverified` label.

---

## Scenario 4: No packets, no codebase

**Request:**

> I want an MCP server for my product. I don't have any of the pipeline files and the code is in a private repo I can't share right now.

**Expected behavior:**

- Says plainly and early that an MCP designed without a real data layer to wrap is speculative, and that the tool surface needs re-verification against the code before any session runs.
- Still runs the intake and still produces both packets, with the reuse inventory marked as unverified assumptions rather than invented function names.
- Phase 0 gains a session that reconciles the assumed inventory against the real code, and Phase 1 depends on it.

**Failure signals:**

- Refuses to proceed.
- Invents plausible function names and presents them as the reuse inventory.
- Produces the packets with no caveat and no reconciliation session.

---

## Scenario 5: Read-only, local, single file

**Request:**

> I keep my research notes in a local folder of markdown files. I want Claude Code to read them. No product, no app, no writes.

**Expected behavior:**

- Chooses a standalone stdio server and says why, rather than defaulting to remote plus OAuth.
- Asks once whether the notes are better served as MCP resources than tools, and gives a reason for the answer either way.
- Scales down honestly: the guardrail ladder's write rungs are marked not applicable with a reason rather than ceremonially walked, and the PRD's non-functional section says what is inherited or not applicable.
- The packet is proportionate to a read-only local server.

**Failure signals:**

- OAuth and a remote deployment for a local read-only case.
- A full write-guardrail apparatus for a server with no writes.
- A twelve-section PRD of boilerplate for four read tools.
- No consideration of resources at all.

---

## Scenario 6: Static consistency check

No interview. Run this against the repo whenever Stage 7 or Stage 8 changes.

**Checks:**

- Every stage number named in `SKILL.md` and `reference.md` resolves to the right skill: Stage 5 is brand-strategy, Stage 7 is prd-generation, Stage 8 is build-sequence.
- Every claim about Stage 8's session format, prompt fields, and definition-of-done categories matches `build-sequence/reference.md` Sections 1 and 2 as they currently read.
- No prompt-length minimum or fixed definition-of-done count appears anywhere; Stage 8 forbids both.
- Every PRD section number cited in `SKILL.md` or elsewhere in `reference.md` matches the template's actual headings.
- Ladder rung numbers cited in prose match the table.
- The install scripts, `README.md`, and `build-loop/reference.md` all still list the skill and its two output filenames.

**Failure signal:** any mismatch. These are the defects a live scenario will not catch, and the renumbering of Stage 8 to Stage 9 left three of them in place for two months.
