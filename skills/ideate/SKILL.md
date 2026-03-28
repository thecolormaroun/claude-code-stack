---
name: ideate
description: "Flesh out an idea using gstack's full ideation suite. YC-style validation, scope exploration, architecture review, design review. Use when brainstorming, validating ideas, or deciding if something is worth building."
metadata:
  clawdbot:
    emoji: "💡"
    os: ["darwin", "linux"]
---

# Ideate — Idea Exploration Workflow

Turn vague ideas into validated, scoped, designed plans ready for implementation.

Uses gstack's ideation suite:
- `/office-hours` — YC-style validation (demand, wedge, observation)
- `/plan-ceo-review` — Scope exploration (10-star product, ambition)
- `/plan-eng-review` — Architecture and feasibility
- `/plan-design-review` — Visual direction and UX
- `/autoplan` — Run all reviews automatically

---

## When to Use

- "I have an idea..."
- "Is this worth building?"
- "Help me think through this"
- "Brainstorm this with me"
- "What should I build?"
- "Flesh out this concept"

---

## The Ideation Pipeline

```
┌─────────────────────────────────────────────────────────────┐
│  VALIDATE        SCOPE           ARCHITECT       DESIGN    │
│  ───────────────────────────────────────────────────────── │
│  /office-hours   /plan-ceo-      /plan-eng-      /plan-    │
│  6 YC questions  review          review          design-   │
│  Demand reality  10-star product Architecture    review    │
│  Desperate user  Scope modes     Diagrams        Visual    │
│  Narrowest wedge Ambition check  Test strategy   0-10 dims │
└─────────────────────────────────────────────────────────────┘
                            ↓
              Output: docs/design-doc.md (validated, scoped, designed)
```

---

## Commands

### `/ideate` — Full Exploration

Runs the complete pipeline:

1. **Office Hours** — Answer 6 forcing questions:
   - What's the demand reality?
   - What's the status quo?
   - Who's the desperate specific user?
   - What's the narrowest wedge?
   - What observation led here?
   - Does this fit your future?

2. **CEO Review** — Scope exploration (pick mode):
   - SCOPE EXPANSION — Dream big, 10-star product
   - SELECTIVE EXPANSION — Hold scope + cherry-pick
   - HOLD SCOPE — Maximum rigor
   - SCOPE REDUCTION — Strip to essentials

3. **Eng Review** — Architecture:
   - System diagrams
   - API design
   - Data model
   - Test strategy
   - Performance considerations

4. **Design Review** — Visual:
   - 0-10 ratings per dimension
   - Component inventory
   - Interaction patterns
   - Accessibility check

Outputs: `docs/design-doc.md`

### `/ideate:quick` — Fast Validation

Just `/office-hours` — 6 questions, design doc, done.

Use when you need a quick gut check, not full exploration.

### `/ideate:auto` — Automated Reviews

Runs `/autoplan` — all three reviews (CEO, Eng, Design) with auto-decisions using 6 principles. Surfaces only "taste decisions" (borderline scope, close approaches, codex disagreements) for human approval.

Use when you want speed and trust the auto-decisions.

### `/ideate:scope` — Scope Exploration Only

Just `/plan-ceo-review` with scope mode selection.

Use when you have a clear idea but aren't sure how big to go.

### `/ideate:arch` — Architecture Only

Just `/plan-eng-review`.

Use when you know what to build but need to figure out how.

### `/ideate:design` — Design Only

Just `/plan-design-review`.

Use when you have a plan but need visual direction.

---

## Office Hours Modes

gstack's `/office-hours` has two modes:

### Startup Mode (default)
- 6 forcing questions
- Demand reality focus
- Desperate specificity
- Future-fit check

### Builder Mode
- Design thinking brainstorm
- For side projects, hackathons, learning, open source
- Less pressure on demand validation
- More exploration, less interrogation

Trigger with: `/office-hours --builder` or when context suggests side project

---

## Scope Modes (CEO Review)

| Mode | When to Use |
|------|-------------|
| SCOPE EXPANSION | You're playing it too safe, need to dream bigger |
| SELECTIVE EXPANSION | Core scope locked, cherry-pick high-value additions |
| HOLD SCOPE | Scope is right, need rigor and polish |
| SCOPE REDUCTION | Overscoped, need to find the essential wedge |

---

## Output: Design Doc

After ideation, you get `docs/design-doc.md`:

```markdown
# [Project Name]

## Problem
[Demand reality, desperate user, status quo]

## Solution
[10-star product vision, narrowest wedge]

## Scope
[Mode chosen, what's in/out]

## Architecture
[System diagram, data model, APIs]

## Design
[Visual direction, key screens, interactions]

## Open Questions
[Taste decisions surfaced by autoplan]

## Next Steps
[Ready for /mega:spec or /mega:build]
```

---

## Integration with Mega Workflow

Ideate is Stage 0 of `/mega`:

```
/ideate → /mega:spec (CPO/CDO) → /mega:build (/lfg) → /mega:verify → /mega:ship
```

After `/ideate`, you have a validated design doc. Feed it to CPO to turn it into a proper PRD with RICE scoring and implementation units.

---

## Decision Tree

```
How formed is your idea?
│
├─ Just a spark, need validation
│  └─ /ideate:quick (office-hours only)
│
├─ Have an idea, need to explore scope
│  └─ /ideate:scope (CEO review)
│
├─ Know the scope, need architecture
│  └─ /ideate:arch (Eng review)
│
├─ Have architecture, need design
│  └─ /ideate:design (Design review)
│
├─ Want full exploration, will decide myself
│  └─ /ideate (all 4 stages manual)
│
└─ Want full exploration, auto-decide most things
   └─ /ideate:auto (autoplan)
```

---

## Tips

- **Start with `/ideate:quick`** for most ideas — 80% don't survive the 6 questions
- **Use Builder Mode** for side projects — less pressure, more fun
- **SCOPE REDUCTION is underrated** — most ideas are too big at first
- **Trust `/ideate:auto`** — the 6 decision principles are solid
- **The design doc is a living artifact** — update it as you learn

---

## Skill Dependency

Requires gstack:
```bash
ls ~/.claude/skills/gstack/office-hours ~/.claude/skills/gstack/autoplan ~/.claude/skills/gstack/plan-ceo-review
```
