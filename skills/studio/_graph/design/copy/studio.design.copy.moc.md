---
id: studio.design.copy.moc
name: UX Copywriting (MOC)
description: All copy skills for Studio. Map of Content for UI writing, microcopy patterns, tone, and voice.
inputs:
  - design_brief: "Design context — what screen, what user state, what action"
  - persona: "Project persona/voice if defined"
  - emotional_context: "What is you feeling? Error, success, onboarding, etc."
outputs:
  - ui_copy: "Polished strings for all UI surfaces"
  - copy_audit: "QA checklist pass result"
triggers:
  - "/copy — write or review UI copy for a screen"
  - "/microcopy — pattern-match to a specific UI surface"
  - "/tone — adjust tone for emotional context"
  - "/copy-qa — run the QA checklist"
depends_on:
  - "[[design.moc]] — copy is part of design"
  - "[[shared.writing-style]] — base voice and tone rules"
feeds_into:
  - "[[ship.moc]] — copy shipped as part of design spec"
  - "[[studio.design.checklist.visual-qa]] — copy QA runs before ship"
---

# UX Copywriting — MOC

Copy is part of design. Every string a user reads is a design decision. Start here.

## When to load what

| Task | Load this |
|------|-----------|
| Writing UI strings from scratch | [[studio.design.copy.ux-writing-principles]] first |
| Pattern-matching a specific UI surface | [[studio.design.copy.microcopy-patterns]] |
| Getting tone right for the context | [[studio.design.copy.tone-matrix]] |
| Project-specific voice | [[studio.design.copy.persona-voice]] |
| Pre-ship copy review | [[studio.design.copy.checklist]] |
| Spotting bad copy | [[studio.design.copy.anti-patterns]] |

## Files

- [[studio.design.copy.ux-writing-principles]] — Core principles. Load first for any copy work.
- [[studio.design.copy.microcopy-patterns]] — Pattern library: errors, CTAs, empty states, modals, etc.
- [[studio.design.copy.tone-matrix]] — Maps emotional context → appropriate tone, with examples.
- [[studio.design.copy.persona-voice]] — Template for project-specific voice guides.
- [[studio.design.copy.checklist]] — QA checklist. Run before every ship.
- [[studio.design.copy.anti-patterns]] — What not to do. The copy version of anti-slop.md.

## Core Belief

Words aren't decoration. They are the UI. Every piece of copy either builds trust or erodes it. Ship copy with the same rigor you ship components.

## Copy Hierarchy (most → least impactful)

1. **Error messages** — user is stuck; copy must unstick them
2. **CTAs** — copy drives conversion
3. **Empty states** — first impression for new users
4. **Onboarding** — sets expectations for the whole product
5. **Success states** — reinforces behavior, builds habit
6. **Helper text / tooltips** — reduces friction silently
7. **Loading states** — manages anxiety

## Quick Rules (always on)

- Active voice, present tense
- Front-load what matters
- User's language, not engineering language
- One idea per string
- Tone matches emotional context — always check [[studio.design.copy.tone-matrix]]
