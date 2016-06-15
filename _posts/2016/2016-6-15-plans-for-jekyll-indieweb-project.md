---
layout: post
title: "Plans for Jekyll IndieWeb Project"
tags:
 - Jekyll
 - IndieWeb
published: true
permalink: plans-for-jekyll-indieweb-project
date: 2016-6-15 15:17
summary: Catching up on my plans for the Jekyll IndieWeb theme and project I started.
---
I started a project soon after I began embracing the IndieWeb for the Jekyll platform, [Jekyll IndieWeb](https://github.com/miklb/jekyll-indieweb) (A less than inspiring project name I'm afraid to say.) My initial goals were to have a framework for myself that was fully microformats 2 compliant to build my own site off of and to share a starting point for anyone new to having their own website and wanting to embrace IndieWeb themselves.

So far I know of one person who is using it, which is encouragement enough to continue looking at ways to improve it. In the upcoming release of Jekyll, themes will be supported. While considered a minor enhancement, I think its a major milestone for Jekyll. Previously, there was no simple way to change the look and feel of your site without manually copying files into your install. Most theme projects are packaged as standalone Jekyll builds.

So that said, my plan moving forward to is to package the microformated theme, complete with the same config options as a Gem under the name "Crier" (as in town crier. Not sure it's anymore imaginative than the original project.) The original GitHub project will switch to the Gem once the new version is released, but will stay as a standalone Jekyll install for anyone who wants to get started from scratch. Also, Tom began working implementing a webmention gem for sending while at [IndieWeb Summit 2016](https://herestomwiththeweather.com/2016/06/07/indieweb-summit-2016-demos/). With the help of Bear in the IndieWeb community, I hope to have a tutorial and example of using continuous integration to build and deploy a site back to GitHub allowing the sending of webmentions along with the already supported receiving.

I would love to hear from anyone else interested in the project or using it, and what else you would like to see. Long term goal is micropub support.


<a href="https://brid.gy/publish/twitter"></a>
