+++
author = "David Sass"
categories = ["Windows Terminal", "Terminal", "MC", "Howto"]
date = 2021-04-24T14:44:35Z
description = ""
draft = false
image = "terminal-mc.png"
slug = "mc-meets-terminal"
summary = "Install and add Midnight Commander (MC) to Windows Terminal."
tags = ["Windows Terminal", "Terminal", "MC", "Howto"]
title = "Midnight Commander meets Windows Terminal"

+++


Those of us who were born into the DOS era probably all used Norton Commander (NC), the famous blue-white two panel file manager. Of course, NC is long gone, but is has a clone called [Midnight Commander](https://github.com/MidnightCommander/mc) or MC for sort, created by [Miguel de Icaza](https://en.wikipedia.org/wiki/Miguel_de_Icaza). Let's look at how can we install MC on Windows these days.

## Options to install Midnight Commander
These are the source from where we can install MC
1. [Winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/) (public preview)
2. Chocolatey (directly)
4. From [Official Website](http://midnight-commander.org/)

I let you do the installation (I used Winget).

## Setting up the Terminal
After the installation of MC, we need to add a new `profile` to Windows Terminal. Here is an example:
```
{
   "hidden": false,
   "name": "Midnight Commander",
   "commandline": "C:\\Program Files (x86)\\Midnight Commander\\mc.exe",
   "guid": "{47b22a91-371e-4029-8836-627c48a18575}",
   "tabTitle": "Midnight Commander",
   "icon": "C:\\Users\\SassDavid\\Pictures\\mc.icon.png"
},
```

And we are done.



