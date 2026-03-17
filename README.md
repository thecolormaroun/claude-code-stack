# Claude Code Toolkit

My Claude Code setup — plugins, skills, Studio Skill Graph, and config.

---

## Plugins (12 enabled)

| Plugin | Source | What It Does |
|--------|--------|-------------|
| **compound-engineering** | every-marketplace | 29 agents, 22 commands, 19 skills. `/lfg` for full build loops, `/triage` for bugs, parallel PR resolution, design review agents. |
| **superpowers** | official | Complete dev workflow: brainstorming → spec → plan → TDD → subagent implementation → code review. Forces discipline — no code before spec, no ship before verify. |
| **code-review** | official | Multi-agent code review with confidence scoring |
| **feature-dev** | official | Structured feature dev workflow (explore → architect → implement → verify) |
| **context7** | official | MCP server for up-to-date library docs (replaces stale training data) |
| **github** | official | GitHub MCP — issues, PRs, reviews, code search from within Claude |
| **agent-browser** | Vercel Labs | Rust CLI + Playwright backend for browser automation. Purpose-built for AI agent workflows — snapshots, structured selectors, headed/headless modes. |
| **ralph-loop** | official | Iterative dev loops (build → screenshot → critique → fix) |
| **frontend-design** | official | UI/UX implementation patterns |
| **commit-commands** | official | Streamlined git commit/push/PR workflow |
| **vercel** | official | Deploy monitoring, log analysis, error detection |
| **swift-lsp** | official | Swift/Xcode LSP integration |

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

**Entry point:** `studio.moc.md` → follow domain MOCs as needed.

**Slash commands:** `/braindump`, `/prd`, `/design`, `/copy`, `/ship`, `/lfg`

## Additional Skills

| Skill | What It Does |
|-------|-------------|
| **rams** | Accessibility (WCAG) + visual design review |
| **deslop** | Remove AI-generated code slop (unnecessary comments, defensive checks) |
| **simplify** | Refine code for clarity without changing functionality |
| **react-doctor** | React health audit (performance, security, code quality) |
| **knip** | Find/remove unused files, dependencies, exports |
| **reclaude** | Refactor CLAUDE.md files for progressive disclosure |

## Design Engineering Skills (Community)

Curated from the design engineering community. Use on a per-project or per-review basis — not always-on.

| Skill | Author | What It Does | Source |
|-------|--------|-------------|--------|
| **emil-design-eng** | [Emil Kowalski](https://emilkowal.ski) | Animation decision framework, easing guidelines, spring animations, component polish patterns, Sonner principles, performance rules. The gold standard for animation craft. | [emilkowalski/skill](https://github.com/emilkowalski/skill) |
| **make-interfaces-feel-better** | [Jakub Krehel](https://x.com/jakubkrehel) | 16 concrete principles: concentric border radius, optical alignment, shadows over borders, interruptible animations, stagger patterns, font smoothing, tabular nums, scale on press, hit areas. Comes with reference files for typography, surfaces, animations, performance. | [jakubkrehel/make-interfaces-feel-better](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| **taste-skill-suite** (4 skills) | [Leonxlnx](https://github.com/Leonxlnx/taste-skill) | **taste-skill**: Frontend design taste — anti-LLM-bias rules, typography, color calibration, layout diversification, motion intensity. **soft-skill**: Premium feel — luxury fonts, spacious whitespace, layered cards, spring animations, floating nav. **redesign-skill**: Upgrade existing projects with modern patterns. **output-skill**: Force AI to write complete code (no placeholders). | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |

### Other Notable Skills (not installed, evaluate later)

| Skill | What It Does | Link |
|-------|-------------|------|
| **Impeccable** | Enhanced frontend-design plugin with 17 design commands (`/polish`, `/audit`, `/distill`). Dark mode mastery. | [impeccable.style](https://impeccable.style) |
| **UI Skills** | 15 independent skills: baseline-ui, fixing-accessibility, fixing-motion-performance, 12 principles of animation, etc. | [ui-skills.com](https://www.ui-skills.com) |
| **Better Icons** | MCP server + skill for 200k+ icons. Auto-learns your icon library, syncs to project. | [better-auth/better-icons](https://github.com/better-auth/better-icons) |
| **UI Design Brain** | 60+ component best practices from component.gallery. 5 design styles (SaaS, minimal, enterprise, creative, data dashboard). | [carmahhawwari/ui-design-brain](https://github.com/carmahhawwari/ui-design-brain) |
| **Motion AI Kit** | Motion.dev's official kit ($299/Motion+ membership). Animation expert skill, performance audit, CSS spring generation. | [motion.dev/docs/ai-kit](https://motion.dev/docs/ai-kit) |

## Global Config

```jsonc
// ~/.claude/CLAUDE.md — concise planning, Studio integration, anti-slop
{
  "Plan Mode": "Extremely concise plans. Questions at end.",
  "Studio Parity": "Auto-consult skill graph for UI work",
  "Anti-slop": "No placeholder content, no lorem ipsum, every visual choice justified",
  "Visual QA": "Screenshot-compare pass before shipping"
}

// ~/.claude/settings.local.json — env overrides
{
  "CLAUDE_CODE_MAX_OUTPUT_TOKENS": "8000",
  "DISABLE_NON_ESSENTIAL_MODEL_CALLS": "1",
  "DISABLE_COST_WARNINGS": "1"
}
```

---

## Directory Structure

```
├── README.md
├── config/
│   ├── CLAUDE.md                 # Global Claude Code config
│   ├── settings.json             # Plugin enables
│   └── settings.local.json       # Env vars + permissions
├── plugins/
│   └── compound-engineering/     # Third-party plugin (reference)
│       ├── agents/               # 29 specialized agents
│       ├── commands/             # 22 slash commands
│       └── CLAUDE.md
├── skills/
│   ├── studio/                   # Studio Skill Graph (88 files)
│   │   ├── _graph/               # Structured knowledge graph
│   │   ├── design/               # Design skills
│   │   ├── product/              # Product skills
│   │   ├── research/             # Research skills
│   │   └── ship/                 # Ship/deploy skills
│   ├── emil-design-eng/          # Emil Kowalski's animation & polish craft
│   ├── make-interfaces-feel-better/ # Jakub Krehel's UI detail principles
│   ├── taste-skill-suite/        # 4 skills: taste, soft, redesign, output
│   ├── deslop/                   # AI slop removal
│   ├── simplify/                 # Code simplification
│   ├── rams/                     # Accessibility review
│   ├── react-doctor/             # React health audit
│   ├── knip/                     # Dead code removal
│   └── reclaude/                 # CLAUDE.md refactoring
└── docs/
    └── setup-guide.md
```

## Setup

1. Install plugins:
   ```bash
   claude plugins install compound-engineering@every-marketplace
   npm install -g agent-browser && agent-browser install
   # Official plugins — enable in ~/.claude/settings.json
   ```

2. Copy config files to `~/.claude/`

3. Copy skills to your project or `~/.claude/` for global access

4. The Studio Skill Graph works best as a project-level inclusion — drop in repo root or reference via CLAUDE.md
