# Sentry Fix Evaluation Checklist

## Before Merge
- [ ] Stack trace matches the fix location
- [ ] Root cause identified (not just symptoms)
- [ ] Error handling added where missing
- [ ] No new errors introduced
- [ ] Tests cover the failure case

## After Deploy
- [ ] Issue event count drops to 0
- [ ] No new related issues appear
- [ ] Monitoring alert resolved (if any)

## Quality Gates
| Check | Pass | Fail |
|-------|------|------|
| Fix targets root cause | Addresses underlying issue | Band-aid fix |
| Error handling | Graceful degradation | Silent failure or crash |
| Test coverage | Failure case tested | No test for the bug |
