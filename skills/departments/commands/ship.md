---
name: ship
description: "Full pipeline: braindump → CPO (product) → CDO (design) → /lfg (build). Unleash every department."
argument-hint: "[braindump / idea / feature description]"
---

# /ship — Full Departments Pipeline

One command. Three departments. Every skill loaded.

```
Brain Dump → CPO (Product) → CDO (Design) → /lfg (Build + Ship)
```

## Input
$ARGUMENTS

## Mode Detection
If the input contains `--yolo` (or starts with "yolo"):
- **Strip the flag** from the input before processing
- **Skip all approval gates** — run straight through with no pauses
- Still log artifacts (plan file, design spec) but don't wait for confirmation

Otherwise: **pause for approval** after Product and after Design before building.

---

## Phase 1: CPO — Product Department

**Goal:** Turn raw input into a prioritized, sized, compound-engineering-compatible plan file.

### 1a: Brain Dump Processing
- Load `skills/studio/product/brain-dump-processor/SKILL.md`
- Extract and classify every item (bugs, features, improvements, design cues, strategic, open questions)
- Preserve exact words for context
- Infer implicit requirements from CLAUDE.md preferences

### 1b: Problem Framing
- Load `skills/studio/_graph/product/discovery/studio.product.discovery.problem-framing.md`
- Define: who is this for, what problem does it solve, what does success look like

### 1c: RICE Prioritization + Story Sizing
- Load `skills/cpo/SKILL.md` — run full CPO workflow
- Read `skills/cpo/instructions/rice-scoring.md` — score every item
- Read `skills/cpo/instructions/story-sizing.md` — size to XS/S/M (split anything L+)
- Read `skills/cpo/instructions/workflow.md` — Extract → Organize → Prioritize → Spec → Package

### 1d: PRD + Plan Generation
- Load `skills/studio/product/prd-writer/SKILL.md`
- Generate full PRD + plan file in compound-engineering format
- Save to `docs/plans/YYYY-MM-DD-NNN-feat-<name>-plan.md`
- Read `skills/cpo/examples/good/` for quality reference
- Read `skills/cpo/examples/bad/anti-patterns.md` for what to avoid

### 1e: CPO Quality Gate
- Run `skills/cpo/eval/checklist.md`
- Run `skills/cpo/eval/advisory-board.md` — 3 personas review in parallel:
  - **Shreyas** (PM) — Strategy, prioritization, user value
  - **Kent** (Builder) — Implementation feasibility, story quality
  - **Mom** (User) — Real-world usability, edge cases
- Fix all blockers before proceeding

**Output:** Plan file at `docs/plans/YYYY-MM-DD-NNN-feat-<name>-plan.md`

**→ Present plan summary. Ask for approval before proceeding.** (skip if `--yolo`)

---

## Phase 2: CDO — Design Department

**Goal:** Enrich the plan file with a complete design specification. Append `## Design Specification` to the plan.

### 2a: CDO Orchestration
- Load `skills/cdo/SKILL.md` — CDO is the orchestrator
- Read `skills/cdo/instructions/workflow.md` — Parse → Visual strategy → IA → Components → Enrich
- Read `skills/cdo/instructions/design-principles.md` — core philosophy
- Read `skills/cdo/instructions/skill-routing.md` — which sub-skills to load per phase

### 2b: Visual Direction + Creative Tokens
- Load `skills/cdo/visual-direction/SKILL.md` — brand mood, colors, typography
- Load `skills/studio/_graph/design/system/studio.design.system.creative-direction.md` — creative direction
- Load `skills/studio/_graph/design/system/studio.design.system.design-tokens.md` — token definitions

### 2c: Layout + Information Architecture
- Load `skills/studio/_graph/design/layout.moc.md` — grid, spacing, responsive rules, visual hierarchy

### 2d: Design System + Component Specs
- Load `skills/cdo/ui-ux-pro-max/SKILL.md` — comprehensive UI/UX patterns
- Load `skills/studio/_graph/design/designsystem.moc.md` — component tokens, motion tokens
- Load `skills/studio/_graph/design/system/studio.design.system.motion-tokens.md` — motion defaults

