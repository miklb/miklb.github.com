---
layout: post
title: "Consolidating, Focusing, and Rookie Mistakes"
tags: habari my-site import migration wordpress-1
published: true
permalink: consolidating-focusing-and-rookie-mistakes
date: 2008-12-06
---

As my online endeavors grow, I find myself with different sites floating around, doing nothing, as I have so many ideas for each site, I wind up not posting to any of them.  I originally started Blogging Meta because I thought I wanted to have a personal site, and a site that I could focus on tech related blogging.  Well, as I've said, neither came to fruition, and I've found myself lately feeling as if I had some dual personality that were just spinning their wheels.

So tonight I decided to merge the two sites, and really try to gain some focus.  I still have my cooking site, which I still intend to further focus on, but hopefully by committing to using this site again for everything not cooking related, I just might be able to accomplish both.

The rookie mistakes came from the fact that since Habari doesn't have an importer in place yet to import one Habari install into another, I was faced with the only option of deleting the existing database, which was basically an import from the original WordPress installation, then dumping the bloggingmeta database, doing a quick search and replace for urls, importing that file directly into the database, then re-importing the old wordpress database using the importer plugin.  What I failed to do was check what was active in the plugins.  I already had the twitter plugin installed, so I'm guessing that it kept the settings from the old site, thus upon import, all the new posts were twittered.  Complete…rookie…mistake.  Couple with that that I also left the pingback plugin active, it tried to ping all the posts while importing.  Another party foul.  So not only did I spam Twitter, my import royally failed, so I was faced with doing the whole process over again, albeit this time I deactivated the offending plugins, and the import went off mostly without a hitch.  I might have lost a few old posts and/or comments, but all in all, I'm pleased with the outcome considering I'm doing this at 2 a.m. in the morning, and my focus might not be what it should be.  I wish I could write it off as having had a few adult beverages, but alas, I would be lying.

Over the next few days I will be doing some tweaking here and there, and shutting down the other site (and doing a 301 redirect).  I really like the typography of Ali's <a href="http://www.awhitebox.com/dark-autumn-a-new-habari-theme">theme</a>, so I most likely will try to find the custom image I had made for the bottom, and trick out a few plugins.  At least for now.
