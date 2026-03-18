---
id: studio.design.copy.microcopy-patterns
name: Microcopy Pattern Library
description: Pattern-matched copy templates for common UI surfaces. Use these as starting points, then adapt for project voice.
when_to_use: When writing or reviewing copy for a specific UI component.
---

# Microcopy Pattern Library

Each pattern includes: **formula → examples → anti-patterns → notes**.

---

## 1. Error Messages

**The #1 most important copy to get right.** Users are frustrated. They need help, not blame.

### Formula
```
[What went wrong] + [Why (if it helps)] + [How to fix it]
```

### Examples

**Network/connection errors:**
- ✅ "Couldn't connect. Check your internet and try again."
- ✅ "Request timed out. Your connection may be slow — try again."

**Validation errors:**
- ✅ "Enter a valid email address. Example: name@domain.com"
- ✅ "Password must be at least 8 characters."
- ✅ "That username is taken. Try adding a number or different word."

**Server/system errors:**
- ✅ "Something went wrong on our end. We're looking into it — try again in a moment."
- ✅ "Couldn't load your data. Refresh the page to try again."

**Permission errors:**
- ✅ "You don't have access to this. Ask your admin to update your permissions."

### Anti-patterns
- ❌ "Error 403" (code without meaning)
- ❌ "Invalid input" (what input? why invalid?)
- ❌ "An error has occurred" (tells them nothing)
- ❌ "You entered the wrong password" (blaming, not helping)

### Notes
- Always specify what to do next
- Never blame you
- Surface the error close to where it happened (inline > toast > modal)
- For destructive/irreversible errors, add recovery path if one exists

---

## 2. Empty States

First impression for new users. Use it to explain value and guide action — not just say "nothing here."

### Formula
```
[What this space is for] + [Why it's empty] + [How to fill it]
```

### Types of empty states

**First-time empty (never used this feature):**
- ✅ "Your projects live here. Create your first one to get started."
- ✅ "No recipes yet. Add one from the search bar above."

**Search/filter empty (no results):**
- ✅ "No results for 'avocado toast'. Try a different search or browse categories."
- ✅ "Nothing matches these filters. Try removing one to see more."

**Cleared/completed empty (all done):**
- ✅ "All caught up! No pending tasks."
- ✅ "Inbox zero. Nice work."

### Anti-patterns
- ❌ "No data." (cold and useless)
- ❌ "Nothing to show." (same problem)
- ❌ Empty state with no CTA (leaves user stranded)

### Notes
- Pair with an illustration or icon to soften the emptiness
- CTA should be primary action that fills the state
- Match tone to context: first-time = encouraging; no-results = helpful

---

## 3. CTAs (Call to Action)

The most conversion-critical copy on the page. Every word matters.

### Formula
```
[Verb] + [Object] → or → [Verb] + [Benefit]
```

### Examples by category

**Creation:**
- ✅ "Create project"
- ✅ "Add recipe"
- ✅ "Start building"
- ✅ "New campaign"

**Progression:**
- ✅ "Continue"
- ✅ "Next: Review"
- ✅ "Save and continue"

**Submission:**
- ✅ "Submit review"
- ✅ "Send message"
- ✅ "Publish post"

**Benefit-driven (for marketing/onboarding):**
- ✅ "Get started free"
- ✅ "See my results"
- ✅ "Try it now"
- ✅ "Build my first project"

**Destructive:**
- ✅ "Delete project"
- ✅ "Remove member"
- ✅ "Cancel subscription"

### Anti-patterns
- ❌ "Submit" (submit what? for what?)
- ❌ "Click here" (never)
- ❌ "OK" (OK what?)
- ❌ "Yes" / "No" (paired with "Are you sure?" — meaningless)
- ❌ "Learn more" (lazy; what will I learn?)

### Notes
- CTAs should echo the action you is about to take, not the system's internal label
- Destructive CTAs should name the thing being destroyed
- Pair CTAs with context: "Delete project" is clearer than "Delete" in a modal about a project

---

## 4. Confirmation Dialogs

The last checkpoint before a potentially irreversible action. Clarity over politeness.

### Formula
```
[Action] + [Object] + [Consequence if relevant] + [Cancel | Confirm]
```

### Examples

**Delete:**
```
Delete "Summer Campaign"?
This can't be undone. All files and history will be removed.

[Cancel] [Delete project]
```

**Destructive with recovery window:**
```
Archive this recipe?
It'll move to your archive and won't appear in search. You can restore it anytime.

[Keep recipe] [Archive]
```

**Logout:**
```
Sign out?
You'll need to sign in again to access your account.

[Stay signed in] [Sign out]
```

