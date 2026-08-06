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
bash pdf/build.sh                                  # -> ./OWASP-OT-Top-10-2025.pdf
bash pdf/build.sh docs/assets/OWASP-OT-Top-10-2025.pdf
```

Requirements: Docker + `python3`. The generated PDF is git-ignored.

## How it works

- **`assemble.py`** — concatenates the `docs/v/2025/**` pages, in the same order
  as the `mkdocs.yml` `nav`, into one pandoc-friendly Markdown file. It:
  - groups the chapters into LaTeX parts (see `PARTS`), which is what gives the
    PDF outline its hierarchy: part > chapter > section, instead of one flat
    list of pages,
  - converts mkdocs `!!!` admonitions to blockquotes (and drops the
    website-only "Download the PDF" notice),
  - rewrites inter-page `*.md` links to internal `#anchors`,
  - resolves image paths relative to `docs/`,
  - skips chapters that are missing from the checkout (e.g. a page that still
    lives on another branch), with a warning on stderr.
  If you add or reorder pages in `mkdocs.yml`, update `PARTS` here too.
- **`metadata.yml`** — pandoc/Eisvogel settings (title page, TOC, teal theme
  colour, table styling, margins). Only the ten risk chapters are numbered;
  `bookmarksnumbered` carries those numbers into the PDF outline as well.
- **`build.sh`** — runs the two steps above in the pinned `pandoc/extra` image.

## Publishing

The deploy workflow (`.github/workflows/deploy.yml`) runs `build.sh` into
`docs/assets/OWASP-OT-Top-10-2025.pdf` before `mkdocs gh-deploy`, so the PDF is
published at <https://ot.owasp.org/assets/OWASP-OT-Top-10-2025.pdf> (linked from
the Start Here / home pages).
