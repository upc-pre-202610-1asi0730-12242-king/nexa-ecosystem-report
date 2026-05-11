#!/usr/bin/env bash
set -euo pipefail

REPORT_DIR="report"
DIST_DIR="dist"
OUTPUT="$DIST_DIR/nexa-report.pdf"

mkdir -p "$DIST_DIR"

# Collect all markdown files in document order
SOURCES=$(find "$REPORT_DIR" -name "*.md" | sort)

pandoc $SOURCES \
  --toc \
  --standalone \
  --metadata title="Nexa — Informe Académico" \
  --metadata lang="es" \
  -o "$OUTPUT"

echo "PDF generado: $OUTPUT"
