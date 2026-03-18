---
id: studio.design.copy.anti-patterns
name: UX Writing Anti-Patterns
description: Common copy mistakes that kill UX quality. The copy equivalent of anti-slop.md. Catch and fix these before they ship.
when_to_use: During any copy review. Load alongside the QA checklist.
---

# UX Writing Anti-Patterns

The copy equivalent of [[studio.design.system.anti-slop]].  
These are patterns that make products feel low-quality, cold, or unfinished.  
**None of these ship.**

---

## 1. Vague CTAs

The worst offender in product copy. Buttons that say nothing about what happens.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "Submit" | Submit what? For what purpose? | "Save settings" / "Send request" / "Place order" |
| "Click here" | Non-descriptive, SEO-dead, accessibility failure | Name the action: "Download the guide" |
| "OK" | OK what? Agree? Dismiss? Confirm? | "Got it" / "Dismiss" / "Confirm" / "Delete project" |
| "Yes" / "No" | Meaningless without memorizing the question | "Delete" / "Keep" — mirror the action |
| "Learn more" | Learn more what? About what? | "See how pricing works" / "Read the docs" |
| "Continue" (alone) | Continue to what? | "Continue to checkout" / "Next: Review" |
| "Go" | Where? Why? | Name the destination or action |

**Rule:** A button label should make sense read alone, out of context.

---

## 2. Blaming the User

Errors that make users feel stupid instead of helped.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "You entered an invalid email." | "You" + failure = blame | "That doesn't look like an email address. Example: name@domain.com" |
| "Invalid password." | No information, all blame | "Incorrect password. Try again, or reset it below." |
| "Your request failed." | Implies user did something wrong | "Something went wrong. Try again." |
| "You must complete all fields." | Commanding and blaming | "Complete all required fields to continue." |
| "You have exceeded your limit." | Accusatory | "You've reached your storage limit. Upgrade to add more." |

**Rule:** Error messages should never start with "You" + a negative outcome.

---

## 3. Robot Voice

Copy that sounds like it was written by the system about itself, not by a human for a human.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "An error has occurred." | Passive, vague, inhuman | "Something went wrong. Try refreshing." |
| "Operation completed successfully." | No human talks like this | "Done!" or "Changes saved." |
| "The requested resource could not be located." | HTTP 404 leaked into UI | "We can't find that page." |
| "Authentication failed." | System-internal language | "Wrong password. Try again." |
| "Please wait while the system processes your request." | Robotic, explains nothing | "Almost there…" / "Loading your data…" |
| "Your session has been terminated." | Threatening internal-speak | "You've been signed out." |
| "Your account has been successfully created by our system." | Passive + unnecessary | "You're in. Check your email to verify." |

**Rule:** Read the copy out loud. If no human would ever say it, rewrite it.

---

## 4. Over-Apologizing

Excessive apology signals low confidence and wastes you's attention on your feelings.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "We're so sorry for the inconvenience caused by this error." | Empty emotion, no help | "Something went wrong. Here's how to fix it." |
| "We apologize for any confusion this may have caused." | "May have caused" — you did cause it | Just fix the copy so there's no confusion |
| "Sorry about that!" on every error toast | Diminishes when everything is sorry | Reserve for real mistakes; solve the problem instead |
| "We're terribly sorry, but…" | Performative | Cut the apology, solve the problem |

**Rule:** Solve first. Apologize only when something actually went wrong on your end — and even then, once is enough.

---

## 5. Wall of Text in Modals

Modals are for quick decisions, not reading comprehension tests.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| 200-word modal body | Users don't read modals; they scan | Cut to 1–2 sentences max |
| Legal copy in modal | Users will click through without reading | Summarize; link to full terms |
| Multiple decisions in one modal | Cognitive overload | One modal = one decision |
| Bullet list with 7 items | Too much to process at once | Reduce to 2–3, or move to a settings page |
| No clear primary action | User doesn't know what to do | One primary button, one secondary (cancel) |

**Rule:** If the modal body is longer than 2 sentences, ask if it should be a modal at all.

---

