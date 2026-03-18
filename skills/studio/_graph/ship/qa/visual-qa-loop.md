---
id: studio.ship.qa.visual-qa-loop
name: Visual QA Loop
description: Runnable screenshot-compare-fix protocol that Studio executes automatically during /ship and /lfg. Zero diffs required to proceed.
when_to_use:
  - after implementing any UI feature
  - before PR creation (mandatory gate)
  - during /ship and /lfg pipelines
inputs:
  - url: "Target URL to screenshot (default: http://localhost:3000)"
  - design_spec: "Optional Figma/design spec URL or image path"
  - states: "UI states to verify (default: all)"
outputs:
  - screenshot_path: "Path to current implementation screenshot"
  - diff_report: "Structured list of diffs in Name It Precisely format"
  - pass_fail: "PASS (zero diffs) or FAIL (diffs remain)"
depends_on:
  - "[[studio.design.checklist.visual-qa]] — full checklist"
  - "[[studio.design.patterns.premium-interaction-patterns]] §3, §5"
  - "[[studio.design.system.anti-slop]]"
feeds_into:
  - "[[studio.ship.qa.two-axis-review]] — runs after visual QA passes"
  - "[[studio.design.critique.taste-compounding]] — all diffs logged to critique log"
  - "[[ship.moc]] — Gate 1 of Quality Gates"
---

# Visual QA Loop

> "The gap between 'close enough' and 'correct' is where polish lives." — Brian Lovin, 2026

This protocol runs automatically during `/ship` and `/lfg`. It is not optional.
Do not mark a UI feature done until this loop outputs **zero diffs**.

---

## Protocol

### Step 1 — Screenshot the implementation

Run the screenshot script (or call the browser tool directly):

```bash
./scripts/visual-qa.sh [URL]
# Default URL: http://localhost:3000
# Outputs: screenshot path for analysis
```

Or directly via the browser tool:
```
browser screenshot http://localhost:3000
```

Capture **every relevant route/page** that was modified. One screenshot per distinct view.

---

### Step 2 — Compare against design spec (if available)

If a Figma link or design spec image exists:

```
Use the `image` tool to analyze both images side by side.
Prompt: "Compare these two images pixel-by-pixel. List every visual difference:
spacing, color, typography, border-radius, shadows, borders, alignment,
component sizing, and any missing or extra elements. Be exhaustive."
```

If no design spec exists, evaluate against the [[studio.design.checklist.visual-qa]] checklist sections:
1. Spacing + Rhythm
2. Alignment + Grid
3. Typography
4. Color + Contrast
5. Components + Consistency
6. Responsiveness
7. Accessibility + UX sanity

---

### Step 3 — Output structured diff (Name It Precisely format)

Every issue must be named precisely. No vague observations.

```
## Visual Diff Report — [YYYY-MM-DD] [Project] [Feature]

### Issue 1
- **What:** [Specific element — e.g., "CTA button bottom margin"]
- **Why:** [Which principle it violates — e.g., "12px used, system uses 16px"]
- **Correct:** [What it should be — e.g., "Set mb-4 (16px) to match spacing-scale.md"]

### Issue 2
- **What:** ...
- **Why:** ...
- **Correct:** ...

### Total issues: N
```

Zero issues = PASS. Any issue = FAIL, proceed to Step 4.

---

### Step 4 — Fix issues one by one

For each issue in the diff report:
1. Apply the fix
2. Re-screenshot the affected element/view
3. Verify the fix resolved the issue
4. Strike through or remove the issue from the report
5. Move to the next issue

Do not batch fixes blindly. Verify each one before moving on.

---

### Step 5 — Re-run the full loop

After all fixes:
1. Take a fresh full-page screenshot
2. Run the full comparison again (Step 2 → Step 3)
3. If new diffs appear, repeat from Step 4
4. Continue until the diff report returns **zero issues**

---

### Step 6 — State verification (MANDATORY, all features)

After passing zero-diff check, verify all applicable states:

| State | How to verify |
|-------|---------------|
| **Default** | Already done in main loop |
| **Hover** | Screenshot with cursor simulated / inspect styles |
| **Focus** | Tab through UI, screenshot focus rings |
| **Active** | Click/press state — screenshot or inspect |
| **Disabled** | Screenshot disabled variant if applicable |
| **Empty** | Screenshot with no data / empty collections |
| **Loading** | Screenshot skeleton/spinner state |
| **Error** | Trigger error state, screenshot |

For each state that fails: apply Name It Precisely format → fix → verify.

---

### Step 7 — Log all issues to critique log

After passing, log everything that was caught to the taste-compounding system:

```bash
# Append to ./logs/design-critique-log.md
# Format: see [[studio.design.critique.taste-compounding]]
```

See: [[studio.design.critique.taste-compounding]] — Gate 3 in the Quality Gates pipeline.

---

## Pass/Fail Gate

| Result | Action |
|--------|--------|
| ✅ PASS — zero diffs, all states verified | Proceed to [[studio.ship.qa.two-axis-review]] |
| ❌ FAIL — any diffs remain | Fix and re-loop. Do not proceed. |

**This gate cannot be skipped.** Not for deadlines. Not for "almost done."

---

## Quick Reference

```
visual-qa-loop:
  1. screenshot
  2. compare vs spec OR checklist
  3. name it precisely
  4. fix one by one
  5. re-screenshot
  6. repeat until zero diffs
  7. check all states
  8. log to critique log
  → PASS → proceed to two-axis-review
```

---

## Related
- [[studio.design.checklist.visual-qa]] — full checklist (run if no Figma spec)
- [[studio.design.patterns.premium-interaction-patterns]] §3 (Visual QA Refinement Loop)
- [[studio.design.patterns.premium-interaction-patterns]] §5 (Name It Precisely)
- [[studio.design.critique.taste-compounding]] — critique log and weekly rule promotion
- [[studio.ship.qa.two-axis-review]] — runs after visual QA passes
- [[ship.moc]] — Quality Gates section
