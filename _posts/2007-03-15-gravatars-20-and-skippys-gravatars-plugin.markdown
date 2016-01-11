---
layout: post
title: "Gravatars 2.0 and Skippy's Gravatars Plugin"
tags: my-site geek-life gravatars skippy plugin wordpress-1
published: true
permalink: gravatars-20-and-skippys-gravatars-plugin
date: 2007-03-15
---

I had heard that <a href="http://site.gravatar.com">Gravatar 2.0</a> had been released, but hadn't really paid much attention.  Today, while doing a little housekeeping around the site, I noticed that none of my gravatars were showing up.  After doing a little investigating, I realized it had to do with caching, among other things.  First thing I did was dump the cache on my gravatars folder in wp-content.  Second, I logged into the gravatar site, and re-associated my gravatar with my email that I use for that account.  Still no gravatars, mine, or anyone else's.

So I looked at the settings on Skippy's gravatar plugin (which I like as I can set a local gravatar, vs using a default one from the original site), it was set to use caching.  I turned that setting off, and voilá, gravatars are showing back up.  Hopefully that could help someone else (though, from reading a few blogs, and the comments on the main site, there's no guarantees the main site will be with fail).
