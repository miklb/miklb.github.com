---
layout: post
title: "Transmit &amp; Textmate No Longer Sitting in a Tree"
tags: mac textmate transmit ftp editor support
published: true
permalink: transmit-textmate-no-longer-sitting-in-a-tree
date: 2010-11-29
---

For years, my work tools/flow has primarily consisted of using Transmit for for (S)FTP, and TextMate for all file editing save for CSS files,  for which I use CSSEdit.  It worked like a charm.  I could be on 3 different servers, jumping from issue to issue, project to project, and never miss a beat. Now I know my hard core programmer friends will say I should be using something like VIM, which I'd love to be that guy, but my skills at modifying PHP would never allow me to work like that.  I like the code completion, syntax highlighting, and <em>pretty</em> GUI of a desktop app.

So this little work flow had become second nature.  I never really thought about it anymore.  For those not familiar with TextMate, associated files in a project open in tabs, ala browsers.  Otherwise, they are simply each a new window.  Originally I was using the <a href=
"http://muffinresearch.co.uk/archives/2006/06/13/use-tabs-in-textmate-for-remote-files-opened-by-transmit/">Muffin Research tutorial </a>on how to get the temp Transmit files in a TextMate project.  With the excellent update to version 4 of Transmit, a new <a href="http://blog.taenzer.me/textmate-open-files-from-ftp-in-tabs-with-tra">tutorial</a> surfaced dealing with the new way temp files were handled.  I followed along, things worked great. Until now.

After a recent update to Transmit, I realized the temp files were no longer opening as a project in TextMate.  I tweeted about it, and soon after someone from Panic asked me to send a support email.  I enthusiastically did, hoping I had missed something.  Unfortunately, the reply was:
<blockquote>Hi Michael, unfortunately I can’t guarantee that this functionality will return. It’s not something that’s supported by the ODB Editor suite. Really, this is a feature that needs to be added to TextMate in the same way that browsers can be told to open new windows in tabs.</blockquote>

I politely replied that TextMate does have that feature, the associated files just need to be in a project.  Once again, the response was that I should open a feature request ticket with TextMate that files open as tabs regardless of being associated with a project, followed by 
<blockquote>We fixed a legitimate bug with editing files in BBEdit and this was an unintended side-effect.  However, it’s unfair of you to claim that this was a supported feature of Transmit as it relied on accessing a hidden cache folder in order to function.</blockquote>
There was an additional suggestion along the way that I could mount the remote servers using the built in MacFUSE technology as folders on my desktop.  I'm not inclined to use that for my work server however.

Additionally, I was offered a refund if rolling back to 4.1.1 wasn't an option.  Certainly I do not want to be stuck with that version forever, but in the meantime I've rolled back so I can continue on my current work flow, while investigating other options.  I've downloaded Panic's Coda application, which is an svn client, FTP and file editor all rolled into one (plus terminal).  I had tested it on its initial release, and didn't find it anywhere near my existing setup.  I've not used it enough in its current form to know if it's mature enough to compete.  Certainly I'm not a heavy programmer, so a lot of times TextMate can be overkill.  I look forward to testing it further.

In an ideal world, there would be a simple way for Transmit to store the temp files as in the past where TextMate can easily find them as a project.  Or TextMate 2 drops overnight and has built in support for opening files unassociated with a project as tabs.  I'm certainly open to suggestions.

Lastly, let me be clear.  I did not mean to imply this was a "supported" feature, rather it just <em>worked</em>.  James, the Panic support person who corresponded with me over this issue was nothing but professional, polite and honest.  Refreshingly honest.  They make a great product, one that has almost seamlessly fit into my system without even noticing it most days.  I sincerely appreciate their offer of refunding my purchase.  That was never my goal.  I've gotten far more value out of my purchase of that application to ever accept the refund, regardless of my ultimate direction.  I just want the perfect marriage back.
