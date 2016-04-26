---
layout: post
title: "First Thoughts: Holy Grail of Blogging from iOS with Jekyll"
tags: blogging Jekyll Github Dropbox Zappier
published: true
permalink: first-thoughts-holy-grail-of-blogging-from-ios-with-jekyll
date: 2015-05-04
---

I have been researching and thinking seriously about moving away from database driven blog engines to *static file* blogging for quite awhile. My extensive research has me convinced for my ideal workflow, [Jekyll](http://jekyllrb.com) will be the answer—except for my goal to somewhat easily blog from my phone. All of the [front matter](http://jekyllrb.com/docs/frontmatter/) could be handled by TextExpander snippets or custom keyboard shortcuts in Drafts or Editorial. The issue has been that with an iOS device, you are basically confined to using Dropbox or iCloud for the text/markdown files. Wanting to keep everything in a Git repo under version control, I hadn't found a way to automagically push a Dropbox file to a Git repo without having an always on machine at home using some listening app like [Hazel](http://jekyllrb.com/docs/frontmatter/) to do this. While that isn't out of the question, I want something **straight from the device**.

Extensive Googling finally led me to Zappier. Similar to IFTTT, they have a [Github/Dropbox workflow](https://zapier.com/zapbook/dropbox/github/) that allows you to send a pull request to Github when a new file is added to a directory in Dropbox. And while if I was simply using Github pages to host a Jekyll site, that would be the end to a simple solution.

However, I still want to host my own data on my own VPS (more on that later). Enter [Jekyll Hook](https://github.com/developmentseed/jekyll-hook), which, while not seemingly for the faint of heart, allows one to run their own "Github Pages" on their own server.

So, while all untested at this point, on paper it seems I can have a dedicated Dropbox folder synced with an iOS editor that when a markdown file is saved to it, Zapier will attempt to send a pull request and merge it to a Github hosted repo of my blog [footnote, possibly need to have iOS app to approve pull request but option is in the *recipe* for the workflow. I assume it will work save for any previous files by same name causing a merge conflict]. From that, the Jekyll Hook script/solution will fire and rebuild the the site, all without leaving the convenience of my iOS device.

Potential magic I tell you.
