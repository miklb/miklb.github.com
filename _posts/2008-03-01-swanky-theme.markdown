---
layout: post
title: "Swanky Theme"
tags: habari theme swanky
published: true
permalink: swanky-theme
date: 2008-03-01
---

<strong>Updated! See the <a href="http://miklb.com/habari-theme-swanky-05beta-released">latest post on details</strong>

<img src="http://miklb.com/user/images/swanky_screenshot.jpg" alt="screenshot" class="left">This week an <a href="http://www.freecsstemplates.org/preview/swanky">open source design </a> came across my feed reader, and something about it caught my eye.  Immediately however, I didn't think the header matched the design name, so I set about creating something a bit more  <em>"swanky"</em>.  From there, I began porting it to <a href="http://habariproject.org">Habari</a>.  The goal was a ready to go theme, with support for several of the popular available plugins.  To that end, Swanky supports half a dozen plugins, a couple of which are recommended.

For recommended plugins, Raman Ng's <a href="http://blog.tinyau.net/archives/2007/07/02/habari-rn-related-posts-plugin/"> Related Posts plugin </a> and his <a href="http://blog.tinyau.net/archives/2007/08/30/habari-rn-tag-cloud-plugin">Tag Cloud plugin</a> will provide full intent and functionality of the theme.

The theme also supports the Credit Due plugin that is available from the <a href="http://www.habariproject.org/dist/plugins/">Habari Extras repository.</a>  Activation of the plugin and the addition of a Credits page will automatically move the credits from the footer, and create a link to a page on your site at  example.com /credits, which will contain the original design credits which are asked to be kept in place, as well as credits for all plugins and the Habari theme itself. (It will also exclude the page /credits from the top navigation)  You do not need to add any content to the page, simply creating the page will suffice.  If you have any other "shout outs" you'd like to add in addition to the plugins output, that will appear above the default output.  Without the plugin and page, the link for the original design and theme design will be shown in the footer.

Suggested plugins include the aforementioned Credit Due, as well as the pingback plugin bundled with Habari, Gravatars (also in Habari Extras), and the Recent Comments plugin in Extras.  If the Recent Comments plugin is not installed, it will default to included code in the theme.  Using the Recent Comments plugin allows for user definition of some output, including adding a date, and how many recent comments to show. The default code simply displays 5 most recent, comment author and post.  The theme is coded to use the unordered list if you use the plugin, changing that would require editing the sidebar.php template.

The theme also supports the Twitter plugin (also in the Extras Repo), and will show on pages that recent posts show.  (see below regarding dynamic display).

One small feature of the theme is that the middle sidebar is dynamic based on certain templates being viewed.  Single post views will not show the recent posts, rather the posts meta, as well as related posts (if that plugin is active).  If the Twitter plugin is active and configured, pages that show recent posts will also show above them your most recent tweet, twitter icon, and a link to your twitter page.

This is considered a .1alpha release, future versions, aside from bug fixing, will support more dynamic options for plugins to output content in the 2nd sidebar, among any other suggestions.

Please direct any comments, bugs, suggestions to the comments on this post.

<a href="http://miklb.com/user/downloads/swanky_0.2.zip">Download Swanky</a> 0.2.

<strong>Users of trunk >r1574</strong>

<a href="http://miklb.com/user/downloads/swanky_0.3.1.zip">Download Swanky 0.3.1</a>

<a href="http://themes.miklb.com/">Current Demo</a>

<strong>Edit</strong> I failed to mention, if you use the gravatar plugin, there is a default gravatar in the theme's images directory that you can point to that matches the header (in the plugin options you can point to the image).
