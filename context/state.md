# Current state

Created: 2026-10-25. Branch: main. Remote: https://github.com/usl-academy/usl-academy-build-loop
(public), pushed 2026-10-25 at the user's request.

## Origin

Copied from the private usl-build-sequence repository at commit b5dfacc (2026-10-17), committed files
only, without that repository's history. From here this repository is the USL Academy methodology and
evolves on its own; changes in usl-build-sequence do not flow here automatically.

Included: build-loop, expertise-map, problem-validation, buyer-conversations, solution-mvp,
business-model, offer-design, brand-strategy, landing-page, prd-generation, build-sequence,
mcp-integration.

Not included: cold-outreach, deck-builder, search-optimization, content-strategy, weekly-content,
decision-metrics, competitor-landscape, pricing-strategy, fundraising work, the maintainer context
and evaluation corpora, and the untracked business documents (COURSE.md, SERVICE.md,
OFFER_DESIGN_FRAMEWORK.md) and reference book.

## Changes made at the copy

- mcp-integration/reference.md Section 7: the worked example no longer names the real product, its
  tenant or the outreach tool; the doctrine, tool shapes and sequence are unchanged.
- mcp-integration/evals.md: the consistency check no longer lists COURSE.md and SERVICE.md.
- landing-page/reference.md 8.6: no longer routes to the absent /search-optimization skill.
- offer-design/SKILL.md description: says not to use it for repricing a billing product instead of
  routing to the absent pricing-strategy skill.
- install.sh and install.ps1: install only the twelve skills; the package validation and retired-skill
  cleanup for skills not in this repository were removed.
- New README.md, LICENSE, AGENTS.md, .gitignore, .gitattributes and this file.

Kept on purpose: USL Academy branding and the course loop map in build-loop, the `usl-build/`
workspace name, and the "also read when present" lines for competitor-landscape.md and
pricing-strategy.md, which are inert without those files.

## Installation

This repository is for other people to install. The user decided on 2026-10-25 not to install it on
their own machine, where the same skill names stay linked to usl-build-sequence. Do not run the
installers there.
