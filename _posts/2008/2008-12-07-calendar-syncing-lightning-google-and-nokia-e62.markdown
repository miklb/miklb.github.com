---
layout: post
title: "Calendar Syncing: Lightning, Google, iCal and Nokia e62"
tags: mac ical nokia calendar sync google goosync
published: true
permalink: calendar-syncing-lightning-google-and-nokia-e62
date: 2008-12-07
---

<img src="http://miklb.com/user/files/sync.jpg" alt="sync" class="right">I'm still railing against signing a contract with a cell carrier, so I haven't purchased a new phone in some time, but the bigger need to have a more robust cell phone these days had me revive my Nokia e62.  All in all, it's a pretty good phone, with a decent built in browser (based on Webkit if I recall) and works well with my existing pay as I go plan.  I even managed to coax an unlimited data plan out of AT&amp;T.  The e62 also plays pretty well with my Macs—bluetooth syncing of contacts and calendar, the Nokia Media manager will sync an iTunes folder directly to the phone, so a 2GB card gives me a decent amount of music for on the go.

Anyway, I recently began using Thunderbird 3.0, aka Shredder, which is still pre beta.  That meant to really use it, I had to use the nightly build of Lightning, 1.0pre.  As with any Mozilla alpha product, you can expect most extensions to not work, which certainly is the case with these two.  I really like the combination, despite the occasional glitches, and wanted to find a way to sync Lightning with the phone.  What an adventure that turned out to be.

Everything I found searching the web suggested using an extension for syncing the Google Calendar with Lightning, which obviously wasn't compatible with these versions, and even testing it with the stable releases, I couldn't get it to work, so off I searched for another way.  Enter <a href="http://gcaldaemon.sourceforge.net/">GCALDaemon</a>, something I'd seen written about on several ocassions but had never quite investigated.

Using the <a href="http://gcaldaemon.sourceforge.net/usage12.html">Mac OS X installation</a> guidelines (installing in Applications vs usr/local/sbin), and being sure to use the the shell script config-editor definitely is the simplest way.  I'm certainly not a black belt in unix-fu, but following the instructions for <a href="http://gcaldaemon.sourceforge.net/usage.html#top">syncing with Sunbird/Lightning</a> and the config-editor even I was able to get Lighting 1.0pre synced with a Google Apps calendar fairly effortlessly.

The next step was to sync iCal (or so I thought) with the Google Calendar so I could then sync it with my phone.  I briefly toyed with GCALDaemon for that too, however my impatience led me to give Google's <a href="http://code.google.com/p/calaboration/">Calaboration</a> tool a spin. Fortunately it was quick and painless, and I was soon syncing the same Google Apps calendar with iCal that was synced with Lightning.  

However (<em>there's always a but, isn't there</em>), I soon found out that you can't sync from the phone's calendar to a network calendar.  So anything I were to add to the phone, would need to be transferred to the network calendar.  I'm pretty lazy as it is, so adding a step like that seemed like a recipe for losing an important date.  For iPhone users, this also seems to be the case.  So now what?

Another search turned up <a href="http://thenokiablog.com/2008/09/29/how-to-sync-google-calendar-apple-ical-and-nokia-phone-calendar/">this post on syncing a Nokia calendar with iCal and Google</a>, and suggested <a href="http://www.goosync.com/">Goosnyc</a>. I wasn't keen on using a 3rd party service, but I figured I'd test it out at least, and see where it goes.  Their SMS to automate the sync settings never arrived, so I followed the <a href="http://www.goosync-forum.com/showthread.php?t=8">Nokia e61/e62 manual syncing</a> instructions, which were spot on (once I figured out that I needed to look in "Office" for the Sync settings), and within a few minutes, my Nokia e62 was synced to my Google Apps calendar which was synced to LIghtning and iCal.

I still need to sort out a few minor issues with the phone now syncing with iCal, as I had some holiday calendars and what not synced to the phone, which then added the dates to the Google Calendar, so in iCal I was getting the same holidays showing up multiple times.  That's easily remedied by not displaying those calendars, but conveniently gives me all of the holidays on the other calendars.  I also need to make sure that when I sync the phone to iCal, I don't get duplicate entries in the local calendar, but again, I think I can get around that by simply creating a "phone" calendar, and hiding it in iCal.

Goosync does require a manual sync to Google Calendar, but that's less of a hassle than migrating entries from one calendar to the other.  All in all, I'm quite pleased now that I can add items directly from an email into my calendar, or right into my phone, and it will conveniently appear in all of my calendars.

If anyone knows of a more seemless method, I'm all ears.
