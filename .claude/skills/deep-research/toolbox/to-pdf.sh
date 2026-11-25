#!/usr/bin/env bash
# Usage: to-pdf.sh <report.html> [out.pdf]   Renders HTML to PDF with the preinstalled Playwright Chromium.
set -eu
in=$(realpath "$1"); out=$(realpath -m "${2:-${1%.html}.pdf}")
node -e '
const { chromium } = require("playwright");
(async () => {
  const b = await chromium.launch(); const p = await b.newPage();
  await p.goto("file://" + process.argv[1]);
  await p.pdf({ path: process.argv[2], format: "A4", printBackground: true, margin: { top: "18mm", bottom: "18mm", left: "14mm", right: "14mm" } });
  await b.close();
})().catch(e => { console.error(e.message); process.exit(1); });
' "$in" "$out" && echo "wrote $out"
