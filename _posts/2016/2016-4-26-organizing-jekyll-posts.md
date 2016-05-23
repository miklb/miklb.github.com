---
layout: post
title: "Organizing Jekyll Posts"
tags:
   - jekyll
   - categories
   - organization
published: true
permalink: organizing-jekyll-posts
date: 2016-4-26 22:44
summary: Sharing some recent discoveries on how you can organize Jekyll posts beyond a single _posts directory.
---

 Until last night, I was under the impression you had to store all of your posts as markdown files in a single directory called `_posts` unless you changed that in your `_config.yml` file (and even then, my assumption was it was still a single directory.) That said, I still sought out whether there was a way to organize them by at least year within that single folder. I've been blogging for 11 years this spring, and while sporadic at times, that is still a lot of posts. When I need to reference a new one, or look for something from the past, having them by year would be nice.

 tl;dr yes, you can arbitrarily organize under the `_posts` folder however you want. All Jekyll looks for are markdown files with FrontMatter.

 What I also learned, and isn't [well documented](https://jekyllrb.com/docs/variables/) [^1] is that you can create top level folders each with their own `_posts` sub-folder and Jekyll will read from each one, appending that folder name to the generated url for the post, i.e. a folder `foo` with `_posts` with `2016-04-26-post-title` would yield a URL of `example.com/foo/post-title` (varying by your permalink structure). Those top level folders are then treated as categories, allowing for more filtration within your templates and site organization. I can see other ways of using them, especially as I continue to move towards a more Indieweb way of doing things and more tweets originating from this site.

 I intend to contribute my discoveries to the official documentation as soon as I can.

[^1]: Hint: it's hidden under `page.categories`

<a href="https://brid.gy/publish/twitter"></a>
