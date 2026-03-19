# Claude Code Stack

A comprehensive Claude Code setup — skills, workflows, and the Studio Skill Graph for product → design → build pipelines.

---

## Core Pipeline: Departments

The `departments/` skill orchestrates a full build pipeline:

```
Brain Dump → CPO → CDO → /lfg (compound-engineering)
```

| Stage | Skill | Output |
|-------|-------|--------|
| **Product** | `cpo/` | Plan file in `docs/plans/` |
| **Design** | `cdo/` | Design spec appended to plan |
| **Build** | compound-engineering `/lfg` | Shipped code + PR |

**Trigger:** "run it through the departments"

---

## Studio Skill Graph (88 files)

Structured knowledge graph for product → design → build workflows.

| Domain | Files | Key Capabilities |
|--------|-------|-----------------|
| **Design System** | 12 | Design tokens, color system, motion tokens, buttons, cards, inputs, spacing, typography |
| **Design Patterns** | 3 | Premium interaction patterns, motion design, "design with taste" guardrails |
| **Design Heuristics** | 3 | Error prevention, irreversible actions, trust signals |
| **Design Checklists** | 2 | Visual QA checklist, UI critique framework |
| **Layout** | 5 | Grid system, responsive rules, spacing scale, touch targets, visual hierarchy |
| **Research** | 8 | Competitive teardowns, gap analysis, landscape discovery, taste mining |
| **Product** | ~10 | PRD generation, product specs, feature prioritization |
| **Ship** | ~10 | Build handoff, QA, release workflow |

**Entry point:** `skills/studio/_graph/studio.moc.md` → follow domain MOCs as needed.

---

## Included Skills

### Product & Design Pipeline

| Skill | Purpose |
|-------|---------|
| **departments** | Orchestrates CPO → CDO → /lfg |
| **cpo** | Chief Product Officer — brain dump to plan files |
| **cdo** | Chief Design Officer — visual direction, design specs |

### Design Quality

| Skill | Purpose | Source |
|-------|---------|--------|
| **emil-design-eng** | Animation craft, easing, spring physics, polish | [emilkowalski/skill](https://github.com/emilkowalski/skill) |
| **make-interfaces-feel-better** | 16 UI detail principles | [jakubkrehel](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| **taste-skill-suite** | Anti-LLM-bias rules, premium feel | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| **impeccable** | 21 design commands (`/polish`, `/audit`) | [impeccable.style](https://impeccable.style) |
| **ui-skills** | Accessibility, motion performance | [ui-skills.com](https://www.ui-skills.com) |
| **ui-design-brain** | 60+ component patterns | [carmahhawwari/ui-design-brain](https://github.com/carmahhawwari/ui-design-brain) |
| **better-icons** | 200k+ icons via MCP | [better-auth/better-icons](https://github.com/better-auth/better-icons) |

### Code Quality

| Skill | Purpose |
|-------|---------|
| **rams** | Accessibility (WCAG) + visual review |
| **deslop** | Remove AI-generated code slop |
| **simplify** | Refine code clarity |
| **react-doctor** | React health audit |
| **knip** | Find/remove dead code |
| **tdd** | Test-driven development workflow |

---

## compound-engineering Integration

This stack is designed to work with [EveryInc's compound-engineering plugin](https://github.com/EveryInc/compound-engineering-plugin):

- **CPO** outputs plan files that `/ce:work` consumes
- **CDO** enriches plans with design specs inline
- **`/lfg`** runs the full autonomous build workflow

Install compound-engineering:
```bash
claude plugins install compound-engineering@every-marketplace
```

---

## Directory Structure

```
├── config/
│   └── CLAUDE.md                 # Global config
├── skills/
│   ├── departments/              # Pipeline orchestrator
│   ├── cpo/                      # Product skill
│   ├── cdo/                      # Design skill
│   ├── studio/                   # Studio Skill Graph (88 files)
│   │   └── _graph/               # Knowledge graph structure
│   ├── emil-design-eng/          # Animation craft
│   ├── make-interfaces-feel-better/
│   ├── taste-skill-suite/
│   ├── impeccable/
│   ├── ui-skills/
│   ├── ui-design-brain/
│   ├── better-icons/
│   ├── rams/                     # Accessibility
│   ├── deslop/                   # Slop removal
│   ├── simplify/                 # Code clarity
│   ├── react-doctor/             # React audit
│   ├── knip/                     # Dead code
│   ├── tdd/                      # Test-driven dev
│   └── reclaude/                 # CLAUDE.md refactoring
└── docs/
    └── setup-guide.md
```

## Setup

1. Clone this repo or copy skills to your project
2. Install compound-engineering plugin
3. Reference skills in your project's CLAUDE.md or copy to `~/.claude/skills/`

The Studio Skill Graph works best as a project-level inclusion — drop in repo root.

---

## License

Skills are provided as-is. External skills maintain their original licenses.
