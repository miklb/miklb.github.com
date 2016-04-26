---
layout: post
title: "Terminal.app &amp; Solarized"
tags: terminalapp os-x solarized totalterimnal
published: true
permalink: terminalapp-solarized
date: 2013-01-14
---

This was new to me, but I've been using Terminal.app a lot lately setting up my new VPS. As a big fan of the [Solarized Color Scheme][solarized], began to wonder if I could use that with Terminal.app. A quick Google search quickly returned [OS Lion terminal colors - Solarized][tomislav]. As I'm still on Lion, it's a simple as downloading the zip, extracting, double clicking the preferred scheme (light or dark) to activate it. The readme file says Mountain Lion users can import the file via preferences. The only hitch was as a user of [TotalFinder][binaryage] I couldn't get it to use the new default Solarized color scheme.

Another quick search turned up that this was not a bug, but a (bad IMVHO) design decision. If the Visor color scheme is available, regardless of the default scheme in Terminal, it will use Visor. Apparently the options are renaming the color schemes, or, as I chose to do, delete Visor scheme from Terminal.

Though I use the light scheme for all of my text editors, I'm leaning towards the dark for TotalTerminal. My next step will probably be to edit my .bash profile to change the prompt colors, but I'm not sure I'm that big a geek today.

[binaryage]: http://totalfinder.binaryage.com
[solarized]: http://ethanschoonover.com/solarized
[tomislav]: https://github.com/tomislav/osx-lion-terminal.app-colors-solarized
