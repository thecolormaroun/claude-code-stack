---
id: studio.design.checklist.visual-qa
name: Visual QA Checklist (Screenshot Review)
description: Designer-style screenshot review: spacing, alignment, typography, color, responsiveness, accessibility, and polish.
when_to_use:
  - before shipping UI
  - when reviewing screenshots, PR previews, or staging
  - when comparing implementation vs mock
---

# Visual QA Checklist (Screenshot Review)

Inspired by the open-source “visual-qa” skill shared by @DylanFeltus. This is the Studio-native version (no external install).

Use this checklist to review a UI screenshot like a designer would.

## 1) Spacing + Rhythm
- [ ] Consistent spacing scale (no random 7/13/19px paddings)
- [ ] Vertical rhythm is consistent (headings, body, sections)
- [ ] Adequate whitespace (not cramped)
- [ ] Components align to the same padding rules

## 2) Alignment + Grid
- [ ] Left edges line up across sections
- [ ] Baselines feel aligned (esp. icons + text)
- [ ] Cards/modules share consistent width
- [ ] No “almost aligned” elements (off by 2–4px)

## 3) Typography
- [ ] Clear hierarchy (H1/H2/body/captions distinct)
- [ ] Line length is readable (avoid ultra-wide paragraphs)
- [ ] Font weights are intentional (not everything 500)
- [ ] Labels/captions aren’t too light/low contrast

## 4) Color + Contrast
- [ ] Primary action is visually dominant
- [ ] Contrast meets basic accessibility expectations
- [ ] States are consistent (hover/active/disabled)
- [ ] Borders/shadows aren’t muddy (avoid “grey-on-grey soup”)

## 5) Components + Consistency
- [ ] Buttons: consistent height, padding, radius
- [ ] Inputs: consistent affordances + focus styles
- [ ] Icons: consistent style/weight/size
- [ ] Empty states feel designed (not placeholder)

## 6) Responsiveness
- [ ] Layout works at common breakpoints (mobile/tablet/desktop)
- [ ] No clipped text / overflow in tight widths
- [ ] Touch targets are big enough

## 7) Accessibility + UX sanity
- [ ] Focus states visible
- [ ] Form fields have labels (not only placeholders)
- [ ] Error states are clear + actionable
- [ ] Motion respects reduced-motion preferences (when applicable)

## Compare vs mock (if you have both)
- [ ] Primary spacing + type scale match
- [ ] Corner radii and shadows match
- [ ] Iconography matches
- [ ] Content density feels equivalent

## The Refinement Loop (MANDATORY)

Don't run this checklist once. Run it as a loop:
1. Review against all sections above
2. Fix every issue found
3. Re-screenshot
4. Review again
5. Repeat until zero issues

> "The gap between 'close enough' and 'correct' is where polish lives." — Brian Lovin

See: [[studio.design.patterns.premium-interaction-patterns]] §3 (Visual QA Refinement Loop)

## The Critique Standard

When flagging issues, use the "Name It Precisely" format:
- **What** is wrong (specific element)
- **Why** it fails (which principle it violates)
- **What "correct" looks like**

See: [[studio.design.patterns.premium-interaction-patterns]] §5 (Design Critique Standard)

## Related Studio doctrine
- [[studio.design.system.anti-slop]]
- [[studio.design.patterns.design-with-taste]]
- [[studio.design.system.motion-tokens]]
- [[studio.design.patterns.premium-interaction-patterns]]
