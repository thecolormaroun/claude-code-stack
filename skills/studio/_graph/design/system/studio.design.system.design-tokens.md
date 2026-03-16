---
id: studio.design.system.design-tokens
name: Design Tokens (Type/Color/Spacing/Dark Mode)
description: A systematic, math-first approach to generating type scales, color palettes (incl. WCAG contrast), spacing scales, and dark mode token mappings.
when_to_use:
  - starting a new product/system
  - creating Tailwind/CSS variables
  - validating contrast and dark mode
---

# Design Tokens (Type / Color / Spacing / Dark Mode)

Studio-native distillation of the key ideas from Dylan Feltus’s `design-tokens` skill.

## Type scale (math, not vibes)
Formula:
- `size(step) = base × ratio^step`

Recommended ratios:
- Dense UI/dashboards: **1.125** (Major Second)
- General SaaS/web: **1.2** (Minor Third)
- Marketing/editorial: **1.25** (Major Third)

Rules:
- As font size ↑, line-height ↓.
- Don’t use weight as the only hierarchy lever; use size + spacing + weight.

## Spacing system
- Use a **base‑4** scale (Tailwind compatible): 4, 8, 12, 16, 20, 24, 32, 40, 48, 64…
- Avoid one-off values (7/13/19px) unless a strong reason.

## Color system
- Generate consistent shade ramps (50–950) per hue, then map to semantic tokens.
- Verify contrast for:
  - body text on bg (AA ≥ 4.5:1)
  - UI affordances (≥ 3:1)

## Dark mode derivation
- Derive systematically by flipping ramps (50↔950, 100↔900, 200↔800…)
- Prefer semantic tokens; components never reference raw shades.

## Outputs (what to produce)
- CSS custom properties
- Tailwind theme extension
- Token JSON (optional)

Related:
- [[studio.design.system.color-tokens]]
- [[studio.design.system.component-tokens]]
- [[studio.design.checklist.visual-qa]]
