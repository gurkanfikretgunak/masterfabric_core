#!/usr/bin/env bash
set -euo pipefail

# Format Dart/Flutter code after file edits
if command -v dart &> /dev/null; then
  dart format . 2>/dev/null || true
fi
