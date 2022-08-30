---
author: David Sass
categories:
- PowerShell
- Whiteboard
- Admin
date: "2018-06-27T20:45:00Z"
description: ""
draft: false
image: /images/2019/01/2018-07-05.png
slug: whiteboard-powershell
tags:
- PowerShell
- Whiteboard
- Admin
title: Whiteboard PowerShell
---


People leave the organization. They might retire or look for bigger challenges. Either way as an Office 365 Administrator you have to deal with the situation.

It's easy with SharePoint or with Exchange because they are older services, well documented and you probably have experience with them. So you know how to change ownership of a Site Collection or a Mailbox.

But that is not the case with the Whiteboard Service. It's new and not really well documented. 

There is an unannounced PowerShell module available in the PowerShell Gallery: [https://www.powershellgallery.com/packages/**WhiteboardAdmin**](https://www.powershellgallery.com/packages/WhiteboardAdmin)

Also, there is some documentation on the subject but not too much [https://docs.microsoft.com/en-us/powershell/module/**whiteboard**/](https://docs.microsoft.com/en-us/powershell/module/whiteboard/)
I haven't found any information or announcement about the module or where can I get it but it was mentioned in the [Office 365 Data Subject Requests for the GDPR](https://docs.microsoft.com/en-us/microsoft-365/compliance/gdpr-dsr-office365#whiteboard-preview) article.

The documentation is about the **Whiteboard** module, but the module was publish to the Gallery with the name of **WhiteboardAdmin**. 

You can install the module as usual `Install-Module WhiteboardAdmin -Scope CurrentUser` 

I tried using it on two different machine but it only worked ones.

The module uses the **Microsoft.IdentityModel.Clients.ActiveDirectory.dll** with the `3.13.40321.2200` version for comparation the **AzureAD** PowerShell module is using the `3.19.50615.2102` version.

![Installing WhiteboardAdmin PowerShell module](/content/images/2019/01/2018-07-08.png)



