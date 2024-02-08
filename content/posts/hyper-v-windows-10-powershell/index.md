+++
author = "David Sass"
categories = ["Hyper-V", "AzureAD", "Windows", "PowerShell", "Local Group"]
date = 2020-11-05T22:33:51Z
description = ""
draft = false
image = "Screenshot-2020-11-05-233248.png"
slug = "hyper-v-windows-10-powershell"
summary = "Add-LocalGroupMember -Group \"Hyper-V Administrators\" -Member \"$(whoami)\""
tags = ["Hyper-V", "AzureAD", "Windows", "PowerShell", "Local Group"]
title = "Hyper-V, Windows 10, PowerShell"

+++


Add-LocalGroupMember -Group "Hyper-V Administrators" -Member "$(whoami)"

