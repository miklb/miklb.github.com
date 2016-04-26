---
layout: post
title: "Habari Theme: Swanky 0.5beta Released"
tags: habari theme swanky
published: true
permalink: habari-theme-swanky-05beta-released
date: 2009-02-28
---

<img src="http://miklb.com/user/images/swanky_screenshot.jpg" class="right" alt="swanky screenshot" />In preparation of the impending release of Habari 0.6, as well as getting some to-do items off my list before adding more (I've got two theme projects I'm either resurrecting or starting), I've decided to update the ported themes that I've released.

First up, Swanky.  Not that I've seen anyone use this theme, but I did use it as a base for my <a href="http://cookingwith.miklb.com">cooking blog</a>, so it behooves me to have some updated code to make sure I'm using the latest and greatest Habari.  I'm not quite sure no one has (to my knowledge) used or modified the theme, perhaps the pink and black and <em>sexy silhouette</em> isn't a big draw.  But as I've pointed out, it can be a great starting point for modification.  Maybe I'm just not aware, and there are scores of sites using it…then again, since I haven't released a new version in quite some time, that could be a factor as well.  Today, that is fixed.

As I mentioned, this update is in anticipation of the impending 0.6 release, so unless you are running from svn, or a <a href="http://habariproject.org/en/download">nightly snapshot</a>, this version probably won't work.  For an overview of the theme, see the <a href="http://miklb.com/swanky-theme">original post</a>.

New in this release:
<ul>
<li>Removed calls to jquery and and a deprecated Stack::out call</li>
<li>Properly calling $theme->tag rather than using the potentially exploitable Controller::get_var function</li>
<li>updated the calls to check for logged in and added a tab to the top navigation for logged in users to admin</li>
<li>fixing a CSS bug on long post titles so they don't cover the timestamp</li>
</ul>

This is considered a beta release, any bugs or changes will be addressed before the final release of Habari 0.6.

<a href="http://miklb.com/downloads/Swanky_0.5beta.zip" onClick="javascript: pageTracker._trackPageview('/downloads/swanky0.5b'); ">Download Swanky 0.5 beta now</a>.
