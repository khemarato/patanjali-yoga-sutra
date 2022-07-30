---
layout: default
title: The Yoga Sūtra
nav_order: 1
description: "A new translation of the Sanskrit classic."
permalink: /
---

The following is a new, Buddhist translation of the Yoga Sūtra(s) of Patañjali, prepared by Khemarato Bhikkhu, 2022.

## Chapters

{% for c in site.chapters %}
- [Chapter {{ c.slug }}: {{ c.name }}]({{ c.url | relative_url }}){% endfor %}

## Downloads

You can download a PDF of the translation [here]({{ "YogaSutra.pdf" | relative_url }})
