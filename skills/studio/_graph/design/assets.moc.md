---
id: studio.design.assets.moc
description: (no description)
name: Asset Generation (MOC)
description: Entry point for AI-assisted asset generation with quality/taste guardrails.
inputs:
  - asset_request: "What asset is needed (icon, OG image, illustration)"
  - brand_context: "Design tokens and creative direction for consistency"
outputs:
  - generated_assets: "AI-generated images, icons, or OG images"
  - prompt_library: "Reusable prompts for consistent asset generation"
depends_on:
  - "[[studio.design.system.creative-direction]] — brand consistency"
  - "nano-banana skill — AI image generation tool"
feeds_into:
  - "Project assets directory — saved to project repo"
  - "[[studio.ship.qa.checklist]] — assets need QA before shipping"
---

# Asset Generation — MOC

- [[studio.design.assets.prompt-patterns]] — proven prompt structures
- [[studio.design.assets.og-images]] — OG image generation workflow
- [[studio.design.assets.icons]] — icon generation and curation
- [[studio.design.assets.quality-checklist]] — quality gate for generated assets
