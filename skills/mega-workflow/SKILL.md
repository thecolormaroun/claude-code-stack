---
name: mega-workflow
description: "The complete build pipeline combining gstack ideation (/office-hours, /autoplan), departments (CPO→CDO), compound-engineering (/lfg), and gstack verification (/review, /cso, /qa, /ship). Use when building features from scratch, shipping production code, or running full quality gates."
metadata:
  clawdbot:
    emoji: "🚀"
    os: ["darwin", "linux"]
---

# Mega Workflow — Complete Build Pipeline

Combines the best of three systems:

| Source | Capabilities |
|--------|-------------|
| **gstack** | `/office-hours` (YC validation), `/autoplan` (auto-review), `/plan-ceo-review` (scope), `/plan-eng-review` (architecture), `/plan-design-review` (visual), `/review`, `/cso`, `/qa`, `/investigate`, `/ship`, `/canary` |
| **departments** | CPO (brain dump → PRD with RICE + advisory board), CDO (visual direction + design system + specs) |
| **compound-engineering** | `/lfg` (plan → work → review → test → video), `/workflows:plan`, `/workflows:work`, `/deepen-plan`, `/resolve_todo_parallel` |

---

## The Full Pipeline

```
┌──────────────────────────────────────────────────────────────────────────────┐
│  IDEATE         SPEC           REVIEW          BUILD          VERIFY    SHIP │
│  ──────────────────────────────────────────────────────────────────────────── │
│  /office-hours  CPO            /autoplan       /lfg           /review   /ship│
│  YC validation  Brain dump     (runs all 3:    Plan+Work      /cso      PR   │
│  6 questions    → PRD          CEO+Eng+Design) +Review        /qa       Land │
│                 CDO            OR manual:      +Test          /canary   Retro│
│                 → Design spec  /plan-*-review  +Video                        │
└──────────────────────────────────────────────────────────────────────────────┘
```

---

## Pipeline Commands

### `/mega` — Full Pipeline (idea to deployed)

1. **Ideate:** `/office-hours` — YC-style validation (6 forcing questions)
2. **Spec:** CPO → CDO (departments pipeline)
3. **Review Plan:** `/autoplan` (runs CEO + Eng + Design reviews with auto-decisions)
4. **Build:** `/lfg` (compound-engineering full workflow)
5. **Verify:** `/review` → `/cso` → `/qa`
6. **Ship:** `/ship` → `/land-and-deploy` → `/canary`
7. **Learn:** `/retro` + compound-engineering learnings extraction

### `/mega:ideate` — Idea Exploration Only

```
/office-hours → /plan-ceo-review → /plan-eng-review → /plan-design-review
```

Or use `/autoplan` to run all three reviews automatically with 6 decision principles.

Outputs: `docs/design-doc.md` with validated scope

### `/mega:spec` — Specification Phase

```
CPO (brain dump → PRD) → CDO (→ Design spec) → /autoplan
```

Outputs: `docs/plans/YYYY-MM-DD-NNN-feat-<name>-plan.md` with design section

### `/mega:build` — Implementation Phase

```
/lfg = /workflows:plan → /deepen-plan → /workflows:work → /workflows:review → /test-browser → /feature-video
```

Outputs: Committed code + PR with video demo

### `/mega:verify` — Quality Gates

```
/review (staff-level code review, auto-fix) → /cso (OWASP+STRIDE) → /qa (browser tests)
```

Fix all findings before shipping.

### `/mega:ship` — Deployment

```
/ship (push + PR) → /land-and-deploy (merge + verify) → /canary (post-deploy monitoring)
```

### `/mega:debug` — When Things Break

```
/investigate (root cause analysis, 4 phases) → /careful (warns before destructive) → /freeze (lock scope)
```

---

## All Available Commands (Quick Reference)

### gstack — Ideation & Planning
| Command | What It Does |
|---------|--------------|
| `/office-hours` | YC-style validation — 6 forcing questions, saves design doc |
| `/plan-ceo-review` | Scope expansion/reduction, 10-star product thinking |
| `/plan-eng-review` | Architecture, diagrams, test strategy |
| `/plan-design-review` | Visual audit, 0-10 ratings per dimension |
| `/autoplan` | Runs all 3 reviews with auto-decisions |

