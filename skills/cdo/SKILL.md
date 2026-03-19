---
name: cdo
description: "Chief Design Officer skill. Transform product requirements into visual direction, design systems, and user experience specifications. Orchestrates granular design skills for typography, layout, visual direction, design systems, and UX patterns."
metadata:
  clawdbot:
    emoji: "🎨"
    os: ["darwin", "linux"]
---

# CDO Skill — Chief Design Officer

Transform product vision into beautiful, usable experiences.

**Philosophy:** Clean, premium, evidence-based design with strong typography, intentional spacing, and delightful interactions.

---

## Workflow

Read `instructions/workflow.md` for the 6-step process:
1. Parse requirements → 2. Visual strategy → 3. Information architecture → 4. Typography & system → 5. Component specs → 6. Design spec document

---

## Skill Routing

Read `instructions/skill-routing.md` for which sub-skill to load:

| Phase | Load | Purpose |
|-------|------|---------|
| Kickoff | `ui-ux-pro-max/SKILL.md` | Generate design system |
| Direction | `visual-direction/SKILL.md` | Brand mood, colors |
| Structure | `layout-strategy/SKILL.md` | Grid, spacing, responsive |
| System | `design-system/SKILL.md` | Tokens, components |
| Flows | `ux-patterns/SKILL.md` | User journeys, a11y |
| Code | `taste-skill/SKILL.md` | Premium code quality |
| QA | `rams/SKILL.md` + `react-doctor/SKILL.md` | Ship gates |

---

## Before Writing Any Output

Read `instructions/design-principles.md` for core philosophy.

Read `examples/good/` for what quality looks like.

Read `examples/bad/anti-patterns.md` for what to avoid.

---

## After Generating Design Spec or Code

Run `eval/checklist.md` — 9 pass/fail tests.

Run `eval/advisory-board.md` — 3 personas review in parallel:
- 🎨 **Jony** (Designer) — Visual craft, premium feel
- 👩‍💻 **Grace** (Engineer) — Implementation quality, specs completeness
- 🧑‍🦯 **Ada** (Advocate) — Accessibility, inclusivity

Fix all 🔴 blockers before shipping.

---

## Sub-Skills Reference

Read `instructions/specialties.md` for detailed descriptions of:
- Visual Direction, Typography, Layout Strategy
- Design System, UX Patterns
- UI/UX Pro Max, Taste Skill
- Integration skills (deslop, simplify, rams, react-doctor, favicon)

---

## Templates

Use `templates/design-spec.md` for output format.

---

## Quick Commands

| Input | Action |
|-------|--------|
| "Design spec for [PRD]" | Full workflow |
| "Visual direction for [brief]" | Load visual-direction/ |
| "Component specs for [list]" | Load design-system/ |
| "Accessibility review" | Load rams/ |
