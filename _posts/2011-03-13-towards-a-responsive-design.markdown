---
layout: post
title: "Towards a Responsive Design"
tags: design youtube responsive iframe html5
published: true
permalink: towards-a-responsive-design
date: 2011-03-13
---

I am not sure I had really paid attention to the term <em>responsive design</em> when I started the redesign for this site. I just knew I wanted something that would be as readable on an iPhone as it was on my large desktop monitor.  I made some conscious decisions to remove a bunch of extraneous elements not for the mobile viewing, but I simply wanted to focus attention on what ever it was I was writing about.  Sidebars full of links, tweets, buttons and badges might have been novel 6 years ago when I started this site, but not so important to me now.

I also wanted to learn more about HTML5 and CSS3.  For my own site, I'm completely not interested in supporting old browsers, save for using a HTML5 polyfill for &lt; IE 9.  If someone is using IE 6, they probably don't have much interest in what I'm sharing anyway.  So I played with some max-widths and widths based on percentage until I found something that worked for me.  Perhaps that's not the best way to approach it, as the site really should be about those visiting, but I guess <span class="pquote-r">I made an assumption my browsers/screen resolutions/mobile devices were common enough that if it looked OK to me, it should look OK to visitors.</span>  Up until today, I was fairly happy with what I had come up with, save for the Youtube videos I've been posting.  I have been experimenting with using the HTML5 iframe wrapper Youtube offers, and choosing a very large version of the video.  Which wasn't working out for smaller screens.

But as I'm studying more about the advanced concepts of responsive design and using media queries, I ran across Ethan Marcotte's <a href="http://unstoppablerobotninja.com/entry/fluid-images/">fluid images</a> post.  Lo and behold, I set <pre><code>iframe {max-width: 100%}</code></pre> and my video posts scale along with the surrounding content.

I'm not sure I will mess with this site anytime soon code or design wise, but I do intend to experiment with using the <a href="http://lessframework.com/">Less Framework</a> and possibly the intriguing <a href="http://filamentgroup.com/lab/responsive_images_experimenting_with_context_aware_image_sizing/">context aware responsive images</a> script over on my <a href="http://cookingwith.miklb.com">cooking site</a>, which is a blueprint based grid design spun off of the markup of this site.  I don't think it would take much to convert the grid to the Less Framework.  I may think about a design that's not quite as similar to this in the process.

Regardless of the direction, I'd like to thank Kevin Zurawel for his <a href="http://arborwebsolutions.com/2011/03/wordcamp-miami-2011/">WordCamp Miami session on responsive design</a> and piquing my interest on the subject even more.
