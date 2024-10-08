# Project Setup notes

My plan is to write down everything that I had to do during project setup, so that other projects might be able to re-use this. Most of this is based upon the awesome information and feedback given by Carlos and Sven (of the OWASP MAS project).

All errors are mine, I am proud to keep them.

## Basic Assumptions

- all documentation will be in markdown files within `/docs/`
- we will not do manual versioning (`v1`, `v2`, `v3`) but will use git tags and github releases for this.
- the project website will be generated from the markdown files using [mkdocs using the material theme](https://squidfunk.github.io/mkdocs-material)
- the site will be hosted at <projectname>.owasp.org

### Feature Wishlist

- generate a PDf or old releases and store it on github releases too

## Initial Basic Setup

The initial setup is mostly based upon [How To Create STUNNING Code Documentation With MkDocs Material Theme](https://www.youtube.com/watch?v=Q-YA_dA8C20).

From within the github project repository:

~~~ bash
# setup python virtual environment and install mkdcos
$ python -m venv venv
$ source venv/bin/activate
$ pip install mkdocs-material
~~~

Enable mkdocs by executing `mkdocs new .` and enable basic theming by editing `mkdocs.yml` to contain:

~~~yaml
site_name: OWASP Operational Technology (OT) Top 10
theme:
  name: material
~~~

Now add some additional features in the `mkdocs.yml` file (you should be able to reuse this but please remember to adopt `site_name` and `copyright notice`):

~~~ yaml
site_name: OWASP Operational Technology (OT) Top 11
site_url: https://top10proactive.owasp.org
repo_url: https://github.com/OWASP/www-project-proactive-controls/
theme:
  name: material
  features:
    - navigation.tabs
    - navigation.sections
    - toc.integrate
    - navigation.top
    - search.suggest
    - search.highlight
    - content.tabs.link
    - content.code.annotation
    - content.code.copy
  language: en
  palette:
    - scheme: default
      toggle:
        icon: material/toggle-switch-off-outline
        name: Switch to dark mode
      primary: teal
      accent: purple
    - scheme: slate
      toggle:
        icon: material/toggle-switch
        name: Switch to light mode
      primary: teal
      accent: lime

extra:
  social:
    - icon: fontawesome/brands/github-alt
      link: https://github.com/OWASP/www-project-operational-technology-top-10

copyright: |
  <div style="float: left; padding-right: 1em;">
    <a href="https://www.owasp.org"><img src="https://github.com/OWASP/owasp-mastg/blob/master/Document/Images/OWASP_logo_white.png?raw=true" width="100px" /></a>
  </div>
  <span style="font-size: smaller">
    &#169; OWASP Foundation 2024. This work is licensed under 
    <a href="https://creativecommons.org/licenses/by/4.0">CC-BY-4.0</a>. For any reuse or distribution, you must make clear to others the license terms of this work.
  </span><br><span style="font-size: smaller">OWASP &#174; is a registered trademark of the OWASP Foundation, Inc.</span> <span>This website uses cookies to analyze our traffic and only share that information with our analytics partners. <a href="https://github.com/OWASP/owasp-mastg/blob/master/about_cookies.md">Learn more</a>.</span>
~~~

`site_url` is important as it will generate a `/sitemap.xml` which is used by search engines!

I haven't included all the markdown extensions for code editing and stuff.

To view it locally:

~~~ bash
$ mkdocs serve
~~~

## Initial basic github action (TODO)

This is currently not working, maybe some bad interaction with the existing OWASP tooling.

`.github/workflows/deploy.yml`:

~~~yaml
name: Build Github Pages
on:
  push:
    branches:
      - main
permissions:
  contents: write
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: actions/setup-python@v5
        with:
          python-version: 3.x
      - uses: actions/cache@v2
        with:
          key: ${{ github.ref }}
          path: .cache
      - name: Install Dependencies
        run: pip install mkdocs-material
      - run: mkdocs gh-deploy --force --clean
~~~

Go to your github repository and go towards `settings -> github pages` and set the `Branch` within the section `Build and Deployment` to `gh-pages`. Configure your domain name as `custom url`

You will need to create a new file `docs/CNAME` containing your domain name (e.g., `ot.owasp.org`). Otherwise, the [custom domain name will be overwritten every time the site is auto-deployed](https://github.com/tschaub/gh-pages/issues/213)

## Generate PDF (for archive and stuff, TBD)

- uses `pandoc`

## Analytics

There seems to be no global OWASP analytics account. Typically projects use their own setup (e.g., google analytics setup with the @owasp.org email account):

setup instructions can be found here: https://squidfunk.github.io/mkdocs-material/setup/setting-up-site-analytics/

## Donations

Example from mas.owasp.org: We have a donation page [https://mas.owasp.org/donate/](https://mas.owasp.org/donate/) this has donation packages that companies can select and then they can donate through the OWASP donation page [https://owasp.org/donate/](https://owasp.org/donate/). Either an amount they choose or according to the donation package and then they get the benefits of them.

GitHub sponsors: you can configure it to link to your donations page, and in there have the description on how to donate to your project via OWASP. You're only allowed to *receive* money that way now

## Translations

- this is problematic, translations need to be updated and quality-checked
- for example, MASVS stopped providing translations themselves: https://mas.owasp.org/contributing/4_Add_new_Language/#masvs-translations

## Custom 404 (page not found) page

- e.g., when you're switchting from another wiki engine and links are not working
- so that you can give helpful hints to users

add the following to your `mkdocs.yaml`

```yaml
theme:
  name: material
  custom_dir: overrides
  static_templates:
    - 404.html
```

create a directory `overrides` and add a file `404.html` within it. You can use the following as template

```html
{% extends "main.html" %} 

<!-- Content --> 
{% block content %} 
  <h1>404 - Page not found!</h1> 

  <!-- add your help text here -->
{% endblock %} 
```

## Adding simple outgoing link-checking and a markdown linter

Configure a new github action, e.g., `.github/workflows/ci.yaml` with:

```yaml
name: CI pipeline
on:
  push:
    branches:
      - main
      - master
  workflow_dispatch:

# for security reasons the github actions are pinned to specific release versions
jobs:
  link_checker:
    name: Link checker
    runs-on: ubuntu-24.04
    steps:
      - name: Checkout markdown
        uses: actions/checkout@v4.1.1

      - name: Link Checker
        uses: lycheeverse/lychee-action@v1.10.0
        with:
          args: --no-progress --max-retries 5 './docs/**/*.md'
          fail: true
        env:
          GITHUB_TOKEN: ${{secrets.GITHUB_TOKEN}}

  md_linter:
    name: Lint markdown
    runs-on: ubuntu-24.04
    steps:
      - name: Checkout markdown
        uses: actions/checkout@v4.1.1

      - name: Lint markdown
        uses: DavidAnson/markdownlint-cli2-action@v16.0.0
        with:
          config: '.markdownlint.yaml'
          globs: './docs/**/*.md'
```

And add a configuration file for markdown linting  in `.markdownlint.yaml`:

```yaml
---
no-trailing-punctuation: false
no-inline-html: false
first-line-heading: false
link-fragments: false

# MD013 - Line length
MD013:
  code_block_line_length: 125
  code_blocks: true
  heading_line_length: 100
  #heading_line_length: 80
  headings: true
  # line_length: 125
  line_length: 1024
  stern: true
  strict: false
  tables: true
```
