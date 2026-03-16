# Design Critique Log

Append-only. Populated by Gate 3 (taste-compounding) during every QA session.
Weekly analysis by `weekly-taste-compounding` cron (Sunday 6 PM) promotes patterns to anti-slop rules.

Format per entry: YYYY-MM-DD | project | feature | source | issues (what/why/correct)

Promoted entries are marked with `[PROMOTED → anti-slop YYYY-MM-DD]`

See: ~/clawd/skills/studio/_graph/design/critique/taste-compounding.md

---

<!-- Entries are appended below this line. Do not delete entries. -->

2026-03-01 | noah-noms | general | seed-entry | Visual QA loop never ran — no builds have gone through Gate 1/2/3 yet. First real build should establish baseline. [PROMOTED → anti-slop 2026-03-15]
2026-03-01 | r2view | dashboard | seed-entry | R2View V2 shipped without formal design QA. Retroactive critique: dense data layouts need explicit spacing tokens (8/16/24 grid), not ad-hoc padding.
2026-03-01 | studio | design-digest-feb-21 | seed-entry | "The gap between 'close enough' and 'correct' is where polish lives" — visual diff loops are mandatory, not optional. Every component needs a screenshot-compare pass. [PROMOTED → anti-slop 2026-03-15]
2026-03-01 | studio | design-digest-feb-21 | seed-entry | Taste is cultural infrastructure — name font pairings, color decisions, spacing ratios explicitly. If you can't name it, you can't enforce it.
2026-03-01 | studio | anti-pattern | seed-entry | Default border-radius across projects is inconsistent (some 8px, some 12px, some 16px). Pick one per project and enforce via token.
