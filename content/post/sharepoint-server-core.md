---
author: David Sass
categories:
- SharePoint
date: "2018-07-01T11:06:00Z"
description: ""
draft: false
slug: sharepoint-server-core
tags:
- SharePoint
title: SharePoint Server Core
---


`!IMPORTANT! This is not supported by Microsoft. Never do this in your production system.`

Now, after we're ready with the disclaimer, let the fun begin.

I always liked the idea of the Windows Server's Core Edition. *Who needs the GUI, right?*

And I was always disappointed when Microsoft hasn't announced the support of Windows Server Core for SharePoint Server.

I was planning to play with this scenario for years but I never took the time to actually try it out.

Finally the day arrived and I had time to remove the Graphical User Interface from my **SharePoint Server 2013** Developer box.

The machine was running with **Windows Server 2012 R2** and has the following components installed: *Windows Server Active Directory*, *MS SQL Server 2014* and *SharePoint Server 2013*.

I ran the following PowerShell cmdlet:

```PowerShell
Uninstall-WindowsFeature -Name "Desktop-Experience","Server-GUI-Shell" -Restart
```

And after the reboot I verified my Farm is still there:
![SharePoint Server Core](/content/images/2019/01/sharepoint-server-core.png)

I will be honest, I will not keep this machine and use it because I need the free space for my next project.

The next project is to install SharePoint Server on Windows Server Core without the GUI.



