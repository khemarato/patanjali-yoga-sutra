---
layout: default
title: The Yoga Sūtra
nav_order: 1
description: "A new translation of the classic of Sanskrit literature."
permalink: /
---

The following is a new, Buddhist translation of the Yoga Sūtra(s) of Patañjali, prepared by Khemarato Bhikkhu, 2022.

## Chapters

{% for c in site.chapters %}
- [Chapter {{ c.slug }}: {{ c.title }}]({{ c.url | relative_url }}){% endfor %}
