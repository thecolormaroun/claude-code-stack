---
id: studio.product.braindump.moc
description: (no description)
name: Brain Dump Processing (MOC)
description: Turn raw input into structured brief + routing.
inputs:
  - raw_dump: "Voice transcript, text wall, or feedback list from you"
outputs:
  - classified_brief: "Structured summary: bugs, features, improvements, strategy, open questions"
  - routed_items: "Each item classified and routed to the right next step"
depends_on:
  - "Voice transcription (Whisper or audio transcript)"
feeds_into:
  - "[[studio.product.prd.prd-outline]] — features become PRD inputs"
  - "[[studio.product.prioritization.rice]] — items get RICE scored"
  - "Linear issues — bugs and features get tracked"
  - "task tracker entrys — action items get queued"
---

# Brain Dump Processing — MOC

First step for any raw input. Classify everything before acting on anything.

- [[studio.product.braindump.classification]] — how to categorize items
- [[studio.product.braindump.summary-template]] — output format
- [[studio.product.braindump.routing]] — where each category goes next
- [[studio.product.braindump.tracking]] — how to track items through the pipeline
