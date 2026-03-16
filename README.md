# Maroun's Claude Code Toolkit

Everything I use with Claude Code — plugins, skills, custom config, and workflow patterns. This is my personal setup; use it as a reference for what's worth bringing into a team environment.

---

## Quick Scan

### Plugins (12 enabled)

| Plugin | Source | What It Does | Work-Ready? |
|--------|--------|-------------|-------------|
| **compound-engineering** | every-marketplace | 29 agents, 22 commands, 19 skills. `/lfg` for full build loops, `/triage` for bugs, parallel PR resolution, design review agents. The big one. | ✅ Yes — framework-agnostic |
| **code-review** | official | Multi-agent code review with confidence scoring | ✅ Yes |
| **feature-dev** | official | Structured feature dev workflow (explore → architect → implement → verify) | ✅ Yes |
| **context7** | official | MCP server for up-to-date library docs (replaces stale training data) | ✅ Yes |
| **github** | official | GitHub MCP — issues, PRs, reviews, code search from within Claude | ✅ Yes |
| **playwright** | official | Browser automation + E2E testing via MCP | ✅ Yes |
| **vercel** | official | Deploy monitoring, log analysis, error detection | ⚠️ If using Vercel |
| **ralph-loop** | official | Iterative dev loops (build → screenshot → critique → fix) | ✅ Yes |
| **frontend-design** | official | UI/UX implementation patterns | ✅ Yes |
| **superpowers** | official | TDD, debugging, collaboration patterns | ✅ Yes |
| **commit-commands** | official | Streamlined git commit/push/PR workflow | ✅ Yes |
| **swift-lsp** | official | Swift/Xcode LSP integration | ⚠️ iOS only |

### Custom Skills (Studio Skill Graph — 88 files)

My biggest custom asset. A structured knowledge graph for product → design → build workflows.

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

### Additional Skills (~/clawd/skills/)

Skills I've built or installed for OpenClaw that could also work as Claude Code reference:

| Skill | What It Does |
|-------|-------------|
| **deslop** | Remove AI-generated code slop (unnecessary comments, defensive checks) |
| **simplify** | Refine code for clarity without changing functionality |
| **rams** | Accessibility + visual design review (WCAG compliance) |
| **react-doctor** | React health audit (performance, security, code quality) |
| **tdd** | Test-driven development with red-green-refactor loop |
| **knip** | Find/remove unused files, dependencies, exports |
| **sentry** | Sentry error monitoring patterns for Next.js |
| **fix-sentry-issues** | Auto-triage and fix production Sentry issues |
| **workflow** | Structured execution for complex multi-step tasks |
| **reclaude** | Refactor CLAUDE.md files for progressive disclosure |
| **compound-engineering** (custom) | Session review, learning extraction, memory compounding |

---

## What I'd Bring to Work

### Tier 1 — No-brainer, install immediately
- **compound-engineering plugin** — the `/lfg` loop alone is worth it
- **code-review plugin** — multi-agent review catches things humans miss
- **context7 plugin** — stops Claude from using stale API docs
- **github plugin** — native PR/issue management inside Claude
- **feature-dev plugin** — structured feature workflow
- **superpowers plugin** — TDD and debugging patterns

### Tier 2 — High value, needs some adaptation
- **Studio Skill Graph** — the design system, checklists, and anti-slop rules. Would need to be adapted to Change.org's design system, but the structure is gold.
- **deslop + simplify skills** — code quality guardrails
- **Global CLAUDE.md config** — concise planning, anti-slop, visual QA gates

### Tier 3 — Nice to have, context-dependent
- **ralph-loop** — great for UI iteration, needs screenshot infra
- **playwright plugin** — if doing E2E testing
- **vercel plugin** — only if deploying to Vercel
- **swift-lsp** — only for iOS work
- **commit-commands** — minor convenience

---

## Directory Structure

```
├── README.md                     # This file
├── config/
│   ├── CLAUDE.md                 # Global Claude Code config
│   ├── settings.json             # Plugin enables + hooks
│   └── settings.local.json       # Env vars + permissions
├── plugins/
│   └── compound-engineering/     # Third-party plugin (reference)
│       ├── agents/               # 29 specialized agents
│       ├── commands/             # 22 slash commands
│       └── CLAUDE.md             # Plugin instructions
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
│   ├── tdd/                      # Test-driven development
│   ├── knip/                     # Dead code removal
│   ├── workflow/                 # Multi-step task execution
│   └── reclaude/                 # CLAUDE.md refactoring
└── docs/
    └── setup-guide.md            # How to install this setup
```

---

## Setup

1. Install Claude Code plugins:
   ```bash
   claude plugins install compound-engineering@every-marketplace
   # Official plugins are auto-available — just enable in settings
   ```

2. Copy config files to `~/.claude/`

3. Copy skills to your project or `~/.claude/` for global access

4. The Studio Skill Graph works best as a project-level inclusion — drop it in your repo's root or reference via CLAUDE.md
