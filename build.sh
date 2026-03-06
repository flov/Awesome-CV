#!/bin/bash
# Build CV using Docker (no local TeX installation needed)
# Usage: ./build.sh [cv|resume|coverletter] (defaults to cv)

TARGET="${1:-cv}"

docker run --rm \
  -v "$(pwd)":/workspace \
  -w /workspace/examples \
  texlive/texlive \
  xelatex -interaction=nonstopmode "${TARGET}.tex"

echo ""
echo "Output: examples/${TARGET}.pdf"
