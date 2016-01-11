---
layout: post
title: "Using APC and Subversion Checkouts"
tags: slicehost php apc subversion mtime ctime linode wordpress-1
published: true
permalink: using-apc-and-subversion-checkouts
date: 2011-06-05
---

I am in the process of moving my sites from Slicehost to Linode, as most are aware Slicehost is being phased out for Rackspace Cloud.  Anyway, I upgraded my VPS at Linode last night to Debian "Squeeze" and installed APC, which created a problem with the WordPress installations I had there.  Basically, I couldn't access the admin.  Through the power of Twitter and the invaluable help of [Mark Jaquith](http://markjaquith.com/), I learned that by default APC doesn't play nice with files that are checked out via Subversion.  I think the root of my problem was a stray apc config for overriding include once, but certainly the subversion issue could have been at play too.

Anyway, a little Googling on the subject, I discovered there's a configuration option for APC to use [ctime](http://www.php.net/manual/en/apc.configuration.php#ini.apc.stat-ctime)  instead of the default mtime.  Adding `apc.stat_ctime=1` is all that is required. 

While I'm on the subject of migrating from Slicehost to Linode, [Andrew RIley](http://developerkarma.com/) pointed out that someone had written a ruby script to [migrate the DNS information](https://github.com/Schultz/slicedns2linode) for you. 

*Addendum* To be clear, I install WordPress using Subversion and the appropriate tag. My Habari installs are also all Subversion checkouts from trunk.
