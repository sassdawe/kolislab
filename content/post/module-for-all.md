---
author: David Sass
categories:
- Module
- PowerShell
- pwsh
- PSModulePath
date: "2021-07-02T13:58:09Z"
description: ""
draft: false
slug: module-for-all
summary: Install a PowerShell module on Windows once and use it with both Windows
  PowerShell and PowerShell (core)
tags:
- Module
- PowerShell
- pwsh
- PSModulePath
title: Install Modules for both PowerShell editions
---


We have two PowerShell editions what we could use on Windows, these are **Windows PowerShell** and **PowerShell** (_Core)._ Now one of the challenges we face with the two editions comes from where they store the installed PowerShell modules. Depending on the folder, it's possible that we need to install a module twice and that means we'll need to keep both versions up-to-date independently from each other. **But there is a solution for this challenge!**

## Quick look at $env:PSModulePath

PowerShell (both editions) uses the **PSModulePath** environment variable `$env:PSModulePath` to store the list of folders which could be used to store PowerShell modules.

*Note: It is possible to extend the list of folders by editing the user or system level environment variable.*

Let's compare the two lists:

*Note: It is expected that the list of folders will not be the same on every computer. But there are some default folders on this list.*

| Windows PowerShell                 | PowerShell             |
| ---------------------------------- | ---------------------- |
| C:\Users\username\Documents\WindowsPowerShell\Modules | C:\Users\username\Documents\PowerShell\Modules |
|    | C:\Program Files\PowerShell\Modules |
|    | c:\program files\powershell\7-lts\Modules |
| **C:\Program Files\WindowsPowerShell\Modules** | **C:\Program Files\WindowsPowerShell\Modules** |
| C:\Windows\system32\WindowsPowerShell\v1.0\Modules | C:\Windows\system32\WindowsPowerShell\v1.0\Modules |
| C:\Program Files\Microsoft Monitoring Agent\Agent\PowerShell\ | C:\Program Files\Microsoft Monitoring Agent\Agent\PowerShell\ |
| C:\Program Files\Microsoft Monitoring Agent\Agent\AzureAutomation\7.3.1125.0 | C:\Program Files\Microsoft Monitoring Agent\Agent\AzureAutomation\7.3.1125.0 |

As you can see `C:\Program Files\WindowsPowerShell\Modules` is being used by both PowerShell editions, which means those modules which support both PowerShell editions could be placed - or installed - into this folder, and they will be visible for both editions. *And we only need to keep these modules updated once.* **\o/**

## How to install modules into this folder? 

The easiest way (if you ask me, and I'm writing this post which means I asked me) is running **Windows PowerShell** as an admin and execute `Install-Module` without using the `-Scope` parameter. For example:

```PowerShell
Install-Module Microsoft.PowerShell.SecretManagement, Microsoft.PowerShell.SecretStore
```

**That's it. Happy scripting!**

> PS: I highly encourage you to head over to Microsoft Tech Community and check out this awesome post from Thomas Maurer which inspired me to write host blog post
> [Stop typing PowerShell credentials in demos using PowerShell SecretManagement](https://techcommunity.microsoft.com/t5/itops-talk-blog/stop-typing-powershell-credentials-in-demos-using-powershell/ba-p/2272072)





