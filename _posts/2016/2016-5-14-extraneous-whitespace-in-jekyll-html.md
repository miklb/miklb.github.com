---
layout: post
title: "Extraneous Whitespace in Jekyll HTML"
tags:
  - Jekyll
  - HTML
published: true
permalink: extraneous-whitespace-in-jekyll-html
date: 2016-5-14 21:3
summary: Found a little Jekyll plugin to cleanup whitespace to produce better source code without overhead in build.
---
One artifact of Jekyll that has bothered me is the [redundant blank lines](https://github.com/jekyll/jekyll/issues/1717) in the rendered HTML. In my case, I was seeing hundreds of blank lines creating the page navigation at the top of the page. It doesn't affect what the visitor sees, but for developers who use Jekyll poor source is a bad practice. Also imagine someone new to Jekyll and HTML in general trying to view source to debug an issue. Turns out the problem is with the Liquid template language Jekyll uses. Seems the Liquid community have been [discussing the issue](https://github.com/Shopify/liquid/issues/216) for 3 years without a solution.

My first approach to solving this was to use a Ruby gem [HTML Beautifier](https://github.com/threedaymonk/htmlbeautifier). It works great, but for a site like mine with over 500 posts with a lot of tag pages, it increases the build time exponentially. To the point I've seen Travis time out due to the long process. Today I went looking for another solution and stumbled upon this [gist - remove empty lines](https://gist.github.com/kerotaa/5788650). It concerned me the plugin would increase the build time in Jekyll vs in Travis, but was pleasantly surprised it added no noticeable overhead and produces much cleaner HTML output.

Now I get quick build times and cleaner source.

<a href="https://brid.gy/publish/twitter"></a>
