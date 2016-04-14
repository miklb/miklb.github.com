---
layout: post
title: "Text Expander snippet for Jekyll With Slug for Permalink"
tags:
 - Jekyll
 - TextExpander
  - javascript
published: true
permalink: text-expander-snippet-for-jekyll-with-slug-for-permalink
date: 2016-2-6
summary: Wrote a @TextExpander snippet for @jekyllrb that generates Front Matter from Title, including a slugified permalink https://gist.github.com/miklb/53a93032fb8cc669b1fa
---

There are plenty of TextExpander snippets floating around for creating Jekyll Front Matter, however, I wanted to take it a step further, and auto-create a slugified permalink with no additional work. The other part of the equation was that I wanted it to be able to use it on TE touch, which meant it had to be done in javascript. After a little Googling, some trial and error, I came up with one that takes a text input for the post title, generates a slug from that, and includes the current date. I understand that the date in the file can be used, however I may not always publish when the file was initially created. Not to mention, when I imported all of my posts from Habari, I needed to be able to use the original post date, not the date the file was created, so I continue to use that. You can certainly modify the snippet for your needs.

Also note, I have a blank variable for *summary*. Since I'm using webmentions, I use the summary as the text for a tweet, which would be different than an excerpt. Some of this may change when I redo the site redesign, but for now, it's how I roll.

I would love feedback on how to make the snippet better as it's my first javascript snippet. Just leave a comment on the gist.

{% gist miklb/53a93032fb8cc669b1fa %}

<a href="https://brid.gy/publish/twitter"></a>
