#!/usr/bin/env bash
#
# Build the single-file OWASP OT Top 10 PDF from the mkdocs content using
# pandoc + the Eisvogel LaTeX template, running inside the pandoc/extra
# Docker image (bundles pandoc, xelatex and Eisvogel — no local TeX needed).
#
# Usage:  pdf/build.sh [output.pdf]
#   default output: ./OWASP-OT-Top-10-2025.pdf
#
set -euo pipefail

# pandoc/extra:3.9 — pinned by digest (matches the repo's "pin versions" policy).
IMAGE="pandoc/extra@sha256:dfae5cf73a0e0ad40acf23d2d2c4adf5715e560aeea3324aa87e68faaa2e70c9"

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="${1:-$ROOT/OWASP-OT-Top-10-2025.pdf}"
case "$OUT" in /*) : ;; *) OUT="$PWD/$OUT" ;; esac   # normalise to absolute

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

echo "==> Assembling markdown..."
python3 "$ROOT/pdf/assemble.py" "$ROOT/docs" "$WORK/assembled.md"
cp "$ROOT/pdf/metadata.yml" "$WORK/metadata.yml"

echo "==> Rasterising cover emblem (SVG -> PDF)..."
docker run --rm \
  -v "$ROOT":/data:ro \
  -v "$WORK":/work \
  --entrypoint rsvg-convert \
  "$IMAGE" \
    -f pdf -o /work/logo.pdf /data/pdf/assets/ot-top10-logo.svg

echo "==> Rendering PDF with pandoc + Eisvogel (Docker)..."
docker run --rm \
  -v "$ROOT":/data:ro \
  -v "$WORK":/work \
  "$IMAGE" \
    /work/assembled.md \
    --template eisvogel \
    --metadata-file=/work/metadata.yml \
    --toc \
    --pdf-engine=xelatex \
    --resource-path=/data/docs \
    --from=markdown \
    -o /work/out.pdf

mkdir -p "$(dirname "$OUT")"
cp "$WORK/out.pdf" "$OUT"
echo "==> PDF written to: $OUT"
