---
title: Research
nav:
  order: 1
  tooltip: What we work on
---

# {% include icon.html icon="fa-solid fa-microscope" %}Research

The UCD Cancer Data Lab develops computational approaches to understand how mutations in cancer alter molecular interaction networks, and to identify ways to target these alterations therapeutically. Our work spans three connected themes.

{% include section.html %}

{% capture text %}

Synthetic lethal interactions are identified when two genes can be perturbed individually with little or no fitness consequence, but their combined perturbation results in cell death. In cancer, synthetic lethal interactions can be exploited to develop targeted therapeutics — targeting a synthetic lethal partner of a tumour suppressor gene can selectively kill tumour cells without harming healthy cells. The first therapies based on synthetic lethality are now used in the clinic, and large-scale experimental efforts are underway to identify new interactions. A major challenge is that synthetic lethal interactions [appear to be highly context specific](https://doi.org/10.1016/j.trecan.2018.08.003) — an interaction may hold only in a specific cell line or cancer type. We have [previously](https://doi.org/10.7554/eLife.58925) [developed](https://doi.org/10.1016/j.cels.2021.08.006) computational approaches to identify robust synthetic lethal interactions that operate across multiple contexts, and we build machine-learning models to predict in which contexts a given gene pair is likely to be synthetic lethal.

{% endcapture %}

{%
  include feature.html
  image="images/research/SyntheticLethality.png"
  title="Synthetic lethality in cancer"
  text=text
%}

{% capture text %}

Tumour cells tolerate enormous numbers of genetic perturbations, including loss-of-function mutations and homozygous deletions of entire protein-coding genes, yet continue to function and thrive. This ability to tolerate genetic perturbation is called genetic robustness. In model organisms, paralogs (duplicate genes) are crucial to genetic robustness: because they derive from the same ancestral gene, paralogs often share sequence and functional similarity and can compensate for each other's loss, allowing one member of a pair to be mutated or deleted with little fitness consequence. We study how these compensatory relationships shape tumour genome evolution, how they impact the vulnerabilities of cancer cell lines, and how they facilitate the rewiring of molecular interaction networks in cancer. There is a direct connection to our synthetic lethality work — compensation between paralogs is often revealed by synthetic lethal interactions.

{% endcapture %}

{%
  include feature.html
  image="images/research/Paralogs.png"
  title="Paralogs and the genetic robustness of tumours"
  flip=true
  text=text
%}

{% capture text %}

Genes, and their protein products, work in dense interconnected networks. As a consequence, the mutation of one gene in cancer often propagates through molecular interaction networks. For instance, mutating one member of a protein complex can alter the protein abundance of the [entire complex](https://doi.org/10.1016/j.cels.2017.09.011), and mutating a transcription factor can alter the expression of many of its targets. We develop integrative approaches to model and predict these downstream effects of mutations in cancer.

{% endcapture %}

{%
  include feature.html
  image="images/research/NetworkEffects.png"
  title="Network rewiring in response to genetic perturbation"
  text=text
%}

{% include section.html %}

Browse our [publications]({{ "publications" | relative_url }}) to read more.
