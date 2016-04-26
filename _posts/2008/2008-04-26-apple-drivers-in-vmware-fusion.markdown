---
layout: post
title: "Apple Drivers in VMware Fusion"
tags: aside mac vmware-fusion leopard bluetooth
published: true
permalink: apple-drivers-in-vmware-fusion
date: 2008-04-26
---

I think with the help of a google search and <a href="http://blog.gruby.com/2007/12/14/bluetooth-in-vmware-fusion/">Scott Gruby</a>, I've figured out how to use my bluetooth keyboard in VM.
<blockquote>Finally, I found a reference to inserting the Leopard DVD while in Windows. I tried this and when I did, the BootCamp driver installer came up and installed my drivers. Perfect; why couldn’t VMWare say something about this on their website?</blockquote>

Thanks Scott and I agree, why isn't this documented somewhere.

<em>Edit 8/1/08</em>Seems you also have to disconnect the USB Bluetooth Host Controller to get it to work.  Something about only one OS can control the device at a time, so the machine gets confused when the two are both connected.  Disconnecting the controller, shutting down the XP install, then restarting VMware Fusion finally got it working.
