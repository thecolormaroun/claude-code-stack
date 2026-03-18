#!/usr/bin/env bash
# visual-qa.sh — Screenshot a URL and output the path for agent analysis
#
# Usage: ./visual-qa.sh [URL]
#   URL defaults to http://localhost:3000
#
# The agent will pick up the output path and run the image tool against it.
# Part of the Visual QA Loop: ./_graph/ship/qa/visual-qa-loop.md

set -euo pipefail

URL="${1:-http://localhost:3000}"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
SCREENSHOT_DIR="./logs/screenshots"
SCREENSHOT_PATH="${SCREENSHOT_DIR}/screenshot_${TIMESTAMP}.png"

mkdir -p "$SCREENSHOT_DIR"

echo "📸 Visual QA — screenshotting: $URL"
echo "Output: $SCREENSHOT_PATH"
echo ""

# Try browser automation if available
if command -v playwright &>/dev/null; then
  # Instruct the agent to use browser screenshot
  echo "AGENT_ACTION: browser screenshot $URL"
  echo "SAVE_TO: $SCREENSHOT_PATH"
  echo ""
  echo "Run the above in the browser tool, then analyze the screenshot at:"
  echo "$SCREENSHOT_PATH"
else
  # Fallback: try playwright/puppeteer if installed
  if command -v node &>/dev/null && node -e "require('playwright')" 2>/dev/null; then
    node - <<EOF
const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.setViewportSize({ width: 1440, height: 900 });
  await page.goto('${URL}', { waitUntil: 'networkidle' });
  await page.screenshot({ path: '${SCREENSHOT_PATH}', fullPage: true });
  await browser.close();
  console.log('Screenshot saved: ${SCREENSHOT_PATH}');
})();
EOF
  else
    echo "⚠️  No screenshot tool available. Options:"
    echo "  1. Use browser tool: browser screenshot $URL"
    echo "  2. Install playwright: npm i -g playwright && playwright install chromium"
    echo ""
    echo "After taking screenshot, save to: $SCREENSHOT_PATH"
    echo "Then analyze with: image tool at path $SCREENSHOT_PATH"
    exit 0
  fi
fi

echo ""
echo "✅ Screenshot ready. Next steps:"
echo "  1. Analyze with: image tool at $SCREENSHOT_PATH"
echo "  2. Compare against design spec if available"
echo "  3. Output diffs in 'Name It Precisely' format"
echo "  4. Fix and re-run until zero diffs"
echo ""
echo "See: ./_graph/ship/qa/visual-qa-loop.md"
