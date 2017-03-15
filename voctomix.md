---
layout: default
title: voctomix
tagline': A modern Gstreamer based software video mixer
category: projects
tags: projects voctomix
---

# voctomix

 * [(Code) - Main Repo](http://github.com/voc/voctomix)
 * [(Code) - Extension Scripts](https://github.com/CarlFK/voctomix-outcasts)
 * [(Mailing List)](mailto:voc@c3voc.de)
 * [(IRC Channel)](irc://irc.hackint.net/#voctomix)
 * [(Bug Tracker)](http://github.com/voc/voctomix/issues)

### voctomix is written in Python and uses GStreamer

voctomix is a software based system for interactive live mixing of incoming video streams, designed for the needs of conference recording.

voctomix was [developed by the C3VOC](https://c3voc.de/) and is used extensively by the TimVideos project. The design was originally heavily influenced by the original [[gst-switch]] design but is instead written in Python.

**

### Functional diagram

FIXME: This diagram is for gst-switch, voctomix is similar in design but has some differences!

[Edit](https://docs.google.com/a/mithis.com/drawings/d/18sU5uECrPgQzxLWzc7RaYWRs9F3aocx0chf16-yxBEY/edit)

<img src="https://docs.google.com/drawings/d/18sU5uECrPgQzxLWzc7RaYWRs9F3aocx0chf16-yxBEY/pub?w=1874&h=971" style="width: 100%;">

### Documents

 * [voctomix - voctocore documentation](https://github.com/voc/voctomix/blob/master/voctocore/README.md)
 * [voctomix - voctogui documentation](https://github.com/voc/voctomix/blob/master/voctogui/README.md)

 * [gst-switch design document](https://docs.google.com/a/mithis.com/document/d/1_blj8u6ToyaZwdikCmUSGFwdpoAYNCyDYEHgXtPL8mI/edit#heading=h.bhhck1xjratt)

### DVSwitch and voctomix

> DVSwitch is a digital video mixer intended for interactive live mixing of
> several incoming DV video streams. It was originally designed for the needs
> of DebConf; It has now been used for various other conferences, meetings and
> live musical performances.

voctomix project is intended to be a replacement of [DVSwitch][DVSwitch] based on [GStreamer][GStreamer]. It aims to do interactive live mixing of incoming video streams, designed for the needs of conference recording.

***

<img src="https://raw.githubusercontent.com/voc/voctomix/master/voctogui/voctomix.png">


# Parts of voctomix

### voctocore

 * [(Code) - Main Repo](https://github.com/voc/voctomix/tree/master/voctocore)

voctocore is the part which actually does the real work. It accepts incoming video streams and then chooses one to output.  It also supports a limited number of ways to mix a maximum of 2 streams at once.

The server has a constant stream output stream. This stream is well formed for a given format set on start (IE 720p60 or 1080p50 or similar). Both video output and audio output regardless of any problems in inputs (such as corruption or dropped frames) and even if no input streams remain.

### voctogui

 * [(Code) - Main Repo](https://github.com/voc/voctomix/tree/master/voctogui)

The user interface should be a program which connects to the gst-switch server and allows a user to configure features about the server.

The user interface;
 * Shows previews of all the incoming videos (and shows audio levels).
 * Lets you select which incoming video should be sent to the output.
 * Lets you select which incoming audio should be sent to the output (independent of video).
 * Lets you select Video 1 and Video 2 in PIP mode.
 * Lets you position the PIP in Option 2.
 * Lets you set the fade delay.

### vocto-outcasts

 * [(Code) - Extension Scripts](https://github.com/CarlFK/voctomix-outcasts)

vocto-outcasts are extra scripts for interfacing with voctocore. They allow capture from multiple different types of video sources.
