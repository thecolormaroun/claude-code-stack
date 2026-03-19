# Sentry Triage Guide

## Priority Matrix

| Impact | Frequency | Priority |
|--------|-----------|----------|
| High   | High      | P0       |
| High   | Low       | P1       |
| Low    | High      | P2       |
| Low    | Low       | P3       |

## Impact Assessment
- **High**: Crashes, data corruption, auth failures, payment failures
- **Low**: UI glitches, non-blocking errors, logging noise

## Frequency Thresholds
- **High**: >100 events/day or >1% of sessions
- **Low**: <100 events/day and <1% of sessions

## Auto-Ignore Patterns
Skip these unless they spike:
- Browser extension conflicts
- Bot/crawler errors
- Network timeouts from client side
- Deprecated browser errors (IE11)

## Grouping Check
Before fixing, verify Sentry grouped correctly. Sometimes one root cause shows as multiple issues.
