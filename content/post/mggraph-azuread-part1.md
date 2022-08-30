---
author: David Sass
categories:
- Microsoft Graph
- Graph
- AzureAD
- PowerShell
- BYOT
date: "2021-06-28T05:46:22Z"
description: ""
draft: false
image: __GHOST_URL__/content/images/2021/06/2021-06-27-193228.png
slug: mggraph-azuread-part1
summary: 'Best practices using the Microsoft Graph PowerShell SDK to for AzureAD automation,
  part 1. '
tags:
- Microsoft Graph
- Graph
- AzureAD
- PowerShell
- BYOT
title: Microsoft Graph PowerShell SDK for Azure AD - Part 1
---


Microsoft Graph is vast, and it isn't just about **AzureAD**, Microsoft Graph is about everything (except maybe Azure DevOps...). And when we only want to work with **AzureAD** we really need to be specific about which parts of the SDK we want to download and use.

# Installation
We should only install the minimum required modules using these lines without admin rights, I suggest the use of `-Scope CurrentUser` on personal devices.

```PowerShell
Install-Module Microsoft.Graph.Authentication -Scope CurrentUser
Install-Module Microsoft.Graph.Users -Scope CurrentUser
Install-Module Microsoft.Graph.Groups -Scope CurrentUser
```

On a shared device, for example on a server, I suggest you installing with admin rights and without `-Scope` parameter. This way we need less disk space. 

# Authentication

The cleanest and most error free approach for connecting to Microsoft Graph is the certificate-based authentication in the name of an Azure AD Application. Why? Because it is not interactive, works with scheduled tasks, and with Azure Functions as well.

```PowerShell
Connect-MGGraph -ClientId "" -CertificateThumbprint "" -TenantId ""
```

We can use [Mikael Svenson's blog](https://www.techmikael.com/2018/04/how-to-run-azuread-powershell.html) as base for application registration and certificate generation. 

# Permissions

> **Important**
> For our first steps with the Microsoft Graph PowerShell SDK, we should only use our personal developer tenant. Never try out new things in production! Follow the *Bring Your Own Tenant* **#BYOT** approach.

For the most basic read-only access I suggest granting **Directory Reader** role for the service principal of our newly registered application.

# Usage

The good news is that the functions provided by the SDK use the `Mg` prefix (currently with v1.6.0) for example `Get-MgUser`. The bad news are:

- The verbs are not always the same what we got used to with the **AzureAD** module. There is no `Set-MgUser` instead we have `Update-MgUser`
- The parameter names are different we were using `-ObjectID` with **AzureAD** but with the Graph SDK we will need to use `-UserId`, `-GroupId`, etc. 

That said, have fun and if you have feedback or experience any bugs head over to [GitHub and submit an issue](https://github.com/microsoftgraph/msgraph-sdk-powershell/issues)





