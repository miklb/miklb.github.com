---
layout: post
title: "URL Shorteners, HTTP Referers and 301 Redirects"
tags: habari twitter bitly trim 301-redirect http_referer -_server url-shorteners
published: true
permalink: url-shorteners-http-referers-and-301-redirects
date: 2009-06-29
---

I'll start by saying I don't know much about the subject, but am posting this in the hopes that someone who does can elucidate the issue.  My basic dilemma is that I have a short bit of code on my single page templates that checks to see if a visitor is from Twitter, and if so, show a little message.  (Not an original idea, I think I saw it on a post at Smashing Magazine).  The code they used didn't work, but with the help of <a href="http://mattread.com/">BigJibby</a> in the Habari IRC channel, I was able to get it working with Habari.

I more or less forgot about it, until a few people noticed it and asked if it was a plugin.  When I replied it wasn't, they asked if I could make it into one.  So it went into a to-do list I keep of Habari related ideas.  This evening I began working on it, and while troubleshooting how to actually output something to the entry single template (that's a whole other can of worms), I discovered the code snippet wasn't working.  With the help of <a href="http://twofishcreative.com/michael/blog/">Michael</a>, we discovered the problem wasn't with the code snippet, rather it was with the URL shorteners.  Twitter recently started defaulting to <a href="http://bit.ly">Bit.ly</a>, and I recently began experimenting with <a href="http://tr.im">Tr.im</a>,  <span class="pquote-r">both of which weren't sending twitter.com as the referrer.  Rather, due to their 301 redirect they return <strong>NULL</strong>.  Which in a nut shell sucks. </span>

Somehow Google Analytics is able to track referrals from Twitter, as last week when I had a huge upsurge in traffic from the popularity of the <a href="http://miklb.com/infinite-summer-bookmarks">Infinite Summer Bookmarks</a>, I'm seeing 50 visitors from Twitter the first day (of the 785, by far a record for this little weblog).

At this point, finishing the plugin seems moot, as the only way to be sure that visitors will actually see the message would be to use a URL shortener that doesn't return NULL, of which, the only one we found that to not be the case was Owen's <a href="http://pastoid.com">Pastoid</a>.  I didn't test Tinyurl, nor was I interested in looking for others.  The disappointment had already set in.  Besides that, if you are auto posting to Twitter with a plugin, you wouldn't have the option to use a different shortener.

So kind readers/stumble-uponers, if anyone has a solution to this problem, please enlighten me.  Meanwhile, I'll work out the issue with Habari and my desire to output content on a single entry template within the content output, not above the body tag.

For anyone interested in the snippet of code I am using:

<code>if ( parse_url($_SERVER['HTTP_REFERER'], PHP_URL_HOST) == 'twitter.com' ) {
	    echo "<h2 class='twittervisit'>Welcome, Twitter visitor! If this post is useful, don't hesitate to retweet!</h2>";
</code>
