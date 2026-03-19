# Compound Engineering Workflow

## The Compound Loop

```
┌─────────────────────────────────────────┐
│           DAILY WORK                    │
│  Sessions, chats, tasks, decisions      │
└────────────────┬────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────┐
│        NIGHTLY REVIEW (10:30 PM)        │
│  • Scan all sessions from last 24h      │
│  • Extract learnings and patterns       │
│  • Update MEMORY.md and AGENTS.md       │
│  • Commit and push changes              │
└────────────────┬────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────┐
│        NEXT DAY                         │
│  Agent reads updated instructions       │
│  Benefits from yesterday's learnings    │
└─────────────────────────────────────────┘
```

## What Gets Extracted

| Category | Description | Where It Goes |
|----------|-------------|---------------|
| **Patterns** | Recurring approaches that worked | AGENTS.md or skill files |
| **Gotchas** | Things that failed or caused issues | .learnings/ERRORS.md |
| **Preferences** | User preferences discovered | USER.md or memory/ |
| **Decisions** | Key decisions and reasoning | memory/daily/ |
| **TODOs** | Unfinished items to remember | ClawVault tasks |

## Review Triggers

### Nightly (10:30 PM)
Full 24-hour review. Scan all sessions, extract everything.

### After Major Work
After completing a significant task or build, do a mini-review:
- What worked?
- What didn't?
- What should we do differently?

### After User Corrections
Immediate capture:
1. What was wrong
2. What's correct
3. Update relevant file

## Update Promotion

Learnings mature through a lifecycle:

```
Observation → .learnings/LEARNINGS.md
    ↓ (pattern confirmed 2+ times)
Pattern → AGENTS.md or TOOLS.md
    ↓ (affects behavior)
Principle → SOUL.md (rare)
```

Only promote when:
- Pattern proven across multiple contexts
- No contradicting evidence
- User hasn't objected

## Memory Hygiene

### Daily Notes
- One file per day: `memory/daily/YYYY-MM-DD.md`
- Append-only during the day
- Synthesize during nightly review

### Weekly Rollup
- Summarize week's daily notes
- Identify multi-day patterns
- Update MEMORY.md with highlights

### Monthly Archive
- Move old daily notes to archive
- Keep searchable but out of context
