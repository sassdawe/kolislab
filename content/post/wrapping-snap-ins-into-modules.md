---
author: David Sass
categories:
- Windows PowerShell
- PowerShell
- Module
- Snap-in
- video
date: "2021-08-07T12:04:00Z"
description: ""
draft: false
slug: wrapping-snap-ins-into-modules
summary: Windows PowerShell snap-ins wrapped into modules will give us module auto-loading
  for the snap-ins.
tags:
- Windows PowerShell
- PowerShell
- Module
- Snap-in
- video
title: Wrapping snap-ins into modules
---


With other words: the anatomy of the [SharePoint2019Commands](https://github.com/sassdawe/SharePoint2019Commands) PowerShell module.

There are a couple of technologies out there in the world which implemented support for PowerShell but not with modules, instead they went with the more traditional Snap-ins. One of them - probably the most famous one - is:

> SharePoint Server

The snap-in used by SharePoint is called `Microsoft.SharePoint.PowerShell` and many SharePoint administrators have had unpleasant experience using it.

The challenge of snap-ins comes from the fact that they don't offer autoloading like how modules do since Windows PowerShell v3. which means every time we forget to run `Add-PSSnapin` we risk running into a **Command not found** exception.

The solution is to wrap the snap-in in question into a module and expose the commands in the module manifest, so the engine of Windows PowerShell can find the module and load it for us.

Now I'm going to stop typing, so the video below can tell you everything.

Enjoy!

{{< rawhtml >}}

<center><iframe src="https://player.vimeo.com/video/584223062" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></center>

<p><a href="https://vimeo.com/584223062">Wrapping snap-ins into Modules</a> from <a href="https://vimeo.com/sassdawe">SassDawe</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

{{< /rawhtml >}}
