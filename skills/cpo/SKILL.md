---
name: cpo
description: "Chief Product Officer skill. Turn brain dumps into shipping software. Process voice/text into PRDs, prd.json, and Studio-ready execution specs."
metadata:
  clawdbot:
    emoji: "🎯"
    os: ["darwin", "linux"]
---

# CPO Skill — Chief Product Officer

Turn brain dumps into shipping software.

**Philosophy:** Every feature has a user, a problem, and a measurable outcome. Ship small, learn fast, iterate.

---

## Workflow

Read `instructions/workflow.md` for the 5-step process:
1. Extract → 2. Organize → 3. Prioritize → 4. Spec → 5. Package

---

## Prioritization

Read `instructions/rice-scoring.md` for RICE formula and scoring guide.

**RICE = (Reach × Impact × Confidence) / Effort**

---

## Story Sizing

Read `instructions/story-sizing.md` for the core constraint:

**Each story must be completable in ONE context window.**

Sizing: XS/S/M only. If L or XL, split it.

---

## Before Shipping Any PRD

Read `examples/good/` for what quality looks like.

Read `examples/bad/anti-patterns.md` for 14 anti-patterns to avoid.

---

## After Generating PRD

Run `eval/checklist.md`:
- 8 PRD checks
- 8 Story checks  
- 6 prd.json checks

Run `eval/advisory-board.md` — 3 personas review in parallel:
- 🎯 **Shreyas** (PM) — Strategy, prioritization, user value
- 🛠️ **Kent** (Builder) — Implementation feasibility, story quality
- 👤 **Mom** (User) — Real-world usability, edge cases

Fix all 🔴 blockers before shipping to Studio.

---

## Output Files

| File | Purpose |
|------|---------|
| `specs/prd-v[N].md` | Full PRD |
| `agents/prd.json` | Ralph loop spec |
| `progress.md` | Studio ground truth |

---

## Templates

Use `templates/prd.md` for PRD format.
Use `templates/prd.json` for machine-readable spec.

---

## Quick Commands

| Input | Action |
|-------|--------|
| "[voice dump]" | Full workflow: Extract → Prioritize → PRD + prd.json |
| "Feedback on V1" | Process → Generate V2 PRD |
| "What's the roadmap?" | Show Now/Next/Later |
| "Ship to Studio" | Package files + /lfg instructions |
| "Scope this down" | Trim to P0 only, defer rest |
