Visit **[cancergenetics.github.io/cancerdata-lab](https://cancergenetics.github.io/cancerdata-lab)** 🚀

# UCD Cancer Data Lab — website

Website for the [UCD Cancer Data Lab](https://cancerdata.ucd.ie), built with the
[Greene Lab Website Template](https://github.com/greenelab/lab-website-template)
(Jekyll). **The site builds entirely on GitHub — you never need to install or run
anything locally.** Edit a file on GitHub (or push a change), and GitHub Actions
rebuilds and redeploys the site.

## Everyday edits

**Add a publication** — add one line to [`_data/sources.yaml`](_data/sources.yaml)
(newest at the top):

```yaml
- id: doi:10.1038/s41588-023-01557-x
```

That's it. A GitHub Action fetches the title, authors, journal, and date
automatically (via Manubot) and rebuilds the site. Most identifiers work:
`doi:…`, `pmid:…`, `arxiv:…`, `isbn:…`, `url:…`.

**Add / edit a team member** — copy an existing file in
[`_members/`](_members/) (e.g. `_members/anjan.md`), change the front-matter,
write the bio below the `---`, and drop a photo in `images/members/<slug>.jpg`.
- `role:` is one of `principal-investigator`, `postdoc`, `phd`, `undergrad`.
- Add `group: alumni` to move someone into the Alumni section.
- `aliases:` lists the name variants used in their papers, so their name is
  **bold** in publication author lists.

**Add a news post** — create `_posts/YYYY-MM-DD-short-title.md`:

```markdown
---
title: "A short headline"
date: 2025-03-01
image: images/news/my-image.jpg   # optional
author: colm                        # a member slug
---

The first paragraph becomes the excerpt on the News page.
```

**Edit a page** — the pages live in `research/`, `publications/`, `team/`,
`news/`, `join/`, `contact/`, and the homepage `index.md`.

## How it deploys

- Every push to `main` triggers **`on-push`** → updates citations → builds the
  site → deploys the built `_site` to the `gh-pages` branch, which GitHub Pages
  serves.
- Citations also refresh on a schedule (`on-schedule`).
- **Do not run the `first-time-setup` workflow** — it resets the site to generic
  placeholders. Everything is already set up.

See [`SETUP.md`](SETUP.md) for first-time repo/hosting setup and the
`cancerdata.ucd.ie` domain.

_Based on the [Lab Website Template](https://greene-lab.gitbook.io/lab-website-template-docs) by the Greene Lab (BSD-3-Clause)._
