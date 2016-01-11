---
layout: post
title: "Habari Plugin: Pull Quotes"
tags: habari plugin pull-quote
published: true
permalink: habari-plugin-pull-quotes
date: 2009-02-26
---

<strong><em>UPDATE</em></strong> The plugin is now in the Habari Extras repository.  There is a branch and tag for 0.6, and a 0.7 branch for the new plugin XML format.  Any bugs/issues should be directed to the <a href="http://trac.habariproject.org/habari-extras">Extras Trac</a>.

Unlike a blockquote, which is a HTML element meant to offset a quotation from the main text, a pull quote is a technique traditionally used in print to draw attention to a salient point in an article. <span class="pquote-r">Pull quotes generally take a small section of text and offset it from the article in a larger typeface.</span>  In addition to helping highlight a noteworthy point, a pull quote can add a graphic element by breaking up particularly long pieces of text.

Pull quotes were traditionally achieved in web publishing by appending the selected text to the end of the paragraph and then styling with CSS.  The downside to that is that in mediums that don't adhere to the style sheet (like syndication feeds), you wind up with the duplicate content at the end of a paragraph, which can confuse the reader to say the least.

Fortunately, through the wonders of jquery, <a href="http://css-tricks.com/better-pull-quotes/">Chris Coyier</a> whipped up a way of simply wrapping the desired text in a span that clones the text and floats it.  The beauty of this technique is that you're not duplicating markup.  Any medium that doesn't recognize the class on the span simply ignores it, and the article reads normal.

With the help of <a href="http://www.twofishcreative.com/michael/blog/">Michael Harris</a> who reworked the javascript, I'm proud to announce my first full fledged Habari plugin, simple as it may be.  You can see it at work in this post and on another <a href="http://miklb.com/ie8-compatibility-mode">recent post</a>.

<h4>Usage</h4>
Upload pullquotes to your user/plugins directory and activate the plugin.  There is no configuration required.  To create a pullquote from existing content, wrap the desired text in a span with a class  of either <strong>pquote-r</strong> or <strong>pquote-l</strong>.
<h4>Example</h4>

<code><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <span class="pquote-r">Ut enim ad minim veniam</span>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p></code>

<h4>Customizing</h4>
Pull Quotes has a default style included.  To customize the CSS, make sure in your theme's header file that <code>$theme->header();</code> is called before the theme's style sheet.  You can then add span.pull-left and span.pull-right to your theme's style sheet and customize the pull quote to fit your design and tastes.

<h4>Download</h4>
<a href="http://miklb.com/user/files/pullquote.zip">Pull Quote version 0.2</a>

<strong>Note:</strong> This plugin will eventually be handed over to the <a href="http://trac.habariproject.org/habari-extras/">Habari extras repository</a>, however in my exuberance of writing my first plugin, and desire to experience writing up a detailed post for one, I am releasing it on my personal site first.  Once I test it against 0.5.2 to determine if a separate version is required, I will add it to the repo, so any bugs or feature requests should be logged in the extras trac.  Comments certainly welcomed as well.
