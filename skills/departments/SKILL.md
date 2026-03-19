---
name: departments
description: "Route work through CPO → CDO → compound-engineering. The full pipeline from brain dump to shipped code."
metadata:
  agent:
    emoji: "🏢"
    os: ["darwin", "linux"]
---

# Departments — Full Build Pipeline

Route any product idea through the complete build pipeline:

```
Brain Dump → CPO → CDO → /lfg (compound-engineering)
```

## Trigger Phrases

- "run it through the departments"
- "full pipeline"
- "CPO → CDO → ship it"
- "departments: [idea]"

---

## Pipeline Steps

### Step 1: CPO (Product)

**Input:** Brain dump, voice note, feature idea, feedback
**Output:** `docs/plans/YYYY-MM-DD-NNN-feat-<name>-plan.md`

Load `skills/cpo/SKILL.md` and run full workflow:
1. Extract & classify items
2. RICE prioritization  
3. Generate plan file in compound-engineering format
4. Run eval/checklist.md + advisory board

**Plan file location:** `docs/plans/` in target project directory

### Step 2: CDO (Design)

**Input:** Plan file from CPO
**Output:** Design spec appended to plan file OR separate `docs/design/<name>-design-spec.md`

Load `skills/cdo/SKILL.md` and run:
1. Parse requirements from plan
2. Visual direction + typography
3. Component specifications
4. Interaction patterns
5. Run eval/checklist.md + advisory board

**Append to plan file under `## Design Specification` section** so `/ce:work` has everything in one place.

### Step 3: Compound Engineering (/lfg)

**Input:** Enriched plan file with design specs
**Output:** Shipped code + PR

Execute compound-engineering's `/lfg` workflow:
1. `/ce:plan` — Additional research/deepening (if needed)
2. `/ce:work` — Execute the plan
3. `/ce:review` — Quality checks
4. Ship → PR

---

## Quick Commands

| Command | Action |
|---------|--------|
| `departments: [brain dump]` | Full pipeline |
| `departments: plan only` | CPO only, stop before design |
| `departments: design [plan]` | CDO only on existing plan |
| `departments: ship [plan]` | Skip CPO/CDO, go straight to /lfg |
| `departments: status` | Show pipeline progress |

---

## Example Flow

**User:** "run the dashboard app brain dump through the departments"

**Pipeline:**

1. **CPO** reads brain dump, outputs:
   ```
   docs/plans/2026-03-18-001-feat-example-dashboard-plan.md
   ```

2. **CDO** enriches plan with design spec:
   - Visual direction (dark theme, lime accent)
   - Component specs (card grid, charts, sidebar)
   - Typography + spacing
   - Appends `## Design Specification` to plan

3. **Compound Engineering** executes:
   ```
   /ce:work docs/plans/2026-03-18-001-feat-example-dashboard-plan.md
   ```
   - Creates tasks from Implementation Units
   - Spawns subagents for parallel work
   - Runs tests, captures screenshots
   - Creates PR with full attribution

---

## Pipeline State

Track in `docs/plans/.pipeline-state.json`:

```json
{
  "current_plan": "2026-03-18-001-feat-example-dashboard-plan.md",
  "stage": "cdo",  // "cpo" | "cdo" | "lfg" | "complete"
  "started": "2026-03-18T18:30:00Z",
  "cpo_complete": true,
  "cdo_complete": false,
  "shipped": false
}
```

---

## Integration Notes

- **CPO outputs** are already compound-engineering compatible (plan files with YAML frontmatter)
- **CDO enriches** the plan rather than creating separate files
- **compound-engineering** handles all execution via `/ce:work` or `/lfg`
- If project doesn't have `docs/plans/`, create it
- Design specs go IN the plan file so agents have full context
