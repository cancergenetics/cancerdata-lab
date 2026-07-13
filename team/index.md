---
title: Team
nav:
  order: 3
  tooltip: The people in the lab
---

# {% include icon.html icon="fa-solid fa-users" %}Team

We are a supportive and collaborative interdisciplinary research group based in the [Conway Institute](https://www.ucd.ie/conway/) and the [School of Medicine](https://www.ucd.ie/medicine/) at University College Dublin. Several lab members are also affiliated with [Systems Biology Ireland](https://www.ucd.ie/sbi/) and the [SFI Centre for Research Training in Genomics Data Science](https://genomicsdatascience.ie).

{% include section.html %}

{% include list.html data="members" component="portrait" filter="role == 'principal-investigator'" %}

{% include list.html data="members" component="portrait" filter="role != 'principal-investigator' && group != 'alumni'" %}

{% include section.html %}

## Alumni

{% include list.html data="members" component="portrait" filter="group == 'alumni'" style="small" %}
