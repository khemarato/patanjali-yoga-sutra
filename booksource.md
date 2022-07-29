---
layout: book
permalink: booksource.md
---

# The Yoga Sutra of Patanjali

A new translation by Khemarato Bhikkhu.

Copyright 2022

{% for c in site.chapters %}

## Chapter {{ c.slug }}: {{ c.title }}

{{ c.content }}

{% assign ch = site.aphorisms | where: "chapter", c.slug | sort: "slug" %}
{% for l in ch %}
{{ l.verse }}: _{{ l.root_text }}_  
{{ l.translation }}
{% endfor %}

{% endfor %}