### departments — Product & Design Specs
| Command | What It Does |
|---------|--------------|
| CPO skill | Brain dump → PRD with RICE, advisory board (Shreyas/Kent/Mom) |
| CDO skill | PRD → Design spec with visual direction, components, a11y |

### compound-engineering — Implementation
| Command | What It Does |
|---------|--------------|
| `/lfg` | Full autonomous workflow (plan → work → review → test → video) |
| `/workflows:plan` | Create implementation plan |
| `/workflows:work` | Execute work items |
| `/workflows:review` | Self-review before external |
| `/deepen-plan` | Add detail to existing plan |
| `/resolve_todo_parallel` | Fix all TODOs in parallel |

### gstack — Code Quality
| Command | What It Does |
|---------|--------------|
| `/review` | Staff-level code review, auto-fixes issues |
| `/cso` | OWASP + STRIDE security audit |
| `/qa` | Real browser testing, finds/fixes bugs |
| `/qa-only` | Report only, no fixes |
| `/design-review` | Visual audit + fixes |
| `/codex` | OpenAI second opinion |

### gstack — Debugging
| Command | What It Does |
|---------|--------------|
| `/investigate` | Root cause analysis, 4 phases, Iron Law |
| `/careful` | Warns before destructive commands |
| `/freeze` | Lock edits to one directory |
| `/guard` | careful + freeze combined |

### gstack — Shipping
| Command | What It Does |
|---------|--------------|
| `/ship` | Sync, test, push, create PR |
| `/land-and-deploy` | Merge + verify production |
| `/canary` | Post-deploy monitoring |
| `/benchmark` | Core Web Vitals |
| `/retro` | Weekly stats across repos |
| `/document-release` | Update all docs |

### gstack — Browser Automation
| Command | What It Does |
|---------|--------------|
| `/browse` | Headless Chromium, ~100ms/cmd |
| `/connect-chrome` | Headed browser for debugging |
| `/setup-browser-cookies` | Import real cookies |

---

## Decision Tree

```
What do you have?
│
├─ Just a vague idea
│  └─ /mega:ideate (office-hours → plan reviews)
│
├─ Validated idea, need spec
│  └─ /mega:spec (CPO → CDO → autoplan)
│
├─ Spec exists, need code
│  └─ /mega:build (/lfg)
│
├─ Code exists, need QA
│  └─ /mega:verify (review → cso → qa)
│
├─ Everything passing, ship it
│  └─ /mega:ship (ship → land → canary)
│
├─ Something broke
│  └─ /mega:debug (investigate with freeze)
│
└─ Full pipeline from scratch
   └─ /mega (everything)
```

---

## Quality Gates

| Stage | Gate | Blocker If... |
|-------|------|---------------|
| /office-hours | 6 questions answered | Unclear demand/user |
| /autoplan | Taste decisions approved | Borderline scope rejected |
| CPO | Advisory board | 🔴 Shreyas/Kent/Mom reject |
| CDO | Advisory board | 🔴 Jony/Grace/Ada reject |
| /lfg | Tests pass | ❌ Test failures |
| /review | No critical issues | 🔴 Security/correctness bugs |
| /cso | No high+ severity | 🔴 Auth bypass, injection |
| /qa | Flows work | ❌ Broken user journeys |
| /canary | Metrics stable | 📉 Error rate spike |

---

## State Tracking

Track in `docs/plans/.mega-state.json`:

```json
{
  "plan": "2026-03-28-001-feat-example-plan.md",
  "stage": "verify",
  "stages": {
    "ideate": { "status": "complete", "design_doc": "docs/design-doc.md" },
    "cpo": { "status": "complete" },
    "cdo": { "status": "complete" },
    "autoplan": { "status": "complete", "taste_decisions": 2 },
    "lfg": { "status": "complete", "commit": "abc123", "video": true },
    "review": { "status": "complete", "fixed": 3 },
    "cso": { "status": "complete", "findings": 0 },
    "qa": { "status": "in_progress" },
    "ship": { "status": "pending" }
  }
}
```

---

## Skill Dependencies

```bash
# Check all required skills are installed
ls ~/clawd/skills/cpo ~/clawd/skills/cdo ~/.claude/skills/gstack 2>/dev/null
# compound-engineering should be in plugins
ls ~/.claude/plugins/cache/every-marketplace/compound-engineering/*/CLAUDE.md
```
