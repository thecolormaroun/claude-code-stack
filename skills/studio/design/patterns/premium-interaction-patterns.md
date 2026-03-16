# Premium Interaction Patterns (Studio)

Purpose: a small, implementation-oriented pattern library Studio can reference when proposing UX and visual direction.

## 1) Reassurance-First Confirmation Screens

**Use when:** irreversible / high-stakes actions (payments, deletion, publishing, sensitive sharing).

**Core idea:** prioritize **“who/where is this going?”** reassurance above mechanics.

**Implementation cues:**
- Top third = identity verification block
  - avatar/logo
  - full name
  - secondary identifiers (account last-4, institution, email/handle)
- Mechanics below (amount, fees, timing)
- Strong escape hatches: “Change recipient” / “Edit details”
- CTA wording: explicit (“Confirm transfer”, “Publish now”), not vague (“Submit”)

**Why:** reduces fear of irreversible mistakes; carries cognitive load.

**Reference:**
- https://www.handheld.design/p/every-app-charges-these-5-taxes-design

---

## 2) Selective Physicality as Premium Polish (skeuo-adjacent)

**Use when:** you want 1–2 “separator moments” that make a standard layout feel premium.

**Core idea:** add a tactile/physical metaphor *surgically* (unwrap/reveal/fold/spatial motion) to reinforce meaning.

**Implementation cues:**
- pick one metaphor per moment
- motion supports orientation/hierarchy/feedback
- keep it fast + reversible
- avoid everywhere (turns into noise)

**Examples:**
- Unwrapping transition: https://www.designspells.com/spells/unwrapping-experience-when-opening-an-album-in-untitled
- Spatial sidebar motion: https://www.designspells.com/spells/sidebar-animations-in-roomsmith
- Playful empty state: https://www.designspells.com/spells/interactive-empty-state-graphics-in-basedash

**Why:** creates premium feel without redesigning the whole product.

---

## How Studio should use this
When proposing UX direction, Studio can say:
- “This is an irreversible action → apply Reassurance-First Confirmation.”
- “We need one premium separator moment → apply Selective Physicality here, not everywhere.”
