# RAMS Review Workflow

## 1. Component Audit
For each component under review:

### Accessibility Check
- [ ] Keyboard navigable (Tab, Enter, Escape)
- [ ] Focus visible
- [ ] ARIA labels on interactive elements
- [ ] Color contrast ≥4.5:1 (text), ≥3:1 (UI)
- [ ] Screen reader tested

### Visual Design Check
- [ ] Consistent spacing (8px grid)
- [ ] Typography hierarchy clear
- [ ] Touch targets ≥44px
- [ ] Hover/active states exist
- [ ] Loading states exist

### Motion Check
- [ ] Respects prefers-reduced-motion
- [ ] Animations ≤300ms
- [ ] No flashing >3Hz

## 2. Document Findings
For each issue:
```markdown
**Component:** ButtonPrimary
**Issue:** Missing focus ring
**Severity:** A11y/High
**Fix:** Add `focus-visible:ring-2`
```

## 3. Prioritize
Fix in order: A11y Critical → A11y High → Visual High → Motion
