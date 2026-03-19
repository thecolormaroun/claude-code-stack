# Learning Extraction Guide

## Categories to Extract

### 1. Patterns (Things That Worked)
**Signal words:** "worked well", "that's better", "keep doing this"

**Format:**
```markdown
### [Pattern Name]
**Context:** When this applies
**Pattern:** What to do
**Why:** Why it works
```

**Goes to:** AGENTS.md or specific skill file

### 2. Gotchas (Things That Failed)
**Signal words:** "wrong", "broke", "didn't work", "failed", "error"

**Format:**
```markdown
### [Date] - [Title]
**What happened:** Brief description
**Root cause:** Why it failed
**Fix:** What to do instead
```

**Goes to:** .learnings/ERRORS.md

### 3. User Corrections
**Signal words:** "No", "Actually", "That's not right", "I meant"

**Format:**
```markdown
### [Date] - [Title]
**User said:** [quote]
**I had assumed:** [what was wrong]
**Correct behavior:** [what to do instead]
```

**Goes to:** .learnings/LEARNINGS.md → promote if repeated

### 4. Preferences Discovered
**Signal words:** "I prefer", "always do X", "never do Y", "I like"

**Format:**
```markdown
- **[Preference]:** [details]
```

**Goes to:** USER.md or memory/preferences/

### 5. Decisions Made
**Signal words:** "let's go with", "decided", "we're doing X"

**Format:**
```markdown
| Date | Decision | Rationale |
|------|----------|-----------|
| YYYY-MM-DD | [decision] | [why] |
```

**Goes to:** memory/daily/ or ClawVault decision

### 6. TODOs/Unfinished
**Signal words:** "later", "tomorrow", "don't forget", "need to"

**Goes to:** ClawVault task or memory/tasks/

## Extraction Prompts

### For Session Review
```
Review this session and extract:
1. What patterns worked well (for reuse)?
2. What failed or caused issues (to avoid)?
3. What preferences did the user express?
4. What decisions were made and why?
5. What's unfinished or needs follow-up?

Output as structured JSON for each category.
```

### For Error Analysis
```
Analyze this error:
1. What was the immediate failure?
2. What was the root cause?
3. What should have been done differently?
4. How do we prevent this next time?
```

### For Correction Processing
```
The user just corrected me:
1. What did I do wrong?
2. What's the correct behavior?
3. Where should this be documented?
4. Is this a one-off or a pattern to learn?
```

## Quality Filters

### Don't Extract
- One-off context-specific details
- Information already in memory
- Generic/obvious things
- User's private information

### Do Extract
- Reusable patterns
- Specific gotchas with prevention steps
- Preferences that affect behavior
- Decisions with lasting impact
