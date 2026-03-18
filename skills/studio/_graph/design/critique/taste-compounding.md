---
id: studio.design.critique.taste-compounding
name: Taste Compounding System
description: Live critique accumulation system. Every build review generates structured critiques that compound into design rules over time via weekly pattern analysis.
when_to_use:
  - after every design review (Gate 3 of Quality Gates)
  - weekly (automated, Sunday 6 PM) to promote patterns to anti-slop rules
inputs:
  - critique_entries: "Name It Precisely format issues from visual-qa-loop or two-axis-review"
  - critique_log: "./logs/design-critique-log.md"
outputs:
  - log_entry: "Appended critique entry in the log"
  - promoted_rules: "New entries in anti-slop.md (weekly, automated)"
depends_on:
  - "[[visual-qa-loop]] — source of visual diffs"
  - "[[two-axis-review]] — source of quality call-outs"
  - "[[studio.design.patterns.premium-interaction-patterns]] §5 (Name It Precisely)"
feeds_into:
  - "[[studio.design.system.anti-slop]] — rules promoted from patterns"
  - "[[studio.design.checklist.visual-qa]] — checklist items refined from patterns"
  - "[[ship.moc]] — Gate 3 of Quality Gates"
---

# Taste Compounding System

> Precise critique compounds into taste. Vague approval produces regression.
> — [[studio.design.patterns.premium-interaction-patterns]] §5

The premise: every bug you catch during QA is a pattern. When patterns repeat, they become rules.
When rules are explicit, they prevent future bugs. This is how taste compounds.

---

## How It Works

```
Build → Visual QA Loop → Two-Axis Review
                ↓                   ↓
        Critique entries     Critique entries
                ↓                   ↓
         ┌─────────────────────────────┐
         │   design-critique-log.md   │
         └─────────────────┬───────────┘
                           │ (weekly, Sunday 6 PM)
                           ↓
              weekly-taste-compounding cron
                           │
                           ▼
              Pattern analysis (Haiku)
                           │
              ┌────────────┴────────────┐
              ↓                         ↓
      Recurring patterns         One-off issues
      → new rules in             → stay in log
        anti-slop.md
```

---

## Step 1 — Log every critique (Gate 3)

After every Visual QA Loop and Two-Axis Review session, append all found issues to the critique log.

**Log location:** `./logs/design-critique-log.md`

### Log entry format

```markdown
---
date: YYYY-MM-DD
project: [project name]
feature: [what was built]
source: [visual-qa-loop | two-axis-review | manual]
---

### Issue: [Short title]
- **What:** [Specific element — e.g., "Card padding bottom"]
- **Why:** [Principle violated — e.g., "8px used, system scale is 12px minimum"]
- **Correct:** [What it should be — e.g., "pb-3 (12px) per spacing-scale.md"]

### Issue: [Short title]
- **What:** ...
- **Why:** ...
- **Correct:** ...
```

Multiple issues per session → multiple `### Issue:` blocks under the same entry header.

---

## Step 2 — Weekly pattern analysis (automated)

The `weekly-taste-compounding` cron runs every Sunday at 6 PM (before weekly-life-review).

It reads the entire critique log and:
1. Groups similar issues across different sessions/projects
2. Identifies recurring patterns (same element type, same violation, same correction)
3. Promotes patterns that appear ≥2 times to new rules in `anti-slop.md`
4. Marks promoted entries in the log with `[PROMOTED → anti-slop]`

### Promotion threshold
- **≥2 occurrences** of the same pattern = promote to anti-slop rule
- Same "Why" category across different "What" specifics = pattern (e.g., multiple spacing violations = spacing pattern)

---

## Step 3 — anti-slop.md grows organically

When a pattern is promoted, a new rule is added to [[studio.design.system.anti-slop]] in this format:

```markdown
### [Rule title] *(added YYYY-MM-DD from critique log)*
- [Specific rule derived from pattern]
- Triggered by: [N] instances across [projects]
- Source issues: [short descriptions]
```

The anti-slop file evolves from real build critiques, not hypothetical rules.

---

## The Critique Log File

**Path:** `./logs/design-critique-log.md`

The file is append-only. Never delete entries. Mark promoted ones inline.

### Initial structure
```markdown
# Design Critique Log

Append-only. Populated by Gate 3 (taste-compounding) during every QA session.
Weekly analysis by `weekly-taste-compounding` cron promotes patterns to anti-slop rules.

Format: YYYY-MM-DD | project | what/why/correct | source

---
```

---

## Cron Job

The weekly compounding runs via scheduled automation:

```
Name: weekly-taste-compounding
Schedule: 0 18 * * 0  (Sunday 6 PM)
Timezone: [your timezone]
Model: anthropic/claude-haiku-4-5-20251001
Session: isolated
Timeout: 300 seconds
```

### What the cron does (prompt summary)
1. Read `./logs/design-critique-log.md`
2. Read `./_graph/design/system/studio.design.system.anti-slop.md`
3. Group critique entries by pattern (same violation type, same element type)
4. Identify patterns appearing ≥2 times
5. Append new rules to anti-slop.md for each qualifying pattern
6. Mark promoted entries in the critique log with `[PROMOTED → anti-slop YYYY-MM-DD]`
7. Output a summary of what was promoted

---

## Quick Reference

**During every QA session (Gate 3):**
```bash
# After visual-qa-loop and two-axis-review complete,
# append all issues found to the critique log:
# ./logs/design-critique-log.md
# Use Name It Precisely format (what/why/correct)
```

**Automation handles the rest** — every Sunday at 6 PM, patterns compound into rules.

---

## Related
- [[studio.design.system.anti-slop]] — rules promoted here
- [[studio.design.patterns.premium-interaction-patterns]] §5 (Name It Precisely)
- [[visual-qa-loop]] — primary critique source
- [[two-axis-review]] — secondary critique source
- [[ship.moc]] — Gate 3 of Quality Gates
