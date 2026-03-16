---
id: studio.design.system.motion-tokens
name: Motion Tokens
description: Duration + easing defaults for micro to macro interactions.
when_to_use:
  - motion specs
---

# Motion Tokens

## Durations
- fast: 100ms (press/hover)
- normal: 200ms (small state changes)
- slow: 350–450ms (sheet/page transitions, shared-element morphs)

## Easing
Default (entrances + morphs):
- `cubic-bezier(0.16, 1, 0.3, 1)`  *("golden curve" — fast start, gentle settle)*

Exits only:
- `cubic-bezier(0.4, 0, 1, 1)`

Avoid:
- linear

Use Motion.dev (`motion/react`) for complex sequences.

Related: [[studio.design.patterns.design-with-taste]]
