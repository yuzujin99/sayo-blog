---
layout: post
title: podcast
permalink: /podcast
---

{{site.podcast.description}}

订阅链接:
[apple 播客](https://podcasts.apple.com/cn/podcast/id1459044150) |
[castro](https://castro.fm/podcast/88ae5f81-7674-4f77-a0c2-0e9e81a5c802) |
[overcast](https://overcast.fm/itunes1459044150/sayo-cast) |
[pocket cast](https://pca.st/HiSjnP) |
[rss]({{'/podcast.xml' | absolute_url}})

## 播客单集

{% for post in site.categories.podcast %}
<div>
  <h3><a href='{{ post.url }}'>{{post.episode}}. {{ post.title }}</a></h3>
  {{ post.excerpt }}
</div>
<hr>
{% endfor %}
