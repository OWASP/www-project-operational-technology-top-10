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

# Build identifier for the imprint page: the current git tag if the project has
# tagged a release ("v1.0", "v1.0-3-g851984b between tags"), otherwise the
# short commit hash labelled as such ("commit 851984b"); "-dirty" marks
# uncommitted trees. Empty outside a git checkout.
if VERSION="$(git -C "$ROOT" describe --tags --dirty 2>/dev/null)"; then
  :
elif VERSION="$(git -C "$ROOT" describe --always --dirty 2>/dev/null)"; then
  VERSION="commit $VERSION"
else
  VERSION=""
fi

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

# One scratch root for all editions, removed on every exit path. The trap lives
# at script level: a trap inside build_edition would outlive its `local` work
# variable, fail under `set -u` and turn a successful build into exit 1.
WORK_ROOT="$(mktemp -d)"
trap 'rm -rf "$WORK_ROOT"' EXIT

build_edition() {
  local edition="$1" out="$2"
  case "$out" in /*) : ;; *) out="$PWD/$out" ;; esac   # normalise to absolute

  local work="$WORK_ROOT/$edition"
  mkdir "$work"

  echo "==> [$edition] Assembling markdown..."
  python3 "$ROOT/pdf/assemble.py" "$ROOT/docs" "$work/assembled.md" "$edition" \
    --front="$work/front.tex"
  cp "$ROOT/pdf/metadata.yml" "$work/metadata.yml"
  # The build identifier for the imprint, as a macro style.tex reads; the
  # describe output only ever needs "_" escaped.
  printf '\\def\\otbuildid{%s}\n' "${VERSION//_/\\_}" > "$work/build.tex"

  echo "==> [$edition] Rasterising artwork (SVG -> PDF)..."
  # The cover and part pages are OWASP blue (#1D7BD7). The emblem goes there
  # as a watermark, its ink pre-mixed as 16% white over that blue (#4190DD)
  # because TikZ opacity drawn from the shipout hook loses its PDF resource
  # under xdvipdfmx; its stripes take the background blue, i.e. cut-outs.
  # The OWASP mark is used in white.
  cp "$ROOT/pdf/assets/ot-top10-logo.svg" "$work/logo.svg"
  sed -e 's/#1B2733/#4190DD/g' -e 's/#13A10E/#1D7BD7/g' \
    "$ROOT/pdf/assets/ot-top10-logo.svg" > "$work/emblem-watermark.svg"
  sed -e 's/fill:#000000/fill:#ffffff/g' \
    "$ROOT/pdf/assets/owasp-logo.svg" > "$work/owasp-white.svg"
  docker run --rm \
    -v "$work":/work \
    --entrypoint sh \
    "$IMAGE" \
      -c 'for f in /work/*.svg; do rsvg-convert -f pdf -o "${f%.svg}.pdf" "$f" || exit 1; done'

  echo "==> [$edition] Rendering PDF with pandoc + Eisvogel (Docker)..."
  docker run --rm \
    -v "$ROOT":/data:ro \
    -v "$work":/work \
    "$IMAGE" \
      /work/assembled.md \
      --template eisvogel \
      --metadata-file=/work/metadata.yml \
      --metadata footer-left="$edition Edition" \
      --include-in-header=/work/build.tex \
      --include-in-header=/data/pdf/style.tex \
      --include-before-body=/work/front.tex \
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
