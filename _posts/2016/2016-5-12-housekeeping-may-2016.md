---
layout: post
title: "Housekeeping May 2016"
tags:
  - Jekyll
  - IndieWeb
published: true
permalink: housekeeping-may-2016
date: 2016-5-12 2:15
summary: A not so brief summary of the updates I've made to my blog over the last month.
---
Figure for my own reference I should document the updates I've made to the site the last month.

I've written before that my primary goal with the reboot of this site is to embrace IndieWeb. The first step was [receiving webmentions](https://miklb.com/finally-webmentons-with-jekyll-part-duex), then sending them. Also in the process I, started an indiewebified [Jekyll theme](https://github.com/miklb/jekyll-indieweb) (which I'm using on this site at the time of writing.) Part of that was to have better microformats in the markup.

The big itch that I wanted to scratch was implementing micropub to free myself from Twitter (something I've failed at thus far). With the help of [Pelle Wessman](http://voxpelli.com/2016/03/my-2015-in-indieweb/) who shared n bit of yet to be public "glue" to pull together his [other tools](https://github.com/voxpelli/node-micropub-express), I set up my own micropub endpoint on a Heroku.[^1]  I still need to workout adding a syndication endpoint for Twitter so I can auto-tweet notes, but that is coming.

Once that was in place, I was able to use the tools [Aaron Perecki](https://aaronparecki.com) built, [Quill](https://quill.p3k.io) and [OwnYourGram](https://quill.p3k.io). Quill is a web based micropub publishing app, and OwnYourGram is a service that helps you [PESOS](http://indiewebcamp.com/pesos) your Instagram photos to your own site[^2].

A lot of the experiments I've been doing here might be overkill for a simple blog, but are great ways to expose myself to new technologies. I've long had an Amazon Web Services s3 bucket set up as a CDN, but had never found a workflow to efficiently use it. With the my current build/deploy process with Travis, a copy of the Instagram photo is saved to my GitHub repository via micropub. In the build script, the image is copied to the s3 bucket, then linked to the CDN.

The primary reason to use the CDN was I went through the steps to get 100% on Google Pagespeed (last I checked). Since the site is primarily text and is already static it ranked pretty well, but I went ahead and configured loading critical CSS[^3]. (I had set that up with my old Habari theme, but Google's added a step to async load the remaining CSS). I also had to tweak caching in nginx, which while I was in there, I went ahead and set up http/2. The primary reason I moved back from GitHub pages to my VPS was to serve the site over https with a free LetsEncrypt SSL certificate.

Finally, I went back and forth on analytics. I don't *need* them, but it's nice to see what visitors are looking for and at. I poked around at some self hosted options, ultimately decided for now that for the people who don't want to share data with Google, there are browser tools to block sending the data, which I'm OK with, therefore using GA here isn't forcing anyone into it.

I still want to do a fresh design, but only after last few kinks in Jekyll-IndieWeb theme are fixed. I'll still use the markup as the foundation, just present it differently. As always, if you have any questions, hit me on Twitter [@miklb](https://twitter.com/miklb) or leave a webmention and I'll do my best to reply.


[^1]: Which was my first experience with both Heroku as well as a node app.
[^2]: Instagram has locked you out of pushing your images from your own site to Instagram.
[^3]: The command line tool in [Filament Group's CriticalCSS tool](https://github.com/filamentgroup/criticalCSS) made that pretty trivial.

<a href="https://brid.gy/publish/twitter"></a>
