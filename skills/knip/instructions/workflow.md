# Knip Workflow

## 1. Run Analysis
```bash
npx knip
```

## 2. Review Output Categories

### Unused Files
Files with no imports. Verify before deleting:
- Check if dynamically imported
- Check if used in build configs
- Check if test files

### Unused Dependencies
In package.json but not imported:
```bash
npm uninstall <package>
```

### Unused Exports
Exported but never imported elsewhere:
- Remove export keyword, or
- Delete if entire function unused

### Unused Types
TypeScript types defined but never used.

## 3. Fix in Order
1. Unused dependencies (safe, saves install time)
2. Unused files (review carefully)
3. Unused exports (may break external consumers)

## 4. Verify
```bash
npm run build
npm test
```
