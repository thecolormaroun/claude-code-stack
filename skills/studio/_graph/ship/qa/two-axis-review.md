---
id: studio.ship.qa.two-axis-review
name: Two-Axis Review
description: Mandatory pre-PR quality gate. Scores all 4 quadrants (Dev Attention, Dev Intention, User Attention, User Over Time). Minimum 3/5 in every quadrant to proceed.
when_to_use:
  - before any PR creation (mandatory gate)
  - after visual-qa-loop passes
  - during /ship and /lfg pipelines
inputs:
  - implementation: "The built feature/screen/component to review"
  - visual_qa_report: "Output from the visual-qa-loop (all diffs resolved)"
outputs:
  - review_block: "Structured PR description block with scores and call-outs"
  - pass_fail: "PASS (all quadrants ≥ 3/5) or FAIL (any quadrant < 3)"
  - critique_entries: "Issues for the taste-compounding critique log"
depends_on:
  - "[[studio.ship.qa.visual-qa-loop]] — must pass before running this"
  - "[[studio.design.patterns.premium-interaction-patterns]] §4 (Two-Axis Review)"
  - "[[studio.design.checklist.visual-qa]]"
feeds_into:
  - "PR description — review block goes directly into the PR"
  - "[[studio.design.critique.taste-compounding]] — critique entries logged"
  - "[[ship.moc]] — Gate 2 of Quality Gates"
---

# Two-Axis Review

> Every screen or component reviewed for overall design/engineering quality before it ships.

Reference: [[studio.design.patterns.premium-interaction-patterns]] §4 (Quality Software — Two-Axis Review Pass)

---

## The Four Quadrants

The two axes are:
- **Axis 1 (vertical):** Developer perspective → User perspective
- **Axis 2 (horizontal):** Attention (what you see first) → Intention (what you feel over time)

| | **Attention** (what you see) | **Intention** (what you feel) |
|---|---|---|
| **Dev** | Dev Attention | Dev Intention |
| **User** | User Attention | User Over Time |

---

## Quadrant Rubrics

### Q1 — Dev Attention
*"Did we build it right?"*

Questions to answer:
- Every design token used correctly? (no raw hex, no magic numbers)
- Every UI state handled? (loading, empty, error, disabled, hover, focus)
- Color contrast passing WCAG AA?
- Animations running at 60fps? (no jank, no layout shifts)
- No console errors or warnings?
- Mobile/responsive layout correct?

### Q2 — Dev Intention
*"Did we build the right thing?"*

Questions to answer:
- Does every element earn its place? What can we remove?
- Form follows function — no decorative clutter
- Code is readable and maintainable (not just working)
- Edge cases accounted for in implementation
- Performance: bundle size, render time, API calls minimal?

### Q3 — User Attention
*"What does you see first?"*

Questions to answer:
- First paint fast? Time-to-interactive acceptable?
- Loading communicated clearly? (skeleton > spinner > nothing)
- Primary action visually dominant?
- Information hierarchy clear on first look?
- No visual noise competing with the main CTA?

### Q4 — User Over Time
*"Does this get better with use?"*

Questions to answer:
- Typeahead / autocomplete where useful?
- Predictive actions where appropriate?
- Does it personalize with use? (recent items, saved preferences)
- Error recovery is smooth — user doesn't lose state
- Happy path vs. return user experience considered?

---

## Scoring

Each quadrant scores **1–5**:

| Score | Meaning |
|-------|---------|
| 5 | Excellent — no issues |
| 4 | Good — minor issues, non-blocking |
| 3 | Acceptable — at least 1 issue noted and resolved |
| 2 | Below bar — issues not resolved, do not ship |
| 1 | Failing — fundamental problems |

**Minimum to proceed: 3/5 in every quadrant.**

If any quadrant scores < 3:
1. Name the issues precisely (see [[studio.design.patterns.premium-interaction-patterns]] §5)
2. Fix them
3. Re-score that quadrant
4. Do not proceed until all quadrants ≥ 3

---

## Protocol

### Step 1 — Run all four quadrants

For each quadrant:
1. Work through the rubric questions
2. Give a score (1–5)
3. Write ≥1 specific call-out (even for score 5, note what made it pass)

Use Name It Precisely format for every call-out:
- **What:** specific element or behavior
- **Why:** which principle it fails
- **Correct:** what it should be

### Step 2 — Check pass/fail

All quadrants ≥ 3? → PASS → generate review block → proceed to PR

Any quadrant < 3? → FAIL → fix issues → re-score → repeat

### Step 3 — Generate review block for PR

Copy this block into the PR description:

---

## Output Format — PR Review Block

```markdown
## Two-Axis Review

| Quadrant | Score | Call-out |
|----------|-------|---------|
| Dev Attention | X/5 | [specific observation] |
| Dev Intention | X/5 | [specific observation] |
| User Attention | X/5 | [specific observation] |
| User Over Time | X/5 | [specific observation] |

**Overall: PASS / FAIL**

### Issues Found & Resolved
- [Issue 1: what/why/correct]
- [Issue 2: what/why/correct]

### Issues Deferred (with justification)
- [None] or [Issue: why deferred, ticket reference]
```

---

## Pass/Fail Gate

| Result | Action |
|--------|--------|
| ✅ PASS — all quadrants ≥ 3/5 | Add review block to PR description → proceed |
| ❌ FAIL — any quadrant < 3 | Fix, re-score, do not create PR until PASS |

**This gate cannot be skipped.**

---

## After review

Log all issues found (resolved or not) to the critique log:

```bash
# Append to ./logs/design-critique-log.md
# Format: see [[studio.design.critique.taste-compounding]]
```

---

## Related
- [[studio.ship.qa.visual-qa-loop]] — runs before this (Gate 1)
- [[studio.design.patterns.premium-interaction-patterns]] §4 (Two-Axis Review)
- [[studio.design.patterns.premium-interaction-patterns]] §5 (Name It Precisely)
- [[studio.design.critique.taste-compounding]] — critique log and weekly rule promotion
- [[ship.moc]] — Quality Gates section
