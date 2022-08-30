---
author: David Sass
categories:
- PowerShell
- OneLiner
- Security
date: "2018-10-29T05:59:00Z"
description: ""
draft: false
image: /images/2018/12/2018-10-29.png
slug: adding-users-to-local-groups
tags:
- PowerShell
- OneLiner
- Security
title: Adding Users to Local Groups
---


I've been playing with the new SharePoint Server 2019 in the last  couple of days and after I joined my new VM to the Domain I needed to  add my SP_SETUP account to the local Administrators group but I didn't want to log in with my Domain Admin to the server.

In the past we had to use the **[ADSI]** type accelerator to add a local or domain user to a Local Group.

But time pass and starting from PowerShell Version 5.1 there is an official module from Microsoft called [Microsoft.PowerShell.LocalAccounts](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/?view=powershell-5.1) and we can use the `Add-LocalGroupMember` cmdlet as a simple ***#one-liner*** to achieve our task.

It works like a charm in Remote PowerShell Sessions as well.

```
Add-LocalGroupMember -Group "Administrators" -Member "Admin02", "MicrosoftAccount\username@Outlook.com", "AzureAD\DavidChew@contoso.com", "CONTOSO\Domain Admins"
```



