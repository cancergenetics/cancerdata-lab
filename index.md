---
---

{% capture hero_text %}

The UCD Cancer Data Lab, led by [Dr. Colm J. Ryan]({{ 'team' | relative_url }}), uses large-scale data analysis to understand how genetic variation in cancer alters molecular interaction networks, and to identify ways to target these alterations therapeutically.

We are based in the [Conway Institute](https://www.ucd.ie/conway/) and the [School of Medicine](https://www.ucd.ie/medicine/) at University College Dublin, with members also affiliated with [Systems Biology Ireland](https://www.ucd.ie/sbi/) and the [SFI Centre for Research Training in Genomics Data Science](https://genomicsdatascience.ie).

{% include button.html text="Research Overview" link="research" icon="fa-solid fa-microscope" %}
{% include button.html text="Join the lab" link="join" icon="fa-solid fa-user-plus" %}

{% endcapture %}

{% capture hero_logo %}

{% include figure.html image="images/logo-wordmark.png" %}

{% endcapture %}

{% include cols.html col1=hero_text col2=hero_logo %}

{% include section.html %}

## {% include icon.html icon="fa-solid fa-newspaper" %}Recent news

<div class="home-news" markdown="0">
  {%- assign recent = site.posts | slice: 0, 3 -%}
  {%- for post in recent -%}
    {% include post-excerpt.html lookup=post.slug %}
  {%- endfor -%}
</div>

{%
  include button.html
  text="All news"
  link="news"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}
