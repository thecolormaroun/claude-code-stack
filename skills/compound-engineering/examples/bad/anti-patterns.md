# Compound Engineering Anti-Patterns

## Extraction Anti-Patterns

### 1. Vague Learnings
❌ "Remember to be careful with config changes"
✅ "Config Guardian: backup before any openclaw.json change, validate with `openclaw config validate`, restore on failure"

Why it's bad: Useless when reviewing later. No actionable detail.

### 2. Duplicate Entries
❌ Adding "use trash not rm" when it's already in AGENTS.md
✅ Check existing files before adding

Why it's bad: Noise accumulates, signal buried.

### 3. Missing Context
❌ "The qmd command failed"
✅ "qmd update with --force flag on a cron burns embedding quota — use only for manual weekly rebuilds"

Why it's bad: Can't apply the learning without knowing when/where.

### 4. Over-Promotion
❌ Moving a one-time fix to SOUL.md
✅ Keep in .learnings/ until pattern proven (2+ occurrences)

Why it's bad: Main files become cluttered with noise.

### 5. Under-Promotion
❌ Correction happens 5 times, still only in .learnings/
✅ Promote to main file after 2 confirmed occurrences

Why it's bad: Same mistake keeps happening.

## Review Anti-Patterns

### 6. Skipping Nightly Review
❌ "Nothing important happened today"
✅ At minimum: "Reviewed sessions, no new patterns"

Why it's bad: Compounding only works with consistency.

### 7. Review Without Commit
❌ Update files but don't commit
✅ Every review ends with `git commit -m "compound: nightly review YYYY-MM-DD"`

Why it's bad: Changes can be lost, no audit trail.

### 8. Reviewing Too Much
❌ 3-hour deep dive every night
✅ 15-30 min focused extraction

Why it's bad: Unsustainable, diminishing returns.

### 9. No Weekly Synthesis
❌ Daily notes pile up, never rolled up
✅ Weekly: synthesize patterns, update MEMORY.md, archive old

Why it's bad: Daily notes become unmanageable.

## Memory Anti-Patterns

### 10. Everything in MEMORY.md
❌ 5000-line MEMORY.md with every detail
✅ High-level summary in MEMORY.md, details in memory/

Why it's bad: Context overflow, can't load full file.

### 11. Orphan Learnings
❌ Learnings in random files, not indexed
✅ Consistent locations: .learnings/, memory/, skill files

Why it's bad: Can't find them when needed.

### 12. No Decay
❌ Keeping every observation forever
✅ Archive stale content, remove outdated learnings

Why it's bad: Old irrelevant info pollutes context.

### 13. Manual-Only Updates
❌ Only updating files when user asks
✅ Automated nightly review + cron

Why it's bad: Compounding requires consistency, humans forget.

## Integration Anti-Patterns

### 14. Siloed Knowledge
❌ Learnings in compound-engineering not used elsewhere
✅ Cross-reference: "See .learnings/ERRORS.md for qmd gotchas"

Why it's bad: Knowledge doesn't flow to where it's needed.
