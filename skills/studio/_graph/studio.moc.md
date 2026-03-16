---
id: studio.moc
name: Studio Skill Graph (Top-level)
description: Entry point for Studio's skill graph.
inputs:
  - user_request: "A /command, voice dump, or task description"
  - prd_json: "Optional — prd.json file from CPO skill for /lfg execution"
outputs:
  - artifacts: "PRD, design spec, shipped code, or QA checklist depending on pipeline stage"
  - progress_update: "Telegram summary of what was done"
triggers:
  - "/braindump — product brain dump → CPO → PRD"
  - "/prd — generate PRD from brief"
  - "/design — CDO design orchestration"
  - "/copy — write or review UI copy (loads design.copy.moc)"
  - "/microcopy — pattern-match UI copy to a surface"
  - "/copy-qa — run the copy QA checklist before shipping"
  - "/ship — full pipeline: product → design → build"
  - "/lfg — execute prd.json via Ralph loop"
depends_on:
  - "CPO skill (for incoming PRDs and product direction)"
  - "CDO skill (for design specs and visual direction)"
  - "coding-agent skill (for implementation)"
feeds_into:
  - "Shipped product features"
  - "Obsidian vault (artifacts saved to ~/Vault/00 Inbox/)"
  - "Linear issues (progress tracked)"
---

# Studio Skill Graph

Use this to navigate Studio's knowledge by progressive disclosure.
Start here, then follow domain MOCs only as needed.

## Pipeline Flow (how domains connect)

```
User Request / Voice Dump
        ↓
  [[product.moc]]          ← Start here for new features, PRDs, prioritization
        ↓
  [[design.moc]]           ← Once product direction is clear, get design specs
        ↓
  [[ship.moc]]             ← When ready to build: handoff → QA → release
        ↑
  [[research.moc]]         ← Feeds into both product and design (competitive, taste)
```

## Domains
- [[design.moc]] — patterns, heuristics, checklists, templates for UI/UX/visual direction
- [[product.moc]] — discovery, PRDs, prioritization, roadmaps, GTM
- [[research.moc]] — competitive intel, taste mining, synthesis templates
- [[ship.moc]] — handoff, QA, release, execution loops

## Reference
- [[studio-graph-readme]] — studio skill graph overview and navigation guide

## Shared (apply across all domains)
- [[shared.quality-bar]] — definition of "done well"
- [[shared.writing-style]] — voice and tone for Studio outputs (specs, briefs, docs)
- [[shared.recursive-improvement]] — how Studio learns and improves

## Copy (UX Writing)
Full skill set for writing UI strings — microcopy, tone, voice, QA.
→ Entry point: [[studio.design.copy.moc]]

## Cross-skill handoffs
| From | To | Artifact |
|------|----|----------|
| CPO skill | product.moc | prd.json + PRD.md |
| product.moc | design.moc | design brief |
| design.moc | ship.moc | design spec + tokens |
| ship.moc | coding-agent | implementation task |
| research.moc | product.moc | competitive analysis |
| research.moc | design.moc | taste profile |
