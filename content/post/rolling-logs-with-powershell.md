---
author: David Sass
categories:
- PowerShell
- logs
- debug
- gist
date: "2021-07-25T12:41:00Z"
description: ""
draft: false
slug: rolling-logs-with-powershell
summary: Rolling logs will help you understand what's happening in your script, live.
tags:
- PowerShell
- logs
- debug
- gist
title: Rolling logs with PowerShell
---


I saw a video once on YouTube where the presenter had a PowerShell window open with rolling logs from a log file. I don't remember which vide was that, or who was the presenter, but I have saved and tweaked their code.

<script src="https://gist.github.com/sassdawe/5ca66461d86484c556de1537c99b0ebd.js"></script>

## Usage

We can just simply start the debugger console using `dbps` thanks to the alias.

And write logs into the log file like this `"Hello PowerShell" >> $DebugLog` and it will show up in the debugger window.



