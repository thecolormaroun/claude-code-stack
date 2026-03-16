---
id: research.moc
description: (no description)
name: Research (MOC)
description: Entry point for Studio research knowledge (competitive intel, taste mining, synthesis templates).
inputs:
  - research_request: "A product or market question to investigate"
  - competitor_url: "Specific competitor or product to analyze"
  - design_inspiration_need: "Request for taste/aesthetic direction"
outputs:
  - competitive_analysis: "Landscape map, competitor teardowns, gap analysis"
  - taste_profile: "Curated aesthetic direction with references"
  - synthesis_doc: "Research findings synthesized into actionable brief"
triggers:
  - "/tastemining — design inspiration from web + bookmarks"
  - "/competitive — market analysis, gap analysis"
depends_on:
  - "X bookmarks (ops-x-bookmarks cron provides raw material)"
  - "Web search and fetch tools"
feeds_into:
  - "[[product.moc]] — competitive insights inform PRD and positioning"
  - "[[design.moc]] — taste profiles inform visual direction and creative direction"
---

# Research — MOC

Research feeds both product and design. Run research BEFORE committing to a product direction or visual identity.

## When to use which sub-domain

| Task | Load this |
|------|-----------|
| Who are the competitors? | [[studio.research.competitive.moc]] |
| What should this look/feel like? | [[studio.research.taste-mining.moc]] |

## Competitive
- [[studio.research.competitive.moc]] — landscape discovery, deep dives, gap analysis

## Taste mining
- [[studio.research.taste-mining.moc]] — sources, workflow, Maroun's taste profile