## 6. Inconsistent Terminology

The silent UX killer. Users build mental models from terminology. Inconsistency destroys trust.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "Save" on one screen, "Store" on another | User thinks these are different actions | Pick one word. Use it everywhere. |
| "Account" in navigation, "Profile" in settings, "User" in errors | Three words for one concept | Pick one. |
| "Delete" in button, "Remove" in confirmation dialog | Which word is right? | Consistent — "Delete" all the way through |
| "Photos" in nav, "Images" in upload dialog | Same thing? Different things? | Pick the word your users would use |
| "Step 1 of 3" then "2 / 3" then "Step Three" | Format inconsistency = polish erosion | Standardize format across the flow |

**Rule:** Maintain a micro-glossary per project. Every concept gets one canonical word.

---

## 7. Empty States That Are Just Empty

The most common lazy pattern in product development.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "No data." | Zero information or invitation | "Your projects will appear here. Create your first one." |
| "Nothing to show." | Same — unhelpful | Explain what belongs here + CTA to add it |
| Empty state with no CTA | User is stranded | Always include a primary action to fill the state |
| "No results found." (search) | Dead end | "No results for 'X'. Try different keywords or browse all." |
| Error state styled as empty state | User doesn't know what happened | Differentiate: empty = no content, error = something failed |

**Rule:** An empty state is a marketing opportunity. Never waste it on "nothing to show."

---

## 8. Placeholder Text as Instructions

Placeholders disappear when you starts typing. Critical instructions must not live there.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| Required format in placeholder ("MM/DD/YYYY") | Gone when they start typing | Use helper text below the field instead |
| "Enter your name here" as placeholder | Repeats the label; adds no value | Use a format example or leave blank |
| Entire label replaced by placeholder | No label = accessibility failure | Always have a visible, persistent label |
| Instructions only in placeholder | User can't reference them while filling | Move to helper text |

**Rule:** Placeholders = format hints or brief examples only. Never instructions.

---

## 9. Passive Voice Everywhere

Passive voice hides the actor, adds words, and sounds evasive.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "Your account was deactivated." | By who? Why? | "We deactivated your account." + reason |
| "Files can be uploaded by clicking the button." | Roundabout | "Upload files." |
| "Settings can be changed in your profile." | Wordy and passive | "Change this in your profile settings." |
| "It is recommended that you…" | Formal, evasive | "We recommend…" or just do it |

**Rule:** Default to active voice. Passive is allowed only when the actor is genuinely unknown or irrelevant.

---

## 10. "Just", "Simply", "Easy"

Words that minimize effort — and make users feel stupid if they struggle.

| Anti-pattern | Why it fails | Fix |
|-------------|--------------|-----|
| "Just click here to get started." | What if it's not easy for them? | "Click here to get started." |
| "Simply fill out the form below." | Implies it should be effortless | "Fill out the form below." |
| "It's easy! Just…" | Condescending if it's not easy | Show them; don't tell them it's easy |
| "Quick setup in 5 minutes." | What if it takes longer? | "Set up in a few minutes." or just show them |

**Rule:** Banned words in UI copy: "just", "simply", "easy", "quick", "obviously".

---

## Anti-Pattern Quick Reference

| Pattern | Symptom | Fix |
|---------|---------|-----|
| Vague CTA | "Submit", "OK", "Click here" | Name the action + object |
| User blame | "You entered invalid…" | Lead with the fix |
| Robot voice | "An error has occurred" | Write as a human, read aloud |
| Over-apologizing | "We're so sorry for the inconvenience" | Solve first, apologize never/once |
| Text wall modal | >3 sentences in modal body | Cut ruthlessly or redesign |
| Inconsistent terms | "Save" / "Store" / "Keep" for same action | One word, one concept, everywhere |
| Dead empty state | "No data." | Value statement + CTA |
| Placeholder overload | Instructions that vanish on type | Move to persistent helper text |
| Passive voice | "Files can be uploaded by…" | Active: "Upload files." |
| Minimizing language | "Just click", "Simply", "Easy" | Cut these words entirely |
