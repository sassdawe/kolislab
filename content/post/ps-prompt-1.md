---
author: David Sass
categories:
- PowerShell
- Prompt
date: "2019-01-26T22:38:10Z"
description: ""
draft: false
image: /images/2019/01/prompt.png.jpg
slug: ps-prompt-1
tags:
- PowerShell
- Prompt
title: Show ♥ with PowerShell
---


I'm using a custom prompt within PowerShell to save space inside a console and place the current folder's path into the Title bar.

```
    function Prompt {
        $host.ui.RawUI.WindowTitle = $(Get-Location)
        Write-Host "PS " -NoNewLine
        Write-Host $([char]9829) -ForegroundColor Red -NoNewLine
        " > "
    }
```
![prompt-demo](/content/images/2019/01/prompt-demo.jpg)



