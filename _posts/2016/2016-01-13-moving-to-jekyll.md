---
layout: post
title: "Making the Move to Jekyll"
tags: blogging Jekyll Habari
published: true
permalink: making-the-move-to-jekyll
date: 2016-01-13
---

I've officially made the change from Habari to Jekyll. I will certainly have more to share on the move, both a post-mortem on Habari, as well as the process I'm using currently for using Jekyll.

My basic workflow currently is serving the page from GitHub pages, however I'm using Travis CI to build the site and  publish to master branch[^1] , there by bypassing the restrictions of gh-pages (specifically, their need for using --safe mode and not up-to-date version of Jekyll). Currently my use case would probably work within their parameters, however I had already started using 3.x and at the time of writing GitHub is using 2.x.

More importantly to me, I want to be able to blog from my phone. It something that I feel has limited me in sharing interesting items I come across as well as stopping me from making time to put thoughts down as they come. I had originally wrote up [some thoughts on using iOS and Jekyll](http://miklb.com/first-thoughts-holy-grail-of-blogging-from-ios-with-jekyll), but later came across a better workflow[^2].

Finally, there are still some wonkiness around, I'm sure my Atom feed is broken and am not sure how to redirect that yet using GitHub. I doubt I had many subscribers, so if you stumble on this and previously read my random posts, you may need to update while I investigate options. Certainly there are some styling issues that I want to address as well as some under the hood improvements.

[^1]: This [tutorial](http://eshepelyuk.github.io/2014/10/28/automate-github-pages-travisci.html) was an invaluable starting point. A [follow up tutorial from the comments](http://mlota.github.io/2015/11/23/automating-deployment-github-pages-jekyll-travis.html) has great information as well.
[^2]:Since I already own Drafts, Workflow and Working Copy [integrating all 3](http://www.matteocappadonna.org/Posting-with-Drafts,-Working-Copy-and-Workflow) makes sense.
