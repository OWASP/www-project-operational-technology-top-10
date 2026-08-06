#!/usr/bin/env python3
"""Assemble the mkdocs content into a single pandoc-friendly markdown file."""
import os, re, sys

ARGS   = [a for a in sys.argv[1:] if not a.startswith("--")]
STRICT = "--strict" in sys.argv   # CI mode: warnings about the page set become errors

DOCS = ARGS[0]              # path to docs/ dir
OUT  = ARGS[1]              # output assembled .md


def latest_edition(docs):
    """Newest docs/v/<year>/ directory, so a new edition needs no code change."""
    years = sorted(d for d in os.listdir(os.path.join(docs, "v"))
                   if re.fullmatch(r"\d{4}", d))
    if not years:
        sys.exit(f"no docs/v/<year>/ edition found in {docs}")
    return years[-1]

# Which edition to render, e.g. "2025" -> docs/v/2025/**. Defaults to the newest
# one present, so v/2026 is picked up as soon as it exists.
EDITION = ARGS[2] if len(ARGS) > 2 else latest_edition(DOCS)

# Document structure: LaTeX parts, each holding its chapters (paths relative to
# docs/v/<edition>/, in the same order as the mkdocs.yml nav). The parts are what
# gives the PDF outline/bookmarks a hierarchy — part > chapter > section —
# instead of one flat list of pages. Chapters an edition does not have are
# skipped with a warning, so editions may differ in content.
PARTS = [
    ("Introduction", [
        "summary.md",
        "index.md",
    ]),
    ("Operational Technology (OT)", [
        "background-ot/index.md",
        "background-ot/safety-vs-security.md",
        "background-ot/ot_for_itsec_people.md",
        "background-ot/itsec_for_ot_people.md",
        "background-ot/related-standards.md",
    ]),
    ("The Top 10", [
        "the-top-10/index.md",
        "the-top-10/unknown-assets-and-admin-access.md",
        "the-top-10/accessible-devices-with-known-vulnerabilities.md",
        "the-top-10/inadequate_supply_chain_management.md",
        "the-top-10/loss-of-availability.md",
        "the-top-10/insufficient-access-control.md",
        "the-top-10/missing-incident-detection-reaction-capabilities.md",
        "the-top-10/broken-zone-and-conduits-design.md",
        "the-top-10/missing-awareness.md",
        "the-top-10/components-with-insufficient-security-capabilities.md",
        "the-top-10/missing-hardening.md",
    ]),
    ("Where to Start", [
        "appendix/whats-next.md",
    ]),
    # Back matter: OWASP org / community boilerplate and reference appendices.
    ("About the Project", [
        "introduction/about-owasp.md",
        "introduction/contributing.md",
        "introduction/contributors.md",
        "introduction/related-owasp-projects.md",
    ]),
    ("Appendix", [
        "appendix/mappingTable.md",
        "appendix/glossary.md",
    ]),
]

# Pages of an edition that belong to the website only, deliberately not to the
# PDF. Anything else found under the edition and missing from PARTS is flagged.
WEBSITE_ONLY = {"news.md"}

def in_edition(rel):
    """Chapter path relative to docs/, e.g. "index.md" -> "v/2025/index.md"."""
    return f"v/{EDITION}/{rel}"

ORDER = [in_edition(rel) for _part, files in PARTS for rel in files]

# Imprint / colophon shown on its own page ahead of the content (no heading,
# so it stays out of the table of contents).
COLOPHON = """\
**OWASP Operational Technology (OT) Top 10 — {edition} Edition**

Available online at <https://ot.owasp.org>. This is a living document and is
updated as the OT threat landscape evolves.

Part of the OWASP OT Top 10 Project:
<https://owasp.org/www-project-operational-technology-top-10/>.

Project leaders (in alphabetical order): Andreas Happe, Siegfried Hollerer,
Simon Rommer.

------------------------------------------------------------------------

Copyright © The OWASP Foundation.

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License (CC BY-SA 4.0). For any reuse or distribution, you must
make the license terms of this work clear to others. OWASP® is a registered
trademark of the OWASP Foundation, Inc.
"""


def slug(relpath):
    """Unique anchor id for a source file (path without .md, / -> -)."""
    return re.sub(r"[^\w\-]", "-", relpath[:-3])

KNOWN = {p: slug(p) for p in ORDER}

# Only the ten risk chapters carry section numbers (1..10, with 1.1/1.2 ...).
# Everything else (front matter, background, back matter) stays unnumbered so
# "the Top 10" is the document's strongest hierarchy.
RISK_FILES = {p for p in ORDER
              if p.startswith(in_edition("the-top-10/")) and not p.endswith("/index.md")}

def strip_frontmatter(text):
    if text.startswith("---\n"):
        end = text.find("\n---", 4)
        if end != -1:
            nl = text.find("\n", end + 1)
            return text[nl+1:] if nl != -1 else ""
    return text

def convert_admonitions(text):
    """Convert `!!! type \"Title\"` blocks to blockquotes; drop PDF-download ones."""
    lines = text.split("\n")
    out, i = [], 0
    adm = re.compile(r'^(!!!|\?\?\?\+?|\?\?\?)\s+(\S+)(?:\s+"([^"]*)")?\s*$')
    while i < len(lines):
        m = adm.match(lines[i])
        if not m:
            out.append(lines[i]); i += 1; continue
        title = m.group(3) or m.group(2).capitalize()
        i += 1
        body = []
        while i < len(lines) and (lines[i].strip() == "" or lines[i].startswith("    ")):
            body.append(lines[i][4:] if lines[i].startswith("    ") else "")
            i += 1
        while body and body[-1] == "": body.pop()
        if "pdf" in title.lower():      # website-only download notice
            continue
        out.append(f"> **{title}**")
        out.append(">")
        for b in body:
            out.append("> " + b if b else ">")
        out.append("")
    return "\n".join(out)

