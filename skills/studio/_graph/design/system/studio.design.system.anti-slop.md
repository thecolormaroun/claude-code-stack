---
id: studio.design.system.anti-slop
name: Anti-Slop Rules
description: Guardrails to prevent generic output from shipping.
when_to_use:
  - always
---

# Anti-Slop Rules

- No placeholder content in production
- No lorem ipsum that ships
- No generic stock-photo vibes
- No gratuitous gradients/glass without purpose
- Every visual choice should have a reason
- No "dead UI" (teleporting elements, static transitions everywhere) — apply [[studio.design.patterns.design-with-taste]]

### Screenshot-Compare QA Pass *(added 2026-03-15 from critique log)* - Every component shipment requires a visual diff/screenshot-compare pass before production. This catches spacing drift, alignment shifts, and visual regressions that code review misses. - Triggered by: 2 instances across example-project, studio projects - Source issues: Example Project skipped visual QA loop on initial build; Studio design-digest flagged missing diff loops
