# CLAUDE.md - Global Claude Code Config

## Plan Mode

- Make the plan extremely concise. Sacrifice grammar for the sake of concision.
- At the end of each plan, give me a list of unresolved questions to answer, if any.

## Studio Parity (Skill Graph)

When doing product/design/UI work, consult Studio's canonical skill graph:
- `skills/studio/_graph/studio.moc.md`
- `skills/studio/_graph/design/design.moc.md`

Before shipping UI, run:
- `skills/studio/_graph/design/checklists/studio.design.checklist.visual-qa.md`

Motion defaults:
- `skills/studio/_graph/design/system/studio.design.system.motion-tokens.md`

Anti-slop guardrails:
- `skills/studio/_graph/design/system/studio.design.system.anti-slop.md`
