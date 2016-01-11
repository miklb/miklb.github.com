---
layout: post
title: "Differences in Habari Development"
tags: 
published: true
permalink: differences-in-habari-development
date: 2007-08-29
---

It seems that there is quite the difference in how Habari is developed from a PHP standpoint to a design standpoint.  Code wise, most major changes that I've seen, a patch was sent out to the community, and comments were made about how it worked, and if it worked within the general scope of where the members and community saw development.

This has not been the  case, from what I can see, with a current movement to change the entire admin interface.  There was some discussion about the possibility of incorporating <a href="http://code.google.com/p/blueprintcss/">BluePrint CSS Framework</a> into the admin interface.  The general consensus was that it wasn't a bad idea, but that there were concerns with it's compatibilities with all browsers.  In that discussion however, there was no talk of a "live" redesign of the interface.  Meaning, the admin would be changed in trunk, at small increments, without any discussion of the changes, or the effects of those changes on the user experience.
