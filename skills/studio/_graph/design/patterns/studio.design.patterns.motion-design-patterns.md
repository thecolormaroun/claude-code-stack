---
id: studio.design.patterns.motion-design-patterns
name: Motion Design Patterns (Framer-style)
description: Practical motion patterns (springs, staggers, layout animations, micro-interactions) to make UI feel alive.
when_to_use:
  - when adding motion to UI
  - when transitions feel dead
---

# Motion Design Patterns

Inspired by the open-source “motion-design-patterns” skill in Dylan Feltus’s skills library. Studio-native version.

## Principles
- Motion should clarify **cause → effect** and preserve **spatial continuity**.
- Prefer a small, consistent set of timings/easings (see [[studio.design.system.motion-tokens]]).

## Patterns
### 1) Layout morph (shared element)
Use when expanding cards → detail views, or moving between density states.
- Keep a stable `layoutId` / shared element identity.
- Avoid unmount/remount teleporting.

### 2) Directional transitions
- Forward navigation: content enters from right.
- Back navigation: enters from left.
(Or an equivalent consistent mapping.)

### 3) Staggered entrances (lists)
Use for first-load / empty→populated states.
- 30–60ms stagger
- Keep it subtle for high-frequency screens.

### 4) Micro-interactions
- Hover/press feedback should be fast (100–150ms)
- Use scale/opacity/translate minimally (avoid bouncy toy feel)

### 5) Skeleton → content crossfade
Ensure skeleton matches final layout to preserve illusion.

## Related
- [[studio.design.patterns.design-with-taste]]
- [[studio.design.system.motion-tokens]]
