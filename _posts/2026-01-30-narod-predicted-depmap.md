---
title: "Narod's preprint on a predicted cancer dependency map for paralog pairs"
date: 2026-01-30
image: images/NarodWorkflow.jpg
image_alt: "The prediction framework: labelled synthetic-lethal and non-synthetic-lethal paralog pairs are described using paralog features (expression, essentiality) and network features (protein–protein interactions and Gene Ontology), then scored by a context-specific random forest and evaluated with ROC and precision–recall curves."
author: colm
---

Congrats to Narod on her new preprint, A predicted cancer dependency map for paralog pairs, now up on [bioRxiv](https://www.biorxiv.org/content/10.64898/2026.01.19.700065v1).

The Cancer Dependency Map (DepMap) has been an incredible resource for identifying cancer vulnerabilities, but because it is built from single-gene CRISPR knockout screens it systematically misses vulnerabilities that involve paralogs. Around 70% of human genes have a paralog, and when one gene is knocked out its paralog can often compensate for its loss – masking any dependency in a single-gene screen. Identifying these paralog dependencies experimentally requires combinatorial screens, which remain expensive and have so far only been applied to a limited number of gene pairs and cell lines.

In this work Narod developed a machine-learning framework that predicts pairwise paralog dependencies directly from the existing single-gene DepMap screens. By integrating features such as gene expression, essentiality, and protein interaction network context, the model generates a genome-scale predicted dependency map spanning 1,005 cancer cell lines. This makes it possible to prioritise synthetic lethal paralog pairs that are specific to particular cancer contexts – for example vulnerabilities enriched in HER2-amplified breast cancer – highlighting candidate targets for experimental follow-up.

You can read the full preprint on [bioRxiv](https://www.biorxiv.org/content/10.64898/2026.01.19.700065v1), and the complete set of predictions is available on [figshare](https://doi.org/10.6084/m9.figshare.31058182). This work was supported by Research Ireland.
