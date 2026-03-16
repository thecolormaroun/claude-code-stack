---
id: studio.design.layout.moc
description: (no description)
name: Layout Strategy (MOC)
description: Entry point for grid, spacing, hierarchy, and responsive layout decisions.
inputs:
  - content_structure: "What content needs to be displayed and in what priority"
  - platform: "Desktop, mobile, or responsive"
outputs:
  - grid_system: "Column grid, gutter, and margin specs"
  - spacing_scale: "Consistent spacing tokens"
  - responsive_rules: "Breakpoint behavior"
depends_on:
  - "[[studio.design.typography.moc]] — type scale influences vertical rhythm"
feeds_into:
  - "[[studio.design.system.design-tokens]] — spacing values become tokens"
  - "[[studio.design.system.component-tokens]] — layout rules inform component sizing"
---

# Layout Strategy — MOC

## System
- [[studio.design.layout.spacing-scale]] — consistent spacing tokens
- [[studio.design.layout.grid-system]] — column grid specs

## Responsive
- [[studio.design.layout.responsive-rules]] — breakpoint behavior
- [[studio.design.layout.touch-targets]] — minimum tap sizes

## Hierarchy
- [[studio.design.layout.visual-hierarchy]] — how to guide the eye
