---
id: studio.design.patterns.design-with-taste
name: Design With Taste (Simplicity → Fluidity → Delight)
description: Interaction-quality doctrine and checklist adapted from “Family Values” (Benji Taylor). Use to avoid dead, generic UI.
when_to_use:
  - any user-facing UI work
  - flows that feel "flat" or "lifeless"
  - before declaring UI done
---

# Design With Taste (Simplicity → Fluidity → Delight)

Adapted from Benji Taylor’s **“Family Values”** (Family): https://benji.org/family-values

This is a *doctrine + checklist* for making UI feel **crafted, alive, and intentional**.

## The 3 pillars (ordered)
You can’t have **Delight** without **Fluidity**, and you can’t have **Fluidity** without **Simplicity**.

### 1) Simplicity — *Gradual revelation*
**Goal:** reduce cognitive load by revealing complexity in layers.

Non‑negotiables:
- **One primary action per view.** Two equal CTAs = ambiguous.
- **Progressive disclosure > feature dumps.** Prefer steps, expanders, and layered trays/sheets.
- **Context-preserving overlays > full navigations** when you is “still doing the same thing.”
- **Every overlay has a title + clear dismiss.** Always.
- **Stacked layers must be visibly different heights.** (Depth should be legible.)

Quick test: *Can a user tell in 1 second what to do next?* If not, simplify.

### 2) Fluidity — *Nothing teleports*
**Goal:** preserve spatial orientation; transitions should feel like moving through a space.

Non‑negotiables:
- **No instant show/hide.** Anything appearing/disappearing should animate.
- **Shared elements should morph** (don’t unmount/remount). If it exists in both states, it travels.
- **Directional consistency.** Forward = enter from right; back = enter from left (or an equivalent consistent mapping).
- **Persistent elements stay put.** Don’t animate them out and back in.
- **Partial updates: animate only what changed.** (Especially for text.)

Default easing (the “golden curve”):
- `cubic-bezier(0.16, 1, 0.3, 1)` for entrances/morphs
- Use `cubic-bezier(0.4, 0, 1, 1)` for exits

Quick test: *Screen record and watch at 0.5× speed. Can you track every element’s journey?*

### 3) Delight — *Selective emphasis*
**Goal:** add personality without annoying you.

Rule of thumb (Delight-Impact Curve):
- **High-frequency actions:** subtle micro-interactions (fast, unobtrusive)
- **Low-frequency moments (first-run, milestone, completion):** theatrical (memorable)

Non‑negotiables:
- **Empty states are first impressions.** Never ship “No items yet” alone.
- **Completions deserve celebration** when meaningful (not just a green check).
- **Numbers should animate** when they change (counts, balances, charts) where it helps comprehension.
- **Polish is even.** One "dirty bathroom" corner makes the whole product feel cheap.

## The Taste Checklist (run before “done”)
### Simplicity
- [ ] This screen has **one** clear primary action
- [ ] Complex flows are broken into steps (not one mega-form)
- [ ] Overlays preserve context (sheet/tray) when appropriate
- [ ] Overlays have title + dismiss
- [ ] Layer heights make depth obvious

### Fluidity
- [ ] No teleporting elements (no instant show/hide)
- [ ] Shared elements morph between states where applicable
- [ ] Directional transitions are consistent
- [ ] Persistent elements don’t redundantly animate
- [ ] Text updates are animated minimally (only what changes)
- [ ] Default easing is used consistently (see above)

### Delight
- [ ] Empty states are designed
- [ ] Important completions have a moment
- [ ] Frequent actions get subtle, fast feedback
- [ ] At least one “oh, that’s nice” moment exists (without slowing core workflows)

## Anti-patterns (taste killers)
- Static tab switches (no directional cue)
- Modals that pop from nowhere (no origin story)
- Linear easing
- Skeletons that don’t match real layout
- Toasts for important outcomes (use inline, contextual feedback)
- Over-delighting high-frequency actions

## Implementation notes (Studio context)
- Pair with:
  - [[studio.design.system.anti-slop]] (guardrails)
  - [[studio.design.system.motion-tokens]] (system defaults)
  - [[studio.design.patterns.premium-interaction-patterns]] (high-trust moments)

## Dependencies / libraries (optional)
The referenced ecosystem suggests:
- `torph` — text morphing
- `liveline` — animated line charts

**Caution:** do not adopt dependencies by default. Use them when the product warrants it; otherwise implement the minimal viable version using Motion.dev (`motion/react`).
