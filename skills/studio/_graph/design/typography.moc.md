---
id: studio.design.typography.moc
description: (no description)
name: Typography (MOC)
description: Entry point for typography system decisions (scale, pairing, readability, implementation).
inputs:
  - brand_direction: "Visual identity and personality from creative-direction"
  - platform: "Web, mobile, or both"
outputs:
  - type_scale: "Complete scale with sizes, weights, line heights"
  - font_pairing: "Primary + secondary fonts with rationale"
  - tailwind_config: "Implementation-ready Tailwind typography config"
depends_on:
  - "[[studio.design.system.creative-direction]] — brand personality drives type choices"
feeds_into:
  - "[[studio.design.system.design-tokens]] — type scale becomes tokens"
  - "[[studio.design.typography.tailwind-implementation]] — tokens become code"
---

# Typography — MOC

## Foundations
- [[studio.design.typography.type-scale]] — modular scale and hierarchy
- [[studio.design.typography.font-pairing]] — choosing complementary fonts
- [[studio.design.typography.readability-rules]] — legibility and accessibility

## Implementation
- [[studio.design.typography.tailwind-implementation]] — Tailwind CSS config
- [[studio.design.typography.dark-mode-optics]] — adjustments for dark mode
