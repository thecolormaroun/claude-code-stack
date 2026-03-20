# Claude Code Stack

Skills, workflows, and a design knowledge graph for Claude Code. One command takes an idea from brain dump to shipped PR.

## Quick Start

```bash
# 1. Clone into your project
git clone https://github.com/thecolormaroun/claude-code-stack.git .claude-code-stack

# 2. Copy skills to your project root
cp -r .claude-code-stack/skills/ skills/

# 3. Install the compound-engineering plugin (powers /lfg)
claude plugins install compound-engineering@every-marketplace

# 4. Copy the global config (optional — sets up Studio graph references)
cp .claude-code-stack/config/CLAUDE.md ~/.claude/CLAUDE.md
```

Each skill folder contains a `SKILL.md` that Claude reads automatically. No additional configuration needed.

---

## `/ship` — The Main Command

One command runs the full pipeline. Drop a brain dump, feature idea, or voice note and `/ship` handles the rest.

```
/ship [your idea here]
```

```
Brain Dump → CPO (Product) → CDO (Design) → /lfg (Build + Ship)
```

| Phase | What happens | Output |
|-------|-------------|--------|
| **CPO** | Extracts requirements, RICE scores, sizes the work | Plan file in `docs/plans/` |
| **CDO** | Adds visual direction, component specs, interaction patterns | Design spec appended to plan |
| **/lfg** | Builds it, reviews it, ships it | Code + PR |

By default, `/ship` pauses for your approval after Product and after Design. Add `--yolo` to skip approval gates and run straight through.

### Other ways to trigger

| Command | What it does |
|---------|-------------|
| `/ship [idea]` | Full pipeline: product → design → build |
| `/ship --yolo [idea]` | Full pipeline, no approval gates |
| "run it through the departments" | Same as `/ship` |
| "departments: plan only" | CPO only — just the plan file |
| "departments: design [plan]" | CDO only — add design spec to existing plan |
| "departments: ship [plan]" | Skip to /lfg — build from existing plan |

---

## Skills Reference

### Pipeline (the departments)

| Skill | What it does |
|-------|-------------|
| `departments/` | Orchestrates the full pipeline |
| `cpo/` | Chief Product Officer — brain dumps → structured plan files with RICE scoring |
| `cdo/` | Chief Design Officer — enriches plans with design specs (see sub-skills below) |

#### CDO Sub-Skills

The CDO skill includes specialized modules that activate automatically during the design phase:

| Sub-skill | What it does |
|-----------|-------------|
| `cdo/visual-direction/` | Color palettes, mood, aesthetic foundation, brand expression |
| `cdo/ui-ux-pro-max/` | 67 styles, 96 palettes, 57 font pairings, 25 chart types, 13 tech stacks |
| `cdo/taste-skill/` | Anti-LLM-bias rules — overrides default AI aesthetics with metric-based design |
| `cdo/favicon/` | Generate full favicon sets from a source image |
| `cdo/deslop/` | Design-aware slop removal |
| `cdo/simplify/` | Design-aware code simplification |
| `cdo/rams/` | Design-aware accessibility review |
| `cdo/react-doctor/` | Design-aware React audit |

### Design Quality

Community skills for UI craft. Claude consults these automatically during UI work.

