---
layout: post
title: "Harvest Field - A New Habari Theme"
tags: habari theme open-source-design harvest-field
published: true
permalink: harvest-field-a-new-habari-theme
date: 2007-11-09
---

<strong><em>Update:  New versions now available. See bottom of post for details.</em></strong>

<img src="http://miklb.com/user/images/HF_screen-shot.jpg" class="right" alt="">Wanting to work on <a href="/mzingi">mzingi</a>, I found myself a little unmotivated, so instead, I thought, maybe I can find an open source design to port to Habari, and that would get me motivated to look at the underlying code.  So off I went, googling, and browsing the many repositories of open source designs, looking for something I might want to use on a personal site, and would be a nice (albeit one of few currently) available themes for Habari.  I stumbled upon <a href="http://www.styleshout.com/">styleshout</a>, and their numerous, well done themes.  Ideally, I'd liked to have found one that hadn't been ported to other platforms, but <a href="http://www.styleshout.com/templates/preview/HarvestField1-0/index.html">Harvest Field</a> so caught my eye, I couldn't help but choose it.
<!--more-->
It just had enough fall feel to it, that I set about converting it to Habari.  I wasn't enamored with the semantics, and set about using the mzingi markup and code, tweaking for design specific features, which include having asides in the sidebar (tagging a post "asides" will leverage this feature.  The tag can be changed in theme.php), recent comments in the footer column, the user pic and about content you can add via admin/options and editing your user, as well as a new twist, the next 5 most recent posts in the third column.  The nifty part of this feature is that it leverages some Habari internals, and shows you the next five posts if you go backward in the page view, ie page/2 will show you the next 5 posts from page 3.  This is dynamic in the sense that if you are showing 10 posts per page, as set in your options, then it will show posts 11-15 in the footer.  (I will be documenting how this is accomplised in the <a href="http://wiki.habariproject.org/en/Main_Page">Habari Wiki</a> soon.  Special thanks to <a href="http://andrewdasilva.com/">Andrew da Silva</a> for the help on this feature).

Another feature is the dual colored Blog title in the header.  This is dynamic, in that it counts the number of characters in the title, and does a little math to split it up. You can change it manually by either editing the number it divides by in theme.php, remove it in header.php and use the default <code>Options::out('title')</code>, or manually add your title wrapping the section you want in light brown in span tags.  Special thanks to <a href="http://incoherentbabble.com/">Chris Meller</a> for his assistance on this "feature".

Future goals are to better style the pagination below the posts, any other suggestions are welcomed.

I had originally thought about adding a plugin hook in that column to pull a RSS feed, but I eventually thought twice about requiring an external plugin.  You certainly can edit footer.php to add any type of content you desire.  

As always, feedback is welcomed, and I look forward to providing more Habari themes.

<a href="http://miklb.com/user/downloads/Harvest_Field_0.2.zip">Download Harvest Field 0.2</a>

<strong>For users of trunk >r1574</strong>

<a href="http://miklb.com/user/downloads/Harvest_Field_0.3.1.zip">Download Harvest Field 0.3.1</a>



The original design was released with a Creative Commons license (I really need to blog about that), so I haven't really addressed a license, suffice to say, do with it want you want code wise, just respect the original author's wishes.
