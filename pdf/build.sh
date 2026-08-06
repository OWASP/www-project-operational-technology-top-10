#!/usr/bin/env bash
#
# Build the single-file OWASP OT Top 10 PDF from the mkdocs content using
# pandoc + the Eisvogel LaTeX template, running inside the pandoc/extra
# Docker image (bundles pandoc, xelatex and Eisvogel — no local TeX needed).
#
# Usage:  pdf/build.sh [--edition YYYY | --all] [output]
#
#   The edition is a docs/v/<year>/ directory; without --edition the newest one
#   present is built, so a future docs/v/2026/ needs no change here.
#
#   output may be a file or a directory. A directory (or no argument at all,
#   which means the repository root) gets OWASP-OT-Top-10-<edition>.pdf written
#   into it — the only form that makes sense together with --all.
#
#   pdf/build.sh                          # -> ./OWASP-OT-Top-10-<newest>.pdf
#   pdf/build.sh --edition 2025           # -> ./OWASP-OT-Top-10-2025.pdf
#   pdf/build.sh --all docs/assets/       # every edition, into docs/assets/
#   pdf/build.sh out/top10.pdf            # newest edition, exact file name
#
set -euo pipefail

# pandoc/extra:3.9 — pinned by digest (matches the repo's "pin versions" policy).
IMAGE="pandoc/extra@sha256:dfae5cf73a0e0ad40acf23d2d2c4adf5715e560aeea3324aa87e68faaa2e70c9"

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

EDITION=""
ALL=false
OUT=""
while [ $# -gt 0 ]; do
  case "$1" in
    --edition) EDITION="${2:-}"; shift 2 ;;
    --all)     ALL=true; shift ;;
    -h|--help) sed -n '2,20p' "$0"; exit 0 ;;
    *)         OUT="$1"; shift ;;
  esac
done

# Editions are the four-digit directories under docs/v, oldest first.
mapfile -t EDITIONS < <(find "$ROOT/docs/v" -mindepth 1 -maxdepth 1 -type d \
  -regex '.*/[0-9][0-9][0-9][0-9]' -printf '%f\n' | sort)
[ ${#EDITIONS[@]} -gt 0 ] || { echo "no docs/v/<year>/ edition found" >&2; exit 1; }

if $ALL; then
  [ -z "$EDITION" ] || { echo "--all and --edition are mutually exclusive" >&2; exit 1; }
  TARGETS=("${EDITIONS[@]}")
else
  TARGETS=("${EDITION:-${EDITIONS[-1]}}")
fi

for want in "${TARGETS[@]}"; do
  [ -d "$ROOT/docs/v/$want" ] || { echo "no such edition: docs/v/$want" >&2; exit 1; }
done

if [ -n "$OUT" ] && ! [ -d "$OUT" ] && [ "${OUT%/}" = "$OUT" ]; then
  # An explicit file name can only name one PDF.
  [ ${#TARGETS[@]} -eq 1 ] || { echo "--all needs a directory as output" >&2; exit 1; }
fi

build_edition() {
  local edition="$1" out="$2"
  case "$out" in /*) : ;; *) out="$PWD/$out" ;; esac   # normalise to absolute

  local work
  work="$(mktemp -d)"
  trap 'rm -rf "$work"' RETURN

  echo "==> [$edition] Assembling markdown..."
  python3 "$ROOT/pdf/assemble.py" "$ROOT/docs" "$work/assembled.md" "$edition"
  cp "$ROOT/pdf/metadata.yml" "$work/metadata.yml"

  echo "==> [$edition] Rasterising cover emblem (SVG -> PDF)..."
  docker run --rm \
    -v "$ROOT":/data:ro \
    -v "$work":/work \
    --entrypoint rsvg-convert \
    "$IMAGE" \
      -f pdf -o /work/logo.pdf /data/pdf/assets/ot-top10-logo.svg

  echo "==> [$edition] Rendering PDF with pandoc + Eisvogel (Docker)..."
  docker run --rm \
    -v "$ROOT":/data:ro \
    -v "$work":/work \
    "$IMAGE" \
      /work/assembled.md \
      --template eisvogel \
      --metadata-file=/work/metadata.yml \
      --metadata date="$edition Edition" \
      --metadata footer-left="OWASP OT Top 10 — $edition" \
      --toc \
      --pdf-engine=xelatex \
      --resource-path=/data/docs \
      --from=markdown \
      -o /work/out.pdf

  mkdir -p "$(dirname "$out")"
  cp "$work/out.pdf" "$out"
  echo "==> PDF written to: $out"
}

for edition in "${TARGETS[@]}"; do
  out="$OUT"
  if [ -z "$out" ]; then
    out="$ROOT/OWASP-OT-Top-10-$edition.pdf"
  elif [ -d "$out" ] || [ "${out%/}" != "$out" ]; then
    out="${out%/}/OWASP-OT-Top-10-$edition.pdf"
  fi
  build_edition "$edition" "$out"
done
