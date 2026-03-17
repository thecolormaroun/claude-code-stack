# Claude Code Toolkit

My Claude Code setup — plugins, skills, Studio Skill Graph, and config. Curated for shipping high-quality product + design work.

---

## Quick Scan

### Plugins (12 enabled)

| Plugin | Source | What It Does | Bring to Work? |
|--------|--------|-------------|----------------|
| **compound-engineering** | every-marketplace | 29 agents, 22 commands, 19 skills. `/lfg` for full build loops, `/triage` for bugs, parallel PR resolution, design review agents. The big one. | ✅ Yes |
| **superpowers** | official | Complete dev workflow: brainstorming → spec → plan → TDD → subagent implementation → code review. Forces discipline — no code before spec, no ship before verify. | ✅ Yes — high impact |
| **code-review** | official | Multi-agent code review with confidence scoring | ✅ Yes |
| **feature-dev** | official | Structured feature dev workflow (explore → architect → implement → verify) | ✅ Yes |
| **context7** | official | MCP server for up-to-date library docs (replaces stale training data) | ✅ Yes |
| **github** | official | GitHub MCP — issues, PRs, reviews, code search from within Claude | ✅ Yes |
| **playwright** | official | Browser automation + E2E testing via Playwright MCP | ⚠️ Consider Agent Browser instead (Vercel Labs, Rust CLI, better for agent workflows) |
| **ralph-loop** | official | Iterative dev loops (build → screenshot → critique → fix) | ✅ Yes |
| **frontend-design** | official | UI/UX implementation patterns | ✅ Yes |
| **commit-commands** | official | Streamlined git commit/push/PR workflow | ✅ Yes |
| **vercel** | official | Deploy monitoring, log analysis, error detection | ⚠️ Only if using Vercel |
| **swift-lsp** | official | Swift/Xcode LSP integration | ⚠️ iOS only |

### Studio Skill Graph (88 files)

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

### Additional Skills

| Skill | What It Does | Bring to Work? |
|-------|-------------|----------------|
| **rams** | Accessibility (WCAG) + visual design review | ✅ Yes — essential for any public-facing product |
| **deslop** | Remove AI-generated code slop (unnecessary comments, defensive checks) | ✅ Yes |
| **simplify** | Refine code for clarity without changing functionality | ✅ Yes |
| **react-doctor** | React health audit (performance, security, code quality) | ✅ If using React |
| **knip** | Find/remove unused files, dependencies, exports | ✅ Yes |
| **reclaude** | Refactor CLAUDE.md files for progressive disclosure | ✅ Helps teams write better CLAUDE.md |

### Global Config

```jsonc
// ~/.claude/CLAUDE.md
{
  "Plan Mode": "Extremely concise plans. Questions at end.",
  "Studio Parity": "Auto-consult skill graph for UI work",
  "Anti-slop": "No placeholder content, no lorem ipsum, every visual choice justified",
  "Visual QA": "Screenshot-compare pass before shipping"
}

// ~/.claude/settings.local.json
{
  "CLAUDE_CODE_MAX_OUTPUT_TOKENS": "8000",
  "DISABLE_NON_ESSENTIAL_MODEL_CALLS": "1",  // saves tokens
  "DISABLE_COST_WARNINGS": "1"
}
```

---

## Recommended Setup for Teams

### Tier 1 — Install immediately
- **superpowers** — forces spec → plan → TDD → review discipline
- **compound-engineering** — `/lfg` build loops, parallel PR resolution
- **code-review** — multi-agent review
- **context7** — up-to-date library docs
- **github** — native PR/issue management
- **feature-dev** — structured feature workflow
- **rams** — accessibility review (essential for public-facing products)
- **deslop + simplify** — code quality guardrails

### Tier 2 — Adapt to your stack
- **Studio Skill Graph** — design system, checklists, anti-slop rules. Adapt tokens/patterns to your design system.
- **react-doctor** — if React codebase
- **knip** — dead code removal
- **Global CLAUDE.md** — concise planning, anti-slop, visual QA gates

### Tier 3 — Nice to have
- **ralph-loop** — great for UI iteration, needs screenshot infra
- **Agent Browser** (Vercel) — better than Playwright plugin for agent automation
- **commit-commands** — minor convenience

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
│   ├── deslop/                   # AI slop removal
│   ├── simplify/                 # Code simplification
│   ├── rams/                     # Accessibility review
│   ├── react-doctor/             # React health audit
│   ├── knip/                     # Dead code removal
│   └── reclaude/                 # CLAUDE.md refactoring
└── docs/
    └── setup-guide.md
```

---

## Setup

1. Install plugins:
   ```bash
   claude plugins install compound-engineering@every-marketplace
   # Official plugins are auto-available — enable in settings
   ```

2. Copy config files to `~/.claude/`

3. Copy skills to your project or `~/.claude/` for global access

4. The Studio Skill Graph works best as a project-level inclusion — drop in repo root or reference via CLAUDE.md
