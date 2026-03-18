---
id: studio.design.designsystem.moc
description: (no description)
name: Design System (MOC)
description: Entry point for default tokens, component patterns, and motion.
inputs:
  - creative_direction: "Brand personality and visual identity"
  - type_scale: "Typography decisions from typography.moc"
  - spacing_scale: "Layout decisions from layout.moc"
  - color_palette: "Colors from creative-direction or visual-direction skill"
outputs:
  - design_tokens: "Complete token set (color, type, spacing, motion, components)"
  - component_specs: "Button, card, input specs with states and variants"
  - token_pack: "Exportable token pack for implementation"
depends_on:
  - "[[typography.moc]] — type decisions feed tokens"
  - "[[layout.moc]] — spacing decisions feed tokens"
  - "[[studio.design.system.creative-direction]] — brand drives everything"
feeds_into:
  - "[[ship.moc]] — tokens and component specs drive implementation"
  - "Tailwind config — tokens become CSS variables"
---

# Design System — MOC

The canonical source of truth for design decisions. Everything else references this.

## Tokens
- [[studio.design.system.color-tokens]] — color palette and semantic colors
- [[studio.design.system.component-tokens]] — component-level tokens
- [[studio.design.system.motion-tokens]] — animation timing and easing
- [[studio.design.template.token-pack]] — exportable token bundle

## Component patterns
- [[studio.design.system.buttons]] — button variants and states
- [[studio.design.system.cards]] — card patterns
- [[studio.design.system.inputs]] — form input specs

## Guardrails
- [[studio.design.system.anti-slop]] — what NOT to do (taste enforcement)
