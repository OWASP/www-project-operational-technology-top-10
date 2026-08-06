# PDF build

Generates a single-file, offline PDF of the OWASP OT Top 10 from the same
Markdown that powers the website — using **pandoc + the Eisvogel LaTeX
template**, run inside the [`pandoc/extra`](https://hub.docker.com/r/pandoc/extra)
Docker image (bundles pandoc, XeLaTeX and Eisvogel, so no local TeX is needed).

This mirrors how the OWASP MASTG produces its ebook, and gives a native cover
page, table of contents, PDF bookmarks/outline, running headers/footers, page
numbers and row-striped tables.

## Build it

```bash
bash pdf/build.sh                        # newest edition -> ./OWASP-OT-Top-10-<year>.pdf
bash pdf/build.sh --edition 2025         # a specific edition
bash pdf/build.sh --all docs/assets/     # every edition, into a directory
bash pdf/build.sh out/top10.pdf          # newest edition under an exact file name
```

Requirements: Docker + `python3`. The generated PDFs are git-ignored.

## Editions

An edition is a `docs/v/<year>/` directory. Nothing in here names a year: the
build defaults to the newest edition present, `--edition` picks another one, and
`--all` builds every one of them. The cover date and the page footer are derived
from the edition, and the file name is `OWASP-OT-Top-10-<year>.pdf`.

So `docs/v/2026/` is picked up as soon as it exists. Chapters an edition does not
have are skipped with a warning, and a part whose chapters are all missing is
dropped, so a new edition can be built while it is still incomplete.

## How it works

- **`assemble.py <docs> <out.md> [edition]`** — concatenates the pages of one
  edition, in the same order as the `mkdocs.yml` `nav`, into a single
  pandoc-friendly Markdown file. Without the third argument it uses the newest
  edition. It:
  - groups the chapters into LaTeX parts (see `PARTS`), which is what gives the
    PDF outline its hierarchy: part > chapter > section, instead of one flat
    list of pages,
  - converts mkdocs `!!!` admonitions to blockquotes (and drops the
    website-only "Download the PDF" notice),
  - rewrites inter-page `*.md` links to internal `#anchors`,
  - resolves image paths relative to `docs/`,
  - skips chapters the edition does not have, with a warning on stderr.
  `PARTS` lists the chapters relative to `docs/v/<edition>/`, so it describes
  every edition at once. If you add or reorder pages in `mkdocs.yml`, update
  `PARTS` here too.
- **`metadata.yml`** — pandoc/Eisvogel settings (title page, TOC, teal theme
  colour, table styling, margins). It holds nothing edition-specific — the cover
  date and footer are passed per edition by `build.sh`. Only the ten risk
  chapters are numbered; `bookmarksnumbered` carries those numbers into the PDF
  outline as well.
- **`build.sh`** — runs the two steps above in the pinned `pandoc/extra` image.

## CI

`.github/workflows/ci.yml` runs `assemble.py --strict` for every edition on each
push. That needs no Docker and takes a second, and it fails on a page that PARTS
lists but the edition does not have, or that the edition has but PARTS never
mentions (`WEBSITE_ONLY` in `assemble.py` holds the deliberate exceptions). The
full render is only exercised by the deploy workflow.

## Publishing

The deploy workflow (`.github/workflows/deploy.yml`) runs `build.sh --all
docs/assets/` before `mkdocs gh-deploy`, so every edition is published at
`https://ot.owasp.org/assets/OWASP-OT-Top-10-<year>.pdf` and the links of older
editions keep working.
