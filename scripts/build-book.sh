#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VOLUME="${1:-02-programming-software-engineering}"
SOURCE="$ROOT/books/$VOLUME"
OUT="$ROOT/build/$VOLUME"
if [[ ! -f "$SOURCE/main.tex" ]]; then
  echo "Unknown volume: $VOLUME" >&2
  exit 1
fi
if ! command -v latexmk >/dev/null; then
  echo 'latexmk is required. Install TeX Live with latexmk.' >&2
  exit 1
fi
mkdir -p "$OUT" "$ROOT/docs/pdfs"
(
  cd "$SOURCE"
  latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error \
    -outdir="$OUT" main.tex
)
cp "$OUT/main.pdf" "$ROOT/docs/pdfs/$VOLUME.pdf"
echo "Built docs/pdfs/$VOLUME.pdf"
