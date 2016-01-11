---
layout: post
title: "Habari Theme: thePrestige"
tags: habari theme hiengine theprestige jquery tooltips
published: true
permalink: habari-theme-theprestige
date: 2009-05-31
---

<img src="http://miklb.com/user/files/thePrestige_screenshot.jpg" class="right" alt="Habari theme- thePrestige">
<strong><em>This is just a quick and dirty post announcing the release. I hope to publish a more detailed post on the Habari blog detailing more about the the theme and it's use of HiEngine.</em></strong>
It's been a long time in coming, but I'm happy to report that I've finally released a new theme, thePrestige.  Built entirely with Habari's <a href="http://wiki.habariproject.org/en/HiEngine">HiEngine</a> theme engine, the first publicly released (at least to my knowledge.)  Many thanks to <a href="http://www.cockrumpublishing.com/">Rick Cockrum</a> for doing the heavy lifting on the Hiengine code.

Consider this a <em>"beta"</em> release, as there probably are a few bugs/quirks that need to be worked out, but for all intents and purposes, it's fully functional.  Any bug reports or feature requests should be logged at the <a href="http://trac.habariproject.org/habari-extras">Habari Extra's</a> trac installation.  Patches certainly welcome!

The theme also features a contact form completely built with Habari's formUI, as well as uses the jquery <a href="http://bassistance.de/jquery-plugins/jquery-plugin-tooltip/">tooltip plugin.</a>.

One "feature" that I intend to finish up is post author comment highlighting.  That is, styling the post author's comments differently than the rest of the comments on a post.  The code is in place, just needs some CSS love.  Again, patches welcome!

The theme has only been tested on the latest 0.7 build of trunk, I will work on making a version that works with 0.6.2.  Again, assistance welcome on this task.  I think the only glaring issue right now would be the use of the jquery tooltip for the comment form.

<a href="http://www.habariproject.org/dist/themes/thePrestige.zip">Download the theme</a> from Habari Extras.

Or you can check it out from the repo at http://svn.habariproject.org/extras/themes/thePrestige/trunk/.
