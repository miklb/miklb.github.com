---
layout: post
title: "Use Pythonista to Get Weather of Current Location into Drafts App"
tags: drafts-app pythonista python-1 weather forecastio
published: true
permalink: use-pythonista-to-get-weather-of-current-location-into-drafts-app
date: 2014-01-10
---

My quest began when I began using Drafts app (among many other ways) to keep a fishing log. I created a TextExpander fill-in snippet to quickly enter what (if anything) was caught, the date, the type of lure(s) used, etc. I really wanted to automate adding the weather conditions as well, but alas, my search for that solution turned up nothing…until yesterday.

It started when [@drdrang](https://twitter.com/drdrang) shared a [Pythonista](http://omz-software.com/pythonista/) script to [leverage the location inside iOS](http://www.leancrew.com/all-this/2014/01/location-and-leverage/). Later he shared [another version](https://gist.github.com/hiilppp/8268816), from [@hiilppp](https://twitter.com/hiilppp).

Armed with that knowledge and a rudimentary knowledge of the [forecast.io API](https://developer.forecast.io), I set off to <strike>steal</strike> crib some Python usage of their API. Enter  [@jayhickey](https://twitter.com/jayhickey) and his [PySky](https://github.com/jayhickey/Pythonista-Scripts/blob/master/PySky.py) script. While written for the v1 Dark Skies API, it gave me enough Python to convert to the new v2 of Forecast.io.

The result?

<script src="https://gist.github.com/miklb/8346411.js"></script>

[original gist](https://gist.github.com/miklb/8346411)

This version simply grabs the current weather summary and temperature from your current location, meant to be used with [@draftsapp](https://twitter.com/draftsapp) as a URL action `pythonista : / / py_forecast?action=run&argv=[[draft]]`. Dr. Drang suggests using [New From Gist](https://gist.github.com/omz/4076735), however I had better success using [iOctocat](http://ioctocat.com). There is an "open in…" dialog when viewing your gists or starred gists, and pick Pythonista.

Certainly for my fishing log I am expanding on this to include wind, sunrise and set times as well as the recently added moon phase. I figured a more generic version would be best shared, but please do not hesitate to leave a comment or  ask me a question on Twitter [@miklb](https://twitter.com/miklb). I'll do my best to help, as I'm indebted to the aforementioned gents for sharing their code and helping in the first place.
