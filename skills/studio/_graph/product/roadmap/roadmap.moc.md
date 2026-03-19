---
id: studio.product.roadmap.moc
name: Roadmap Manager (MOC)
description: Maintain Now/Next/Later across projects.
inputs:
  - rice_scores: "Prioritized features from RICE scoring"
  - project_status: "Current progress on active work"
  - capacity: "Available time/resources for new work"
outputs:
  - roadmap_update: "Updated Now/Next/Later plan"
  - capacity_assessment: "Can we take on more? What needs to shift?"
depends_on:
  - "[[studio.product.prioritization.rice]] — priorities feed roadmap"
  - "Linear issues — current status of tracked work"
feeds_into:
  - "[[ship.moc]] — roadmap decides what ships next"
  - "AGENTS.md project queue — keeps the project's priority list current"
---

# Roadmap Manager — MOC

- [[studio.product.roadmap.now-next-later]] — the framework
- [[studio.product.roadmap.capacity-rules]] — how to assess what fits
- [[studio.product.roadmap.update-process]] — when and how to update
