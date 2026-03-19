# Knip Cleanup Evaluation Checklist

## Before Removing
- [ ] Verified not dynamically imported
- [ ] Verified not used in build/config files
- [ ] Verified not used by external consumers
- [ ] Checked git history for context

## After Cleanup
- [ ] Build passes
- [ ] Tests pass
- [ ] No new TypeScript errors
- [ ] Bundle size reduced (for dependencies)

## Quality Gates
| Check | Pass | Fail |
|-------|------|------|
| Build | Compiles successfully | Build errors |
| Tests | All pass | Failures |
| No regressions | Features work | Broken functionality |
