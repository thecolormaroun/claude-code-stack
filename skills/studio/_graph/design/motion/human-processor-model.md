---
id: studio.design.motion.human-processor-model
name: Human Processor Model (Animation Timing Reference)
description: Scientific foundation for animation timing based on human cognitive/perceptual limits.
when_to_use:
  - choosing transition durations
  - justifying timing decisions in code review
  - debugging "feels slow" or "feels jarring" feedback
source: "Card, Moran, Newell (1983) — The Psychology of Human-Computer Interaction"
---

# Human Processor Model — Animation Timing Reference

Scientific basis for why certain animation durations "feel right."

## Key Parameters

| Parameter | Mean | Range | Design implication |
|-----------|------|-------|-------------------|
| Perceptual processor cycle | 100ms | 50–200ms | Minimum visible change |
| Cognitive processor cycle | 70ms | 25–170ms | "Instant" threshold |
| Motor processor cycle | 70ms | 30–100ms | Reaction time floor |
| Visual storage decay | 200ms | 90–1000ms | Max duration for perceived continuity |
| Working memory capacity | 7 chunks | 5–9 chunks | Max elements to animate simultaneously |

## Timing Guidelines (derived)

| Feedback type | Duration | Why |
|---------------|----------|-----|
| Instant (hover, press) | 50–100ms | Below cognitive cycle = feels instantaneous |
| Micro-interactions | 100–150ms | At perceptual cycle = smooth but snappy |
| Standard transitions | 150–250ms | Within visual storage = maintains continuity |
| Complex/large animations | 250–400ms | Allows cognitive processing without losing context |
| Page transitions | 300–500ms | Accounts for content parsing time |

## The 70ms Rule

The cognitive processor cycle (70ms mean) is why:
- Sub-100ms animations feel "instant" — processed in single cognitive cycle
- 100–200ms feels "responsive" — 1–2 cycles
- 200–300ms feels "smooth" — deliberate but not slow
- >400ms feels "slow" — multiple cycles, user notices waiting

## Practical Application

```css
/* Instant feedback */
.button:active { transition: transform 50ms ease-out; }

/* Standard UI */
.modal { transition: opacity 150ms ease-out; }

/* Complex movement */
.page-transition { transition: transform 300ms cubic-bezier(0.4, 0, 0.2, 1); }
```

## See Also
- [[studio.design.patterns.motion-design-patterns]] — Motion.dev implementation
- Emil Kowalski's animation decision framework (frequency-based)
