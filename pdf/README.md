# PDF build

Generates a single-file, offline PDF of the OWASP OT Top 10 from the same
Markdown that powers the website — using **pandoc + the Eisvogel LaTeX
template**, run inside the [`pandoc/extra`](https://hub.docker.com/r/pandoc/extra)
Docker image (bundles pandoc, XeLaTeX and Eisvogel, so no local TeX is needed).

This mirrors how the OWASP MASVS and ASVS produce their PDFs. On top of the
template, `style.tex` gives it the look of the other OWASP documents: a
full-bleed cover in the OWASP Foundation blue, an imprint page, part openers,
numbered risk chapters, a back cover, plus the TOC, PDF bookmarks/outline,
running headers/footers and row-striped tables.

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
`--all` builds every one of them. The cover, imprint and page footer are derived
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
  - skips chapters the edition does not have, with a warning on stderr,
  - keeps the ten risks' shared sub-sections (Description, Rationale, ...) out
    of the TOC, which lists only their titles; the PDF outline keeps them,
  - with `--front=<file.tex>`, writes the cover and imprint calls (edition,
    project leaders from `project.owasp.yaml`) that go ahead of the TOC.
  `PARTS` lists the chapters relative to `docs/v/<edition>/`, so it describes
  every edition at once. If you add or reorder pages in `mkdocs.yml`, update
  `PARTS` here too.
- **`style.tex`** — the LaTeX design layer: palette, cover, imprint, part
  openers, risk chapter headings, back cover, text setting. Full-page artwork
  is drawn through the `shipout/background` hook, so it needs no second LaTeX
  run; it avoids TikZ opacity there, which xdvipdfmx drops (the watermark
  colour is pre-mixed in `build.sh` instead).
- **`assets/`** — `ot-top10-logo.svg`, the project emblem, and
  `owasp-logo.svg`, the OWASP mark from
  [OWASP/www--site-theme](https://github.com/OWASP/www--site-theme/blob/main/assets/images/logo.svg).
  `build.sh` derives the white and watermark variants for the blue pages.
- **`metadata.yml`** — pandoc/Eisvogel settings (TOC, link colours, table
  styling, margins). It holds nothing edition-specific — the footer is passed
  per edition by `build.sh`. Only the ten risk chapters are numbered;
  `bookmarksnumbered` (in `style.tex`) carries those numbers into the PDF
  outline as well.
- **`build.sh`** — runs the steps above in the pinned `pandoc/extra` image and
  writes the build identifier (git tag or commit) for the imprint page.

## CI

`.github/workflows/ci.yml` runs `assemble.py --strict` for every edition on each
push. That needs no Docker and takes a second, and it fails on a page that PARTS
lists but the edition does not have, or that the edition has but PARTS never
mentions (`WEBSITE_ONLY` in `assemble.py` holds the deliberate exceptions). A
second job runs the full `build.sh --all` render and uploads the PDFs as a
workflow artifact, so a broken render shows up on the push that caused it rather
than in the deploy job.

## Publishing

The deploy workflow (`.github/workflows/deploy.yml`) runs `build.sh --all
docs/assets/` before `mkdocs gh-deploy`, so every edition is published at
`https://ot.owasp.org/assets/OWASP-OT-Top-10-<year>.pdf` and the links of older
editions keep working.
