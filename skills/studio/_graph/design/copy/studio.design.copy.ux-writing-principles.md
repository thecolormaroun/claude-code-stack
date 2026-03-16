---
id: studio.design.copy.ux-writing-principles
name: UX Writing Principles
description: Core principles for writing UI copy. Synthesized from Shopify Polaris, Google Material, Apple HIG, Nielsen Norman Group, and Stripe.
when_to_use: Load first for any copy task.
---

# UX Writing Principles

These are non-negotiable. Memorize them before writing a single string.

---

## 1. Clarity Over Cleverness

The user doesn't have time for your pun. If there's any chance the meaning is unclear, kill the clever and use plain language.

- ❌ "Oops! Something went sideways."
- ✅ "Couldn't save your changes. Check your connection and try again."

**Shopify's rule:** Approach content like Jenga. What's the most you can remove before it falls apart?

---

## 2. Front-Load What Matters

Users scan. Put the critical information first — before qualifiers, caveats, or explanations.

- ❌ "In order to export your data, which may take a few minutes depending on file size, please click the button below."
- ✅ "Export your data. This may take a few minutes."

**Apply to:** CTAs, error messages, onboarding steps, tooltips.

---

## 3. Use Active Voice

Active voice is clearer, shorter, and more direct. It puts the user in control.

- ❌ "Your account has been created by our system."
- ✅ "Your account is ready."
- ❌ "Files can be uploaded by clicking here."
- ✅ "Upload files."

**Exception:** Passive is fine when you genuinely don't know the actor, or the actor is irrelevant.

---

## 4. Write in the User's Language

Not your engineering language. Not your marketing language. The words the user would use when describing their own problem.

- ❌ "Authentication token expired. Re-initialize session."
- ✅ "You've been signed out. Sign in again to continue."

**Test:** Would someone with no technical background immediately understand this? If not, rewrite it.

---

## 5. Match the User's Emotional State

A frustrated user needs empathy. A first-time user needs encouragement. An expert user needs efficiency. Copy that ignores emotional context feels tone-deaf.

→ See [[studio.design.copy.tone-matrix]] for the full map.

- Error state: empathetic, helpful, no blame
- Success: brief celebration, then forward motion
- Onboarding: warm, confident, progressive

---

## 6. One Idea Per String

Don't cram two thoughts into one message. Split them. Users aren't reading — they're scanning.

- ❌ "Your file was deleted, but don't worry, you can restore it within 30 days by going to the Trash folder and clicking Restore."
- ✅ "File deleted." + "Restore it within 30 days in Trash."

---

## 7. Be Concise — But Not Curt

Brevity ≠ coldness. You can be short and still be warm. Strip every unnecessary word, but keep the human voice.

| Too long | Too curt | Just right |
|----------|----------|------------|
| "We weren't able to process your request at this time." | "Error." | "Something went wrong. Try again." |
| "Congratulations! You have successfully completed your profile setup." | "Done." | "Profile complete. You're all set." |

---

## 8. Consistent Terminology

Pick a word and stick with it. If it's "Delete" in one place, it shouldn't be "Remove" in another unless there's a meaningful distinction.

**Create a micro-glossary for each project:**
- What's the core action? (Save / Publish / Submit?)
- What's the object? (Item / Record / Post?)
- What's the place? (Dashboard / Home / Workspace?)

---

## 9. Use Contractions

They make copy sound human. "Don't" not "do not." "You're" not "you are." Reserve formality for legal/critical contexts.

**Exceptions:** Legal notices, destructive action confirmations, compliance copy.

---

## 10. Write for Accessibility

- Avoid directional language ("click the button on the left") — doesn't work for screen readers
- Don't rely on color alone to convey meaning — support with text
- Keep reading level at grade 7–8 for most interfaces
- Avoid idioms and cultural references that don't translate

---

## 11. Earn Every Word

Before each string ships, ask: does this word earn its place? Does it add information or does it just add noise?

**The test:** Cover each word with your thumb. Does the sentence still work? If yes, cut it.

---

## Source Attribution

These principles are synthesized from:
- **Shopify Polaris** — "Weigh every word. What's the Jenga minimum?"
- **Google Developer Style Guide** — Active voice, plain language, conversational but not casual
- **Apple HIG** — Match user mental models, be consistent
- **Nielsen Norman Group** — Microcontent, front-loading, scanning behavior
- **Stripe** — Precision in error states, trust-building through clarity
