---
layout: post
title: "Image Links and Hover Background Colors"
tags: links css geek-life images hover background
published: true
permalink: image-links-and-hover-background-colors
date: 2006-08-10
---

I did a google search for the solution to a problem I had with some CSS and image links, and didn't find a good solution, so I'm throwing this out there for anyone who might stumble upon it.
The problem I was having was that I was creating a site with a black ground.  There was a global setting for all a:hover links to have a background color and different font color, a common effect.  However, any image links that I had were also getting a small box of the same color at the bottom when I moused over it, not at all good looking.  I tried setting the selector a:hover img to a black backgroud, but the color still showed up.  After closer inspection of my style sheet, I had set a global marign and padding on all images.  When I set those to zero, the color didn't show up.  However, I didn't want to sacrifice all images to not have to margin or padding, or force the end user to add a special class to images, so I tried setting the a:hover img margins and padding to zero.  The problem there was that the image would "jerk" when moused over, as the margin and padding shifted.  So I simply set a img to zero margins and padding, and my problem was solved.  The only down fall is if someone wants to post an image in a blog post that's a link, the text will butt right up against it.  However, if that problem arises, I can then set a class for that image, and should be able to give the image room. 
Anyway, like I said, I didn't find a solution in the first few pages of google, not that this will make those pages neccessarily, but it's worth throwing out there.
