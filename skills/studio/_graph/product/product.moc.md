---
id: product.moc
description: (no description)
name: Product (MOC)
description: Entry point for Studio product knowledge (discovery → PRD → prioritization → roadmap).
inputs:
  - voice_dump: "Raw brain dump from you (audio transcript or text)"
  - feedback: "Bug reports, feature requests, user feedback"
  - existing_prd: "Prior PRD to iterate on"
outputs:
  - prd_md: "Full PRD in markdown"
  - prd_json: "Machine-readable prd.json for /lfg execution"
  - rice_scores: "Prioritized feature list with RICE scores"
  - roadmap: "Now/Next/Later roadmap update"
triggers:
  - "/braindump — classify and structure raw ideas"
  - "/prd — generate full PRD"
  - "/rice — prioritize features"
  - "/roadmap — update or view roadmap"
  - "/commercialization — pricing, GTM, launch strategy"
depends_on:
  - "[[research.moc]] competitive — market context before PRD"
  - "CPO skill — main entry point for product work"
feeds_into:
  - "[[design.moc]] — design brief from PRD"
  - "[[ship.moc]] — PRD drives what gets built"
  - "Linear issues — features become tracked issues"
  - "ClawVault tasks — product decisions get logged"
---

# Product — MOC

Entry point for product thinking. Start with braindump classification, then go deeper.

## When to use which sub-domain

| Task | Load this |
|------|-----------|
| Raw idea → structured brief | [[studio.product.braindump.moc]] |
| Write a full PRD | [[studio.product.prd.prd-outline]] |
| Prioritize features | [[studio.product.prioritization.rice]] |
| Plan roadmap | [[studio.product.roadmap.moc]] |
| Pricing + launch | [[studio.product.commercialization.moc]] |
| Define the problem first | [[studio.product.discovery.problem-framing]] |

## Sub-domains
- [[studio.product.braindump.moc]] — classify brain dumps into bugs/features/strategy/questions
- [[studio.product.discovery.problem-framing]] — define the problem before the solution
- [[studio.product.prd.prd-outline]] — full PRD structure and template
- [[studio.product.prioritization.rice]] — RICE scoring framework
- [[studio.product.prioritization.rice-filters]] — post-RICE qualitative filters (joy, learning, portfolio, dependency)
- [[studio.product.roadmap.moc]] — Now/Next/Later planning
- [[studio.product.commercialization.moc]] — pricing, GTM, launch strategy
