---
id: ship.moc
description: (no description)
name: Ship (MOC)
description: Entry point for Studio shipping/execution knowledge.
inputs:
  - prd_json: "Machine-readable PRD from product.moc or CPO skill"
  - design_spec: "Design specifications and tokens from design.moc or CDO skill"
  - codebase: "Existing project repo to build into"
outputs:
  - shipped_feature: "Implemented, QA'd, released code"
  - release_notes: "User-facing changelog"
  - qa_checklist: "Completed QA verification"
  - progress_md: "Updated progress.md in project directory"
triggers:
  - "/ship — full pipeline: braindump → PRD → design → build"
  - "/lfg — execute prd.json via Ralph loop (coding agent)"
depends_on:
  - "[[product.moc]] — needs PRD before building"
  - "[[design.moc]] — needs design spec before building"
  - "coding-agent skill — actual implementation"
  - "github skill — PR creation and CI checks"
feeds_into:
  - "GitHub PRs — code review and merge"
  - "Linear issues — status updates"
  - "Telegram — progress notifications to Maroun"
---

# Ship — MOC

The final stage. Only enter here when product direction AND design specs are clear.

## Pipeline position
```
product.moc → design.moc → HERE (ship.moc) → deployed
```

## When to use which sub-domain

| Task | Load this |
|------|-----------|
| Is this ready to build? | [[studio.ship.handoff.definition-of-done]] |
| Pre-release quality check | [[studio.ship.qa.checklist]] |
| Write release notes | [[studio.ship.release.notes-template]] |
| Visual QA loop | [[studio.ship.qa.visual-qa-loop]] |
| Two-axis quality review | [[studio.ship.qa.two-axis-review]] |
| Log and compound critique | [[studio.design.critique.taste-compounding]] |

## Quality Gates (Mandatory)

Before creating a PR, run these gates in order:

### Gate 1: Visual QA Loop
Load [[studio.ship.qa.visual-qa-loop]] and execute the screenshot → compare → fix loop.
Do not proceed until zero visual diffs remain.

Run: `~/clawd/skills/studio/scripts/visual-qa.sh [URL]`

### Gate 2: Two-Axis Review
Load [[studio.ship.qa.two-axis-review]] and score all 4 quadrants:
- Dev Attention, Dev Intention, User Attention, User Over Time
Minimum: 3/5 in every quadrant. Fix and re-score if below.
Paste the review block into the PR description.

### Gate 3: Critique Log
Log all critiques found during Gates 1–2 to the design critique log using "Name It Precisely" format.
Append to: `~/clawd/skills/studio/logs/design-critique-log.md`
See [[studio.design.critique.taste-compounding]] for format.

**These gates are not optional.** Not for deadlines. Not for small features.

---

## Handoff
- [[studio.ship.handoff.definition-of-done]] — criteria for "ready to build"

## QA
- [[studio.ship.qa.checklist]] — pre-ship quality gate
- [[studio.ship.qa.visual-qa-loop]] — screenshot → compare → fix loop (Gate 1)
- [[studio.ship.qa.two-axis-review]] — 4-quadrant quality score, min 3/5 (Gate 2)

## Critique & Taste
- [[studio.design.critique.taste-compounding]] — critique log + weekly pattern promotion to anti-slop rules (Gate 3)

## Release
- [[studio.ship.release.notes-template]] — user-facing changelog format
