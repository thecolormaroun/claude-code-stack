---
id: studio-graph-readme
name: Studio Skill Graph
description: Navigation guide for the studio skill graph with conventions and entry points.
when_to_use:
  - orientation
  - graph-navigation
---

# Studio Skill Graph

This folder is the **Studio skill graph**: small, composable markdown nodes connected with wikilinks.

## Progressive disclosure (how to traverse)
Start at a MOC (Map of Content), then follow links only as needed:

`MOC → node descriptions → links → sections → full content`

## Conventions
- Each node is **one complete thought** (pattern, heuristic, checklist, template, example).
- Each node has YAML frontmatter with at least:
  - `id`, `name`, `description`, `when_to_use`
- Wikilinks should be embedded in prose (semantic links).

## Entry points (MOCs)
- [[studio.moc]]
- [[design.moc]]
- [[product.moc]]
- [[research.moc]]
- [[ship.moc]]
