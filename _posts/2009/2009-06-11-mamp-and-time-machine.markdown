---
layout: post
title: "Troubleshooting MAMP and Time Machine"
tags: leopard time-machine mamp permissions group troubleshooting
published: true
permalink: mamp-and-time-machine
date: 2009-06-11
---

<img src="http://miklb.com/user/files/time_machine.png" class="right" alt="Time Machine">Well, it's taken me what seems like forever, but I finally determined that MAMP has been the cause of all of my Time Machine woes.  Basically Time Machine would get to a certain point, in my case it was around 29 GB, and simply stall, not allowing me to stop the backup process.  I would basically have to restart the machine to get it to stop.  I originally thought it was a problem with the formatting of the external drive, however I'd done all of the troubleshoot tips I've found on the web, to no avail.  Finally let me say, I'm not a Unix expert, nor am I that well versed in file permissions.  I know just enough to get myself in trouble, but I believe I understand this problem well enough at this point that I thought sharing my discoveries might help someone else avoid a similar headache.

In a nut shell, it seems that by default MAMP's Apache instance doesn't set a group owner for files created by the Apache server.  Time Machine chokes on these files, which results in a stalled backup.  After much Googling, I came across this <a href="http://blog.mirthlab.com/2008/04/05/mamp-might-break-your-time-machine-backups/">blog post about MAMP Pro and Time Machine</a>.  I then used the Time Machine options to exclude the directory that I created for my document root (I believe MAMP defaults to /Users/foo/Sites/).  Excluding my MAMP directory allowed Time Machine to completely backup my system.  In the aforementioned blog post about MAMP Pro, it appears there is a preference pane in the pro version to choose your user/group for the Apache server.  The free version of MAMP doesn't offer this same preference, so I had to do a bit more digging.

What I found was that in the Apache httpd.conf file, around line 327, the group was indeed not set, rather it read "Group #-1".  From what I understand of the Apache .conf file, using the # comments out what ever follows, which is why the cache files were being created as an unknown group, or "nogroup" as the post calls them.  

I solved my issue by:
<ul>
<li>changing "Group #-1" to "Group _www" on line 327 of the Apache httpd.conf found in Applications/MAMP/conf/apache</li>
<li>moving all the cache files that the Apache server had created in my MAMP document root to the trash</li>
<li>restarting Apache in MAMP (there's actually no "restart", you have to stop, then start the servers)</li>
<li>removing the MAMP directory exclusion from the Time Machine options</li>
</ul>


By all means, if there is any misinformation in this post, or you can shed further light on the subject, please leave a comment, as I would like to fully understand the issue, and as I said, the information might be helpful to others, as I haven't found much on the subject in my searches.