def rewrite_links(text, cur_relpath):
    """Rewrite inter-file .md links to internal #anchors; resolve image paths to docs-root-relative."""
    cur_dir = os.path.dirname(cur_relpath)

    def link_sub(m):
        label, target = m.group(1), m.group(2)
        path, _, _frag = target.partition("#")
        resolved = os.path.normpath(os.path.join(cur_dir, path))
        if resolved in KNOWN:
            return f"[{label}](#{KNOWN[resolved]})"
        return m.group(0)
    text = re.sub(r'\[([^\]]*)\]\(([^)]+?\.md(?:#[\w\-]+)?)\)', link_sub, text)

    def img_sub(m):
        label, target = m.group(1), m.group(2)
        if target.startswith(("http://", "https://", "/")):
            return m.group(0)
        resolved = os.path.normpath(os.path.join(cur_dir, target))
        return f"![{label}]({resolved})"
    text = re.sub(r'!\[([^\]]*)\]\(([^)]+)\)', img_sub, text)
    return text

def process_headings(text, anchor, numbered):
    """Attach anchors and (for non-risk files) unnumber headings.

    Risk chapters keep pandoc section numbers; their first heading gets the
    file's `{#anchor}` id for cross-file links.

    Everything else is unnumbered. pandoc renders unnumbered sections as
    `\\section*{...}` with NO hyperref anchor, so their ToC entries and any
    cross-links to them resolve to '#'. We fix that by emitting our own
    `\\phantomsection` (and, on the first heading, `\\label{anchor}`) as a raw
    LaTeX block right before each heading, then letting pandoc render the
    heading text itself (so markdown links inside a heading still work).
    ATX-lookalikes inside code fences are skipped.
    """
    out = []
    in_fence = False
    first = True
    for ln in text.split("\n"):
        stripped = ln.lstrip()
        if stripped.startswith("```") or stripped.startswith("~~~"):
            in_fence = not in_fence
            out.append(ln); continue
        m = None if in_fence else re.match(r'^(#{1,6})\s+(.*?)\s*$', ln)
        if not m:
            out.append(ln); continue
        hashes, title = m.group(1), m.group(2)
        if numbered:
            out.append(f"{hashes} {title} {{#{anchor}}}" if first else ln)
        else:
            label = f"\\label{{{anchor}}}" if first else ""
            out += ["", "```{=latex}", f"\\phantomsection{label}", "```", "",
                    f"{hashes} {title} {{.unnumbered}}"]
        first = False
    return "\n".join(out)

# pandoc drops raw HTML when writing LaTeX, so an <img> in the markdown renders
# on the website but is silently absent from the PDF.
RAW_HTML_IMG = re.compile(r"<img\b", re.I)

def render(rel):
    with open(os.path.join(DOCS, rel), encoding="utf-8") as f:
        t = f.read()
    t = strip_frontmatter(t)
    t = convert_admonitions(t)
    t = rewrite_links(t, rel)
    t = process_headings(t, KNOWN[rel], rel in RISK_FILES)
    if RAW_HTML_IMG.search(t):
        print(f"WARNING: {rel} embeds an image as raw HTML, which pandoc drops; "
              f"use ![alt](src)" + "{ width=50% } instead", file=sys.stderr)
        PROBLEMS.append(rel)
    return t.strip()

def part_heading(title):
    """Raw-LaTeX part divider (kept raw so it stays a \\part, not a section)."""
    return "```{=latex}\n\\part{%s}\n```" % title

PROBLEMS = []

def available(files):
    """Drop chapters that are not in this checkout, e.g. a page still living on
    another branch. Loud on stderr so a typo in PARTS does not pass unnoticed."""
    out = []
    for rel in files:
        if os.path.exists(os.path.join(DOCS, in_edition(rel))):
            out.append(in_edition(rel))
        else:
            print(f"WARNING: {in_edition(rel)} not found in {DOCS}, skipping",
                  file=sys.stderr)
            PROBLEMS.append(rel)
    return out

def unlisted_chapters():
    """Pages of this edition that PARTS does not mention (a page added to the
    nav but forgotten here would silently never reach the PDF)."""
    root = os.path.join(DOCS, "v", EDITION)
    found = set()
    for dirpath, _dirs, files in os.walk(root):
        for name in files:
            if name.endswith(".md"):
                rel = os.path.relpath(os.path.join(dirpath, name), root)
                found.add(rel.replace(os.sep, "/"))
    listed = {rel for _part, files in PARTS for rel in files}
    return sorted(found - listed - WEBSITE_ONLY)

for rel in unlisted_chapters():
    print(f"WARNING: v/{EDITION}/{rel} is not listed in PARTS, it will not be in "
          f"the PDF", file=sys.stderr)
    PROBLEMS.append(rel)

# One chunk per page break; a part heading opens the page of its first chapter.
chunks = [COLOPHON.format(edition=EDITION).strip()]
count = 0
for part, files in PARTS:
    files = available(files)
    if not files:
        continue
    chunks.append(part_heading(part) + "\n\n" + render(files[0]))
    chunks += [render(rel) for rel in files[1:]]
    count += len(files)

with open(OUT, "w", encoding="utf-8") as f:
    f.write("\n\n\\newpage\n\n".join(chunks) + "\n")
print(f"Assembled {count} of {len(ORDER)} files of the {EDITION} edition -> {OUT}")

if STRICT and PROBLEMS:
    sys.exit(f"--strict: {len(PROBLEMS)} page(s) of the {EDITION} edition are "
             f"missing or unlisted, see the warnings above")
