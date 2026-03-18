---
id: studio.design.patterns.premium-interaction-patterns
name: Premium Interaction Patterns
description: Small set of reusable interaction patterns that create trust + premium feel.
when_to_use:
  - high-stakes flows
  - products needing premium polish
---

# Premium Interaction Patterns

Companion doctrine: [[studio.design.patterns.design-with-taste]] (Simplicity → Fluidity → Delight)

## 1) Reassurance-First Confirmation Screens

Use when an action is **irreversible** (payments, deletion, publishing). Prioritize identity reassurance above mechanics; lean on [[studio.design.heuristics.trust-signals]] and [[studio.design.heuristics.error-prevention]] to reduce anxiety.

Implementation cues:
- Top third: identity block (avatar/name/secondary identifiers)
- Mechanics below (amount, fees, timing)
- Clear escape hatches: edit/change
- Explicit CTA wording

Reference: https://www.handheld.design/p/every-app-charges-these-5-taxes-design

## 2) Selective Physicality as Premium Polish (skeuo-adjacent)

Use sparingly (1–2 “separator moments”) where tactile metaphor improves comprehension or delight. Avoid blanket skeuomorphism; treat motion as meaning.

Examples:
- https://www.designspells.com/spells/unwrapping-experience-when-opening-an-album-in-untitled
- https://www.designspells.com/spells/sidebar-animations-in-roomsmith
- https://www.designspells.com/spells/interactive-empty-state-graphics-in-basedash

## 3) The Visual QA Refinement Loop (Figma-to-Code)

**Use when:** implementing any design from a Figma file or spec. Run this before ANY build is called "done."

**Steps:**
1. Implement first pass
2. Screenshot your implementation
3. Pull up Figma/spec side-by-side
4. List **every** difference: spacing, color, typography, radius, shadows, borders, alignment, responsive behavior
5. Fix one by one, verify each
6. Repeat until no differences remain
7. Check all states: hover, focus, active, disabled, empty, loading, error

**Ask on ambiguity; never guess.** Approximation compounds into drift.

> "The gap between 'close enough' and 'correct' is where polish lives." — Brian Lovin, 2026

Reference: https://brianlovin.com/writing/give-your-agent-a-laboratory-jH5ryjC
Vault note: [[visual-qa-loop]]

## 4) Quality Software — The Two-Axis Review Pass

**Use when:** reviewing any screen or component for overall design/engineering quality.

| Quadrant | Questions |
|----------|-----------|
| **Dev Attention** | Every token correct? Every state handled? Contrast passing? 60fps? |
| **Dev Intention** | Does every element earn its place? What can we remove? Form = function? |
| **User Attention** | First paint fast? Loading communicated? Skeleton > spinner? |
| **User Over Time** | Typeahead? Predictive? Personalizes with use? |

**Rule:** each quadrant should have ≥1 specific call-out in any design review.

Reference: https://brianlovin.com/writing/quality-software-YA7uK4E
Vault note: [[two-axis-review]]

## 5) Design Critique Standard — Name It Precisely

**Use when:** reviewing any design output, flagging issues, or writing build logs.

**Rule:** never say "this feels off." Always name:
1. **What** is wrong (specific element: button label, border-radius, animation timing)
2. **Why** it fails (breaks visual hierarchy / violates token / animation too slow)
3. **What "correct" looks like** (even if approximate)

✅ "The CTA margin is 12px but our system uses 16px — it looks crowded against the card edge."
❌ "The button area feels a bit tight."

Precise critique compounds into taste. Vague approval produces regression.

Reference: https://brianlovin.com/writing/hiring-design-minded-frontend-engineers-61rbXSV
Vault note: [[taste-compounding]]
