# Project Setup notes

My plan is to write down everything that I had to do during project setup, so that other projects might be able to re-use this. Most of this is based upon the awesome information and feedback given by Carlos and Sven (of the OWASP MAS project).

All errors are mine, I am proud to keep them.

## Basic Assumptions

- all documentation will be in markdown files within `/docs/`
- we will not do manual versioning (`v1`, `v2`, `v3`) but will use git tags and github releases for this.
- the project website will be generated from the markdown files using [mkdocs using the material theme](https://squidfunk.github.io/mkdocs-material)

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

Go to your github repository and go towards `settings -> github pages` and set the `Branch` within the section `Build and Deployment` to `gh-pages`.