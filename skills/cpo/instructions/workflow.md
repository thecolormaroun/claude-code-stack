# CPO Core Workflow

```
Brain Dump (voice/text)
    ↓
┌─────────────────────┐
│   1. EXTRACT        │  Parse ideas, features, feedback, bugs, decisions
│   2. ORGANIZE       │  Categorize, deduplicate, map to existing roadmap
│   3. PRIORITIZE     │  RICE scoring, dependency analysis
│   4. SPEC           │  Generate PRD + user stories + acceptance criteria
│   5. PACKAGE        │  Output Studio-ready files for /lfg execution
└─────────────────────┘
    ↓
Studio Execution (overnight Ralph loops)
```

## Step 1: Process the Brain Dump

Extract & classify every item:

| Category | Signal Words | Example |
|----------|-------------|---------|
| **🐛 Bug** | "broken", "wrong", "doesn't work", "fix" | "Ages are wrong for some foods" |
| **✨ Feature** | "add", "I want", "would be cool", "need" | "Want to save favorites" |
| **🔧 Improvement** | "better", "faster", "easier", "annoying" | "Food list is too long" |
| **🎯 Strategic** | "vision", "goal", "eventually", "phase 2" | "Want this to be THE baby food app" |
| **❓ Open Question** | "should we", "not sure", "what if" | "Should we add allergies?" |

## Step 2: Prioritize with RICE

| Factor | Question | Scale |
|--------|----------|-------|
| **Reach** | How many users/sessions affected? | 1-10 |
| **Impact** | How much does it improve the experience? | 0.25 (minimal) to 3 (massive) |
| **Confidence** | How sure are we about reach/impact? | 50%, 80%, 100% |
| **Effort** | Engineering effort in story points | 1 (hour) to 10 (week+) |

**RICE Score = (Reach × Impact × Confidence) / Effort**

Group into:
- **P0 — Must Have (this version):** Bugs + highest RICE features
- **P1 — Should Have:** High RICE, reasonable effort
- **P2 — Nice to Have:** Lower RICE or high effort
- **Backlog:** Strategic items for future versions

## Step 3: Generate PRD

Create at `specs/prd-v[N].md` — see `templates/prd.md` for format.

## Step 4: Package for Studio

Generate three files:
1. `agents/prd.json` — Ralph loop spec
2. `progress.md` — Studio ground truth
3. `specs/prd-v[N].md` — Full PRD

## Step 5: Hand Off

```
New build ready: [Project] V[N]

📋 PRD: specs/prd-v[N].md
🔄 Ralph spec: agents/prd.json ([N] user stories)
📊 Progress: progress.md

Execute with: /lfg Phase 3: Implement V[N] user stories from prd.json
```
