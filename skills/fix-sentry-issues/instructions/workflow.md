# Sentry Issue Workflow

## 1. Discovery
```bash
# List recent issues by frequency
sentry issues list --project <project> --sort freq --limit 20

# Get issue details
sentry issues get <issue-id>
```

## 2. Triage
Classify each issue:
- **P0 Critical**: Data loss, security, >10% users affected
- **P1 High**: Core feature broken, >1% users
- **P2 Medium**: Edge case, workaround exists
- **P3 Low**: Cosmetic, rare

## 3. Root Cause Analysis
1. Read the stack trace
2. Find the source file and line
3. Check recent commits to that file
4. Reproduce locally if possible

## 4. Fix
1. Create a branch: `fix/sentry-<issue-id>`
2. Write the fix
3. Add error handling if missing
4. Test the specific case

## 5. Verify
After deploy, monitor the issue in Sentry. It should stop receiving new events.
