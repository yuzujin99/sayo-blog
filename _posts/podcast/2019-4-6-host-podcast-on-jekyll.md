---
layout: post-podcast
categories: podcast
tags: [podcast, blog]
title: host podcast on jekyll (在 jekyll 上托管播客)
author: sayo melu
season: 1
episode: 1
episodeType: full
explicit: false
block:
audio: https://raw.githubusercontent.com/sayo-melu/sayo-cast/master/asset/1-1%20host%20podcast%20on%20jekyll%20(在%20jekyll%20上托管播客).m4a
length: 280
comment: true
---

<p>
  {% if page.season %}第 {{ page.season }} 季, {% endif %}{% if page.episode %}第 {{ page.episode }} 集{% endif %}
  &nbsp;
  <a href='/podcast'>订阅播客</a>
</p>
<audio controls preload='auto' style='width: 100%;'>
  <source src='{{ page.audio }}'>
</audio>

feel free to host audio podcast with [jekyll-podcast](https://github.com/sayo-melu/jekyll-podcast) on jekyll.

## why do i build jekyll-podcast

uploading podcasts is not as easy as uploading videos, you have to own or borrow a web server to host your content.

there are a lot of platforms for people to upload podcasts, but some of them spend your money, some of them cannot be configured to your requirement.

although there are also some podcast holding solutions for jekyll, they are difficult to use. and they don't have a solution to generate web pages for your podcast.

to solve these problems, i build this configurable jekyll-podcast. you can host it on [github](http://github.com) for free, so you can buy you a better 🎙 microphone.

## how to use

check [jekyll-podcast](https://github.com/sayo-melu/jekyll-podcast).

## sample

my [podcast](https://sayo-melu.github.io/podcast.xml) on my [blog](http://sayo-melu.github.io) hosted on github.

## reference

- [A podcaster’s guide to RSS](https://help.apple.com/itc/podcasts_connect/#/itcb54353390)
- [RSS feed sample](https://help.apple.com/itc/podcasts_connect/#/itcbaf351599)
- [Podcast](https://developers.google.com/search/docs/data-types/podcast)
- [Apple Podcasts categories](https://help.apple.com/itc/podcasts_connect/#/itc9267a2f12)

## host

- sayo melu: [sayo-melu.xyz](https://sayo-melu.xyz)

## contact

- blog + podcast: [{{ site.url }}]({{ site.url }})
- webpage + comment: [{{ page.url | absolute_url }}]({{ page.url }})
- email: [{{ site.podcast.email }}](mailto:{{ site.podcast.email }})