### 2e: Design Polish (consult all for maximum craft)
- `skills/cdo/taste-skill/SKILL.md` — anti-LLM-bias, typography calibration
- `skills/emil-design-eng/SKILL.md` — animation craft, easing, springs
- `skills/make-interfaces-feel-better/SKILL.md` — 16 UI principles
- `skills/taste-skill-suite/` — full anti-LLM-bias suite
- `skills/impeccable/` — premium design patterns, dark mode mastery
- `skills/ui-skills/` — accessibility, motion performance, 12 principles of animation
- `skills/ui-design-brain/` — 60+ component patterns
- `skills/userinterface-wiki/` — UI component rules

### 2f: UX Patterns + Accessibility
- Read `skills/cdo/instructions/specialties.md` — UX patterns, flows
- Load `skills/cdo/rams/SKILL.md` — WCAG accessibility + visual design review

### 2g: Copy (if UI has text)
- Load `skills/studio/_graph/design/copy/studio.design.copy.moc.md`
- Write UI copy following UX writing principles
- Run copy through `studio.design.copy.checklist.md`

### 2h: Anti-Slop Gate
- Load `skills/studio/_graph/design/system/studio.design.system.anti-slop.md`
- No placeholder content, no lorem ipsum, every visual choice justified

### 2i: CDO Quality Gate
- Run `skills/cdo/eval/checklist.md` — 9 pass/fail tests
- Run `skills/cdo/eval/advisory-board.md` — 3 personas review in parallel:
  - **Jony** (Designer) — Visual craft, premium feel
  - **Grace** (Engineer) — Implementation quality, specs completeness
  - **Ada** (Advocate) — Accessibility, inclusivity
- Read `skills/cdo/examples/good/` for quality reference
- Read `skills/cdo/examples/bad/anti-patterns.md` for what to avoid
- Fix all blockers before proceeding

**Output:** Plan file now has `## Design Specification` appended with full visual direction, tokens, components, interactions, and copy.

**→ Present design direction summary. Ask for approval before building.** (skip if `--yolo`)

---

## Phase 3: Compound Engineering — Build + Ship

**Goal:** Execute the enriched plan file. Ship it.

Hand off the fully enriched plan to `/lfg`:

```
/lfg Implement the plan at docs/plans/<plan-file>.md — it contains the full PRD and design specification.
```

This triggers the full compound-engineering pipeline:
1. `/workflows:plan` — Implementation plan from PRD + design spec
2. `/deepen-plan` — Parallel research agents strengthen the plan
3. `/workflows:work` — Execute the plan (parallel subagents)
4. `/workflows:review` — Multi-agent code review
5. `/resolve_todo_parallel` — Clean up TODOs
6. `/test-browser` — Browser tests on affected pages
7. `/feature-video` — Record feature walkthrough for PR

---

## Phase 4: Final QA

Before considering anything shipped:
- Run `skills/studio/_graph/design/checklists/studio.design.checklist.visual-qa.md`
- Run `skills/cdo/rams/SKILL.md` for final accessibility pass
- Run `skills/cdo/deslop/SKILL.md` + `skills/cdo/simplify/SKILL.md` for code cleanup

---

## Quick Commands

| Command | Action |
|---------|--------|
| `/ship [brain dump]` | Full pipeline: CPO → CDO → /lfg |
| `/ship --yolo [brain dump]` | Full pipeline, no approval gates |
| `/ship plan only: [idea]` | CPO only — stop after plan file |
| `/ship design: [plan file]` | CDO only — enrich existing plan |
| `/ship build: [plan file]` | Skip CPO/CDO, go straight to /lfg |

---

## Rules
- **Pause for approval** after Phase 1 and Phase 2 — unless `--yolo`
- **Design phase can compress** if using an established design system — skip 2b/2c, focus on 2d/2e
- **No lorem ipsum, no placeholder content** — every element is real or clearly marked as TODO
- **Log decisions** to the project's `docs/plans/` directory
- **Plan file is the single source of truth** — CPO creates it, CDO enriches it, /lfg executes it
