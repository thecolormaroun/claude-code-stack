---
id: studio.design.copy.checklist
name: UX Writing QA Checklist
description: Run this before every ship. Every string a user will ever see should pass this checklist.
when_to_use: Pre-ship. Run alongside visual-qa checklist.
---

# UX Writing QA Checklist

Run this on every surface before it ships. Copy that doesn't pass this checklist does not ship.

---

## How to Use

Go screen by screen, string by string. For each UI surface, answer every question. A single "No" is a block — fix it before shipping.

---

## Section 1: Completeness

- [ ] **Every user-facing string is intentionally written** — no defaults, no placeholders, no lorem ipsum
- [ ] **All states are covered:** empty, loading, error, success, edge cases
- [ ] **Error states have copy** — not just visual indicators
- [ ] **Empty states have copy and a CTA** — no silent dead ends
- [ ] **Loading states communicate what's happening** — not just a spinner with no label
- [ ] **Every input field has a label** — placeholder text alone is not a label
- [ ] **All buttons have labels** — no icon-only buttons without accessible alt text or tooltip

---

## Section 2: Clarity

- [ ] **Every string passes the thumb test** — cover any word; if the sentence still works without it, cut it
- [ ] **No jargon or technical language** that users wouldn't use themselves
- [ ] **No abbreviations without explanation** (exception: widely understood acronyms like PDF, URL)
- [ ] **No ambiguous pronouns** — "it", "they", "this" without clear referents
- [ ] **Error messages say what went wrong AND how to fix it** — both, not just one
- [ ] **CTAs say what happens when you click them** — not vague imperatives
- [ ] **Confirmation dialogs name the thing being confirmed** — not generic "Are you sure?"

---

## Section 3: Tone

- [ ] **Tone matches the emotional context** — checked against [[studio.design.copy.tone-matrix]]
- [ ] **No blame language in errors** — "you entered", "you failed" → rewrite
- [ ] **No robot voice** — no "An error has occurred", "Operation completed successfully"
- [ ] **No over-apologizing** — "We're so sorry for the inconvenience" in a 404 is not needed
- [ ] **No over-celebrating** — "Congratulations! You successfully created a folder!" is not needed
- [ ] **Tone is consistent across the entire screen/flow** — no tonal whiplash
- [ ] **Tone matches project persona voice guide** (if one exists) — see [[studio.design.copy.persona-voice]]

---

## Section 4: Grammar & Style

- [ ] **Sentence case for all UI strings** — not Title Case (unless brand style specifically calls for it)
- [ ] **Active voice** — passive voice flagged and rewritten unless genuinely passive is clearer
- [ ] **Contractions where appropriate** — "don't" not "do not"; matches formality level of the product
- [ ] **Consistent terminology across all screens** — one word for each concept, everywhere
- [ ] **No "please" in instructional copy** — "Enter your email" not "Please enter your email"
- [ ] **Numbers: spell out 1–9, numerals for 10+** in body copy (exception: UI-specific like "3 items")
- [ ] **No trailing punctuation on standalone labels/headings** — "Email address" not "Email address:"

---

## Section 5: Actions & CTAs

- [ ] **All CTAs begin with an action verb** — "Save", "Create", "Send", not "Your settings"
- [ ] **Destructive CTAs name the action explicitly** — "Delete project" not just "Delete"
- [ ] **Cancel/back option always present** for multi-step flows and destructive actions
- [ ] **CTA label mirrors the outcome** — if clicking creates something, say "Create [thing]"
- [ ] **No "Submit"** — replace with what actually happens
- [ ] **No "Click here"** — replace with what the link/button does

---

## Section 6: Accessibility

- [ ] **Copy doesn't rely on color alone** — "The red text shows errors" is not sufficient
- [ ] **No directional language** ("top left button", "the link below") — screen readers don't see layout
- [ ] **All images have alt text** if they convey information (decorative images: `alt=""`)
- [ ] **Form error messages are associated with their input** — not just color-coded
- [ ] **Reading level is appropriate** — aim for grade 7–8 for general consumer apps
- [ ] **No idioms or cultural references** that wouldn't translate across cultures/languages

---

## Section 7: Consistency Audit

- [ ] **Run a terminology grep** — search for synonyms that should be unified (e.g., "save" vs "store" vs "keep")
- [ ] **Button labels are consistent** across similar actions throughout the app
- [ ] **Capitalization is consistent** — pick a style and stick to it
- [ ] **Product name usage is consistent** — how/when is the brand name used vs. implied?
- [ ] **Success/error message format is consistent** — same structure, same position, same tone

---

## Section 8: Edge Cases

- [ ] **Long strings are handled** — test with long user-generated content (names, messages)
- [ ] **Zero state handled** — what shows when count is 0?
- [ ] **Singular/plural handled** — "1 item" not "1 items"; "1 result" vs "3 results"
- [ ] **Unknown/null values handled** — what shows when a name or value isn't available?
- [ ] **Truncation has a reveal mechanism** — if text is truncated, user can see the full version

---

## Copy Sign-Off

Before ship, confirm:

```
Screen/Flow: ___________________
Reviewed by: ___________________
Date: __________________________

Completeness: ✅ / ❌
Clarity: ✅ / ❌
Tone: ✅ / ❌
Grammar: ✅ / ❌
Actions/CTAs: ✅ / ❌
Accessibility: ✅ / ❌
Consistency: ✅ / ❌
Edge Cases: ✅ / ❌

Blocks remaining: _______________
Ship status: READY / NEEDS REVISION
```
