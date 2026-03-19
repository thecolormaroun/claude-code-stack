---
name: compound-engineering
description: Make your AI agent learn automatically. Extract learnings from sessions, update memory files, and compound knowledge over time.
version: 1.0.0
author: lxgicstudios
---

# Compound Engineering

Make your agent smarter every day through automated learning extraction.

**The idea:** Review your own work, extract patterns and lessons, update instructions. Tomorrow's agent is smarter than today's.

---

## Quick Start

```bash
# Review last 24 hours
npx compound-engineering review

# Set up nightly cron
npx compound-engineering setup-cron
```

---

## Workflow

Read `instructions/workflow.md` for the compound loop:

```
Daily Work → Nightly Review → Extract Learnings → Update Files → Next Day Benefits
```

---

## Extraction

Read `instructions/extraction.md` for what to extract:

| Category | Goes To |
|----------|---------|
| Patterns (worked) | AGENTS.md or skill files |
| Gotchas (failed) | .learnings/ERRORS.md |
| Corrections | .learnings/LEARNINGS.md |
| Preferences | USER.md |
| Decisions | memory/daily/ |
| TODOs | ClawVault tasks |

---

## Before Extracting

Read `examples/bad/anti-patterns.md` for 14 things to avoid.

Key rules:
- Specific, not vague
- Actionable, not obvious
- Context included
- No duplicates

---

## After Nightly Review

Run `eval/checklist.md`:
- 6 review checks
- 5 extraction quality checks
- 4 promotion checks

---

## Integration

### Cron Setup

```json
{
  "id": "compound-nightly",
  "schedule": "30 22 * * *",
  "text": "Review last 24h sessions. Extract patterns, gotchas, preferences, decisions. Update memory files. Commit changes."
}
```

### Promotion Lifecycle

```
Observation → .learnings/ (capture)
    ↓ (pattern confirmed 2+ times)
Pattern → AGENTS.md or TOOLS.md
    ↓ (affects core behavior)
Principle → SOUL.md (rare)
```

---

## Quick Commands

| Trigger | Action |
|---------|--------|
| Nightly cron | Full 24h review |
| User correction | Immediate capture to .learnings/ |
| After major work | Mini-review: what worked/didn't |
| Weekly | Synthesize, promote, archive |
