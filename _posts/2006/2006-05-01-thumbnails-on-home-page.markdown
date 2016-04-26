---
layout: post
title: "Thumbnails on Home Page"
tags: my-site tutorial thumbnails wordpress-1
published: true
permalink: thumbnails-on-home-page
date: 2006-05-01
---

This little tutorial is intended as a means of providing WordPress users the means of posting a thumbnail image on their home page, and having a full size image on the single page view.  This is accomplished using the image uploader built into WordPress, and CSS.  If you are intending on using excerpts on the home page, then the addition of Kaf's <a href="http://guff.szub.net/2005/02/26/the-excerpt-reloaded/">Excerpt Reloaded</a> plugin.  His plugin allows for the inclusion of tags within the excerpt, something the built in function the_excerpt does not.
The first step is to make sure you have the_content or the_excerpt wrapped in a unique div class.  I'm not sure of the exact correct semantics, but I simply call my home page excerpt   "home", and single page div "single". (Note, depending on your theme, you may or may not need to create a separate class for the single page view.  I actually wound up not using single in my theme, as I was able to use the class "primary" from the original code.  The objective is to have a parent div to call with the specific class we assign the thumbnail).
Next, when you upload your images via the WP upload, be sure to note the path.  Generally speaking, both the created thumbnail and full size image are placed in the same directory.  the difference being the thumbnail file is yourimage.thumbnail.jpg.  So now that you have uploaded the image, and the thumbnail has been created, it's time to place both the thumbnail and full size image in your post.  We are going to code the image directly, and not use the WYSIWYG or quick tag buttons, as we need to add a class directly to the image.  Again, not sure about proper semantics, but I used "big" and small, obviously for the full size and thumbnail, respectively.  Note, if you want to also float the image, you can use two classes, simply leave a space between each class.  An example would look something like this :
<code><img class="left small" src="http://yourblog.com/wp-content/uploads/2006/04/image.thumbnail.jpg alt="image" /><img class="left big" src="http://yourblog/com/wp-content/uploads/2006/04/image.jpg" alt="image" /></code>
Now to create the CSS to hide images on the different pages.
First, to hide the full size image on the main page, we need to add to our style sheet .home .big {display: none}.  
Then to hide the thumbnail on the single page view, we add .single .small {display: none}.
That's it.  A couple of simple CSS classes and the built in image upload.  A note about the code.  Depending on your theme, you may or may not need to create a few more templates.  If your theme only has an index.php file, then you'll need to save a copy of that as single.php then make the changes to that, as outlined.    
I'd love some feedback on the semantics of the classes, as that's still an area I'm learning about, as well as any general feedback about the concept.  It works fine for the theme structure I'm using, but if you run into any problems with your theme, please leave a comment, and I'll do my best to help you make it work.