| Skill | What it does | Source |
|-------|-------------|--------|
| `emil-design-eng/` | Animation craft — easing curves, spring physics, polish | [emilkowalski/skill](https://github.com/emilkowalski/skill) |
| `make-interfaces-feel-better/` | 16 UI detail principles (optical alignment, shadows, stagger, hit areas) | [jakubkrehel](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| `taste-skill-suite/` | Anti-LLM-bias, typography calibration, color correction, layout diversification | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| `impeccable/` | 17 design commands — dark mode mastery, polish, audit | [impeccable.style](https://impeccable.style) |
| `ui-skills/` | Baseline UI accessibility, motion performance, 12 principles of animation | [ui-skills.com](https://www.ui-skills.com) |
| `ui-design-brain/` | 60+ component patterns across 5 design styles | [carmahhawwari/ui-design-brain](https://github.com/carmahhawwari/ui-design-brain) |
| `userinterface-wiki/` | 152 rules across 12 categories — animations, CSS, typography, UX patterns | [raphael-salaja](https://github.com/raphael-salaja) |
| `better-icons/` | 200k+ icons via MCP | [better-auth/better-icons](https://github.com/better-auth/better-icons) |

### Code Quality

Run these after writing code to clean up before shipping.

| Skill | What it does |
|-------|-------------|
| `deslop/` | Remove AI slop — unnecessary comments, defensive checks, inconsistent style |
| `simplify/` | Refine code for clarity without changing behavior |
| `rams/` | Accessibility (WCAG 2.1 AA) + visual design review (Dieter Rams principles) |
| `react-doctor/` | React health audit — security, performance, architecture (0–100 score) |
| `knip/` | Find and remove dead code, unused files, unused exports |
| `tdd/` | Test-driven development — red/green/refactor loop |
| `fix-sentry-issues/` | Discover, triage, and fix production errors from Sentry |
| `reclaude/` | Refactor bloated CLAUDE.md files using progressive disclosure |

---

## Studio Skill Graph (90 files)

A structured knowledge graph that Claude navigates during product, design, and build work. You don't invoke it directly — it's reference material that other skills pull from.

| Domain | What's in it |
|--------|-------------|
| **Design System** | Tokens, color system, motion tokens, buttons, cards, inputs, spacing, typography |
| **Design Patterns** | Premium interaction patterns, motion design, "design with taste" guardrails |
| **Design Heuristics** | Error prevention, irreversible actions, trust signals |
| **Design Checklists** | Visual QA checklist, UI critique framework |
| **Layout** | Grid system, responsive rules, spacing scale, touch targets, visual hierarchy |
| **Research** | Competitive teardowns, gap analysis, landscape discovery, taste mining |
| **Product** | PRD generation, product specs, feature prioritization |
| **Ship** | Build handoff, QA, release workflow |

Entry point: `skills/studio/_graph/studio.moc.md`

---

## Directory Structure

```
├── config/
│   └── CLAUDE.md                    # Global config (Studio graph refs, plan mode settings)
├── plugins/
│   └── compound-engineering/        # Plugin config
├── skills/
│   ├── departments/                 # Pipeline orchestrator + /ship command
│   ├── cpo/                         # Product — brain dump → plan file
│   ├── cdo/                         # Design — plan file → design spec
│   │   ├── visual-direction/        #   Color, mood, brand
│   │   ├── ui-ux-pro-max/           #   Styles, palettes, font pairings
│   │   ├── taste-skill/             #   Anti-LLM-bias rules
│   │   ├── favicon/                 #   Favicon generation
│   │   ├── deslop/                  #   Design-aware slop removal
│   │   ├── simplify/                #   Design-aware simplification
│   │   ├── rams/                    #   Design-aware accessibility
│   │   └── react-doctor/            #   Design-aware React audit
│   ├── studio/                      # Studio Skill Graph (90 files)
│   │   └── _graph/                  #   Knowledge graph by domain
│   ├── emil-design-eng/             # Animation craft
│   ├── make-interfaces-feel-better/ # 16 UI principles
│   ├── taste-skill-suite/           # Anti-LLM-bias + typography
│   ├── impeccable/                  # Design commands
│   ├── ui-skills/                   # Accessibility + motion
│   ├── ui-design-brain/             # 60+ component patterns
│   ├── userinterface-wiki/          # 152 UI/UX rules
│   ├── better-icons/                # Icon library (MCP)
│   ├── deslop/                      # Slop removal
│   ├── simplify/                    # Code clarity
│   ├── rams/                        # Accessibility review
│   ├── react-doctor/                # React audit
│   ├── knip/                        # Dead code removal
│   ├── tdd/                         # Test-driven dev
│   ├── fix-sentry-issues/           # Sentry error triage
│   └── reclaude/                    # CLAUDE.md refactoring
└── docs/
    └── setup-guide.md
```

---

## Requirements

- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code)
- [compound-engineering plugin](https://github.com/EveryInc/compound-engineering-plugin) — powers `/lfg`, the build phase

```bash
claude plugins install compound-engineering@every-marketplace
```

---

## License

Skills are provided as-is. External skills (linked in the table above) maintain their original licenses.
