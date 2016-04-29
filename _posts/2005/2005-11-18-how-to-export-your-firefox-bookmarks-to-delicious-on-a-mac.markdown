---
layout: post
title: "How to Export your FireFox Bookmarks to Del.icio.us on a Mac"
tags:
  - Firefox
  - browsers
  - delicious
  - python
published: true
permalink: how-to-export-your-firefox-bookmarks-to-delicious-on-a-mac
date: 2005-11-18
---

This is intended to be a simple tutorial for Mac OS X users.  I'm not a programmer, I didn't even play one on TV.

First, head over to SourceForge and grab this <a href="http://sourceforge.net/projects/bkmrk2dlcs/">script</a>.    This is assuming your downloads go to your desktop.  Second, export your FF bookmarks, for ease of explanation, to your desktop as well(make sure you select all the folders you want to export, by default, the Toolbar bookmarks are the only ones highlighted).  You should have a Folder then on your desktop BookmarksToDelicious and your bookmarks.html file (and what ever else you have on your desktop).  Now go to your Utilities folder, and open the Terminal application.  For those who are not familiar with it, you  are now officially venturing into the Unix core that you've heard about.
Once the terminal is open, you should see a prompt that looks something like $miklb:~ miklb$.  Where miklb is the User name that you use on your machine.  The first step is to move to the actual directory where the python script is, which is your BookmarksToDelicious folder on the desktop.  Again, this is a bare bones explanation, for non-technical users, so feel free to comment if there's a quicker way.
To get to the folder, first type: cd Desktop.  The prompt should now be miklb$:~/Desktop miklb$. (Don't forget, yours won't be miklb, it will be what ever your user name is).
Next, type cd BookmarksToDelicious.
We are now in the folder the file is we want to execute.  Almost there.
At this point you need to know your del.icio.us user name and password.  For example purposes, I'm going to use the fictional user name of Alice, and password of Wonderland.  Again, this is assuming your bookmarks are on the desktop.  If not, you need to know the full path to that file.  But if you're following along, the next command to type into terminal is:
<strong>python BookmarksToDelicious.py -- --username Alice -- --password Wonderland --submit --debug /Users/miklb/Desktop/bookmarks.html</strong>

Where miklb is again the username you have on your machine, which is going to be the same as your prompt in the terminal.
If all goes well, you will begin to a lot of action scrolling down the page, and then the actual bookmarks going into del.icio.us, with a line saying "Getting", then some code, then  	&#38; result code ="done" /,  	&#38; for each bookmark.
The script will put tags on each bookmark with the folder name for that bookmark.  So if you have a folder called Apple in the folder toolbar-bookmarks, that will be the tag structure you get for the bookmark.  You can then edit that in del.icio.us, or, you can redo your folder structure in FF prior to export, which ever  you prefer.
Also note, it's not neccessary to use the --debug command, I simply included it, as it may be nice to see something happen, and know when it's done.  Working in Terminal, generally speaking, it doesn't show anything happening, so a new user may not know what's going on.  Seeing stuff scroll down the screen helps.  If you run into a problem, you can leave a comment, and I'll do my best to help, but again, this is meant as a bare-bones-I-couldn't-find-a-better-option way of doing this, and wanted to share, as I didn't come across many other explanations.
