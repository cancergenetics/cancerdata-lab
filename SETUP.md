# First-time setup

This repo is fully populated and ready to publish. Follow these steps once.

## 1. Create the GitHub repo and push

Create the **empty public** repo [`cancergenetics/cancerdata-lab`](https://github.com/new)
on GitHub — do **not** initialise it with a README, .gitignore, or license. Then,
from this folder:

```bash
git push -u origin main
```

(This folder already has a git repo with commits and the `origin` remote set to
`https://github.com/cancergenetics/cancerdata-lab.git`.)

## 2. Enable GitHub Pages

Repo **Settings → Pages**:
- **Source:** *Deploy from a branch*
- **Branch:** `gh-pages` / `root`

The `gh-pages` branch is created automatically by the first successful build
(next step), so if it isn't listed yet, come back after step 3.

## 3. Trigger the first real build

By design, the template **skips the build on the very first push**. To run it:

- Go to the **Actions** tab → **on-push** workflow → **Run workflow** (on `main`).
  *(Or just push any second commit.)*

This runs two jobs: **update-citations** (Manubot fetches all ~47 papers from
their DOIs into `_data/citations.yaml`) and **build-site** (deploys to
`gh-pages`). It takes a few minutes. When it finishes, your site is live at:

```
https://cancergenetics.github.io/cancerdata-lab/

```

Check the **Actions** tab is green, and confirm the Publications page lists all
papers and team photos load.

> **Do NOT run the `first-time-setup` workflow.** It overwrites the site title,
> description, and homepage with generic placeholders. This repo is already
> personalised.

## 4. Custom domain — `cancerdata.ucd.ie`

Two paths, depending on what UCD IT will do (see the plan's open item).

### A. Fully automated (recommended) — point DNS at GitHub Pages

1. Ask UCD IT to add a **DNS CNAME record**: `cancerdata.ucd.ie` →
   `cancergenetics.github.io`. *(If they require it on an apex/root name they'll
   use GitHub's four A records instead — see
   <https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site>.)*
2. Once DNS resolves, in **Settings → Pages → Custom domain** enter
   `cancerdata.ucd.ie`, save, and tick **Enforce HTTPS**.
   (This adds a `CNAME` file to the repo automatically.)

After this, every push republishes `https://cancerdata.ucd.ie` — **you never
upload a snapshot again.**

> Add the custom domain **only after** DNS is pointed. Setting it earlier makes
> Pages stop serving the `github.io` URL, blocking your preview.

### B. Fallback — keep uploading a snapshot, but build in the cloud

If IT won't change DNS, you still lose the local toolchain:

1. Let the **build-site** Action run (as in step 3).
2. Download the built site: either grab the `_site` from the build artifact, or
   just download the `gh-pages` branch as a ZIP
   (`Code → Download ZIP` on the `gh-pages` branch).
3. Upload those static files to the UCD server at `cancerdata.ucd.ie`, exactly
   as you do today.

The only manual step left is the upload — nothing compiles on your machine.

## Notes

- **Publications are curated by DOI** in `_data/sources.yaml`. ORCID auto-import
  is intentionally disabled (`_data/orcid.yaml` is empty) so the list stays
  exactly what you choose.
- The old Hugo repo (`cancergenetics/UCD_cancer_data_lab`) can be archived after
  cutover.