### Anti-patterns
- ❌ "Are you sure?" as the title (circular — of course they're not sure, that's why they're here)
- ❌ "Yes" / "No" as button labels (force you to read the title to understand what they're confirming)
- ❌ Burying the consequence in fine print

### Notes
- Mirror the button label to the action ("Delete project" not just "Delete")
- Cancel/dismiss should always be the left/less prominent option
- If the action is reversible, say so — it reduces anxiety
- If it's truly permanent, say "can't be undone"

---

## 5. Loading States

Users tolerate waiting when they know what's happening. Set expectations.

### Formula
```
[What's happening] → optionally + [Why it's taking time]
```

### Examples by duration

**Instant (< 1s):** No copy needed — show a spinner.

**Short (1–3s):**
- ✅ "Loading…"
- ✅ "Saving…"
- ✅ "Uploading…"

**Medium (3–10s):**
- ✅ "Preparing your export…"
- ✅ "Analyzing your data…"
- ✅ "Building your project…"

**Long (10s+):**
- ✅ "Generating your report. This usually takes about 30 seconds."
- ✅ "Importing 2,500 items. You can close this — we'll notify you when it's done."

**Background processing:**
- ✅ "Processing in the background. We'll send you an email when it's ready."

### Anti-patterns
- ❌ "Please wait…" (implies impatience — also says nothing)
- ❌ No loading state at all (users assume it's broken)
- ❌ Progress bar that jumps or lies (worse than no progress bar)

---

## 6. Success Messages

Brief, warm, and forward-pointing. Don't overstay your welcome.

### Formula
```
[Confirmation of what happened] + [Optional: next step or consequence]
```

### Examples

**Saved:**
- ✅ "Saved." (inline, no toast needed if autosave)
- ✅ "Changes saved."

**Created:**
- ✅ "Project created. Start adding your team."
- ✅ "Recipe saved to your collection."

**Sent:**
- ✅ "Message sent."
- ✅ "Invite sent to alex@example.com."

**Completed:**
- ✅ "You're in! Check your email to verify."
- ✅ "All done. Your subscription is active."

**Deleted/archived:**
- ✅ "Project deleted." [Undo]
- ✅ "Recipe archived. Find it anytime in Archive."

### Anti-patterns
- ❌ "Congratulations! Your action was successfully completed!" (robot ceremony)
- ❌ Success message with no indication of what to do next (leaves user hanging)
- ❌ Auto-dismiss too fast (< 3s) for important confirmations

---

## 7. Onboarding Copy

Progressive disclosure wins. Don't front-load everything. Guide users through steps, one idea at a time.

### Formula (per step)
```
[What to do] + [Why it matters] + [CTA]
```

### Examples

**Welcome screen:**
- ✅ "Welcome to [Product]. Let's set up your account in 3 steps."
- ✅ "You're in. First, let's personalize your experience."

**Step copy:**
- ✅ "Name your first project. You can change this later."
- ✅ "Add your team. Invite up to 5 people for free."
- ✅ "Connect your calendar. We'll pull in your availability automatically."

**Progress indicators:**
- ✅ "Step 2 of 4 — Almost there."
- ✅ "2 steps left."

**Skip patterns:**
- ✅ "Skip for now" (not just "Skip" — "for now" softens, implies they can return)

### Anti-patterns
- ❌ 10-step onboarding with no skip
- ❌ Asking for information before explaining why it's needed
- ❌ "Welcome!" as the entire welcome screen header (wasted opportunity)

---

## 8. Tooltips & Helper Text

Contextual copy that appears when you needs it, not before. Never use these as a crutch for bad UX.

### Formula
```
[What this does] or [Why this information matters]
```

### Tooltip examples
- ✅ "Hides this section from viewers." (on a visibility toggle)
- ✅ "Your API key. Keep this private — anyone with it can access your account."
- ✅ "Save a version you can return to at any time."

### Helper text (inline, always visible)
- ✅ "Use your name as it appears on your ID."
- ✅ "We'll only contact you about orders."
- ✅ "8 characters minimum. At least one number."

### Anti-patterns
- ❌ Tooltip that repeats the label ("Name: Enter your name")
- ❌ Helper text that explains unclear design instead of fixing the design
- ❌ Tooltips on obvious controls

---

## 9. Form Labels & Placeholders

Labels are permanent navigation. Placeholders are temporary hints. Don't confuse them.

### Labels
- Short, descriptive, sentence case
- ✅ "Email address"
- ✅ "Company name (optional)"
- ✅ "Date of birth"

### Placeholders
- Use sparingly — they disappear when you starts typing
- ✅ "name@company.com" (format hint)
- ✅ "Search recipes…" (intent hint)
- ❌ "Enter your email address" (repeats the label — just noise)
- ❌ Required instructions in placeholder (they'll disappear before user reads them)

### Required vs optional
- Mark the minority case (if most are required, mark "optional"; if most are optional, mark "required")
- Use "(optional)" in the label, not an asterisk alone
- If you must use asterisk, explain it once at the top or bottom of the form

---

## Pattern Quick-Reference Table

| Surface | Formula | Tone |
|---------|---------|------|
| Error | What went wrong + How to fix | Empathetic, direct |
| Empty state | What it's for + How to fill | Encouraging, helpful |
| CTA | Verb + Object or Benefit | Action-oriented, confident |
| Confirmation | Action + Consequence + Confirm/Cancel | Clear, calm |
| Loading | What's happening | Neutral, informative |
| Success | Confirmation + Next step | Warm, brief |
| Onboarding | What to do + Why + CTA | Encouraging, progressive |
| Tooltip | What it does | Neutral, precise |
| Label | Short noun phrase | Neutral |
| Placeholder | Format/intent hint | Neutral, lighter weight |
