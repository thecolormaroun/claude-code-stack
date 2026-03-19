---
id: studio.research.taste.sources
name: Taste Mining Sources
description: Where to pull inspiration (Tier 1, X bookmarks, galleries).
when_to_use:
  - inspiration
---

# Taste Mining Sources

## Tier 1 — Always Mine (priority sources)

| Source | URL | Focus | Notes |
|--------|-----|-------|-------|
| **Brian Lovin** | https://brianlovin.com/writing | Design × engineering quality, taste, QA loops | Treasure trove. Mine every new post. Former GitHub/Meta design. |
| **Design Spells** | https://designspells.com | Interaction design details | JS-heavy, needs browser scrape |
| **Handheld Design** | https://handheld.design | Mobile design patterns | Substack, Design Picks series |
| **Featured Mobile** | https://featuredmobile.com | Curated mobile inspiration | JS-heavy |
| **Social Bookmarks** | Platform API | Design saves | Optional automated sync |

## Tier 2 — Periodic Scan

- Awwwards (trends, not awards)
- Dribbble (visual patterns, not likes)
- Behance (case studies)
- Mobbin (mobile patterns database)
- Refactoring UI tips
- Tailwind UI patterns

## How to Mine

1. Scrape Tier 1 weekly (automated via weekly-design-digest cron)
2. For each finding: extract the pattern, name it, write the "apply this" action
3. If durable: create permanent note → `./knowledge/design/`
4. If actionable for Studio: add to relevant pattern/checklist file in `_graph/design/`
5. If Brian Lovin: always create permanent note (his writing is reference-grade)
