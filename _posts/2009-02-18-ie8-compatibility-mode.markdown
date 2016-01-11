---
layout: post
title: "IE8 Compatibility Mode"
tags: web-design browsers ie internet-explorer standards 7 8 compatibility-mode
published: true
permalink: ie8-compatibility-mode
date: 2009-02-18
---

A post came through Twitter from <a href="http://www.sitepoint.com/blogs/2009/02/19/ie8-standards-mode-opt-in/">SitePoint</a> regarding a recent decision by Microsoft and the IE team to add a new compatibility mode to IE8.  The post they link to is from December, and the IE Blog has updated the blog with a <a href="http://blogs.msdn.com/ie/archive/2009/02/16/just-the-facts-recap-of-compatibility-view.aspx">recap of the compatibility view</a>.  At first read, this sounded like a stupid idea.  Just another layer of crap that would keep sites from getting up to speed on standards compliance.

Upon a bit more thought, I think it's not a bad idea.  One of the biggest reasons I found people didn't adopt IE 7 was that sites that they regularly visited didn't render properly in IE 7, so they reverted back to IE 6. <span class="pquote-r"> I think it's still one of the biggest reasons people haven't upgraded.  They upgraded once, a site didn't work, so they stuck with 6.  A vicious cycle ensued</span>.  Sites saw the stats, saw a big IE 6 crowd, and kept support.  The reality of business is going to say that some numbers cruncher is going to say it's not economically feasible to update the site for IE 8, regardless of the chorus from the web team.  These are the sites that compatibility mode is geared towards.

Adding this compatibility view will allow people to upgrade to 8, still visit sites that haven't been updated, but get the standards compliance of 8 for sites that have.  Sure, getting blacklisted as incompatible is possible, but a single line of code in the header will remove the compatibility view from visitors, and for those of us that want to build sites that are strictly IE 8 compatible, ignoring 7 (6 is whole different can of worms) is possible.  It's very easy to tell a client, "Just upgrade to 8, and click the compatibility view option, your old sites will still work the same", versus having to make a site backward compatible to 7 because people won't upgrade or are reluctant. Worse, having to have 2 or more conditional style sheets to accommodate multiple versions of IE. 

I would say this compatibility mode list shouldn't be built off of how a site renders in a beta version of a browser, and reading through the comments and glossing over the latest post I'm not sure if that's the case, but again, I'd rather it be an opt in setting that allows people to view the rest of the web in a more standards compliant mode than having to wrestle as as a developer with yet another version of IE.
