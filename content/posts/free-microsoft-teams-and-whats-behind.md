+++
author = "David Sass"
categories = ["GDPR", "Office365", "MicrosoftTeams", "Office365Lite", "AzureAD", "Security&Compliance", "Workaround"]
date = 2018-07-19T06:44:00Z
description = ""
draft = false
image = "/images/2018/12/teams-loadin.jpg"
slug = "free-microsoft-teams-and-whats-behind"
tags = ["GDPR", "Office365", "MicrosoftTeams", "Office365Lite", "AzureAD", "Security&Compliance", "Workaround"]
title = "Free Microsoft Teams and what's behind"

+++


### Microsoft Teams is here - for Free
The offering *was designed to small business and groups of co-workers that don’t have commercial Office 365 subscriptions*. You can read the official announcement on the [Microsoft Teams Blog](https://techcommunity.microsoft.com/t5/Microsoft-Teams-Blog/Introducing-a-free-version-of-Microsoft-Teams/ba-p/214592) 

<iframe width="560" height="315" src="https://www.youtube.com/embed/KAvjlllE5x4?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

### How to get it?
Using the [http://office.com/teams](http://office.com/teams) link, you will be redirected to the right page where you can sign-up for the free service.
You can even use your existing Microsoft Account (MSA for sort) to register.

{{< figure src="/images/2018/12/teams-sign-up.png" caption="Teams sign up form." >}}

### First steps
After you successfully registered and the Teams application or Web App has loaded you can invite your team members

{{< figure src="/images/2018/12/teams-invite.png" caption="Invite team members to Teams." >}}

<p>When you're in the <font style="color:purple"><b>General channel</b></font> view of the first Team (in my case it's called <i>tms</i>), you can see the <font style="color:blue"><b>members of your team</b></font>. You can <font style="color:green"><b>invite others to be members of your organization</b></font>. And you can <font style="color:red"><b>invite external guests</b></font> as well.</p>

{{< figure src="/images/2018/12/Teams-Start-Page.png" caption="Teams start page." >}}

###What is included?
With the Free offering you get the following benefits for up to 300 people.

  - Unlimited chat messages and search.
  - Built-in audio and video calling for individuals, groups, and full team meetups.
  - 10 GB of team file storage plus additional 2 GB per person for personal storage.
  - Integrated, real-time content creation with Office Online apps, including built-in Word, Excel, PowerPoint, and OneNote.
  - Unlimited app integrations with 140+ business apps to choose from—including Adobe, Evernote, and Trello.
  - Ability to communicate and collaborate with anyone inside or outside your organization, backed by Microsoft’s secure, global infrastructure.

### Learn everything about Teams
There is [Microsoft Teams YouTube channel](https://www.youtube.com/channel/UC0--6byMAe9otLougDShhUw) where you can learn everything. How to use Teams and make the most out of it.

### Behind the curtains
With the Free Microsoft Teams subscription we can say that you get an **#Office365Lite** subscription which provides the background services.  
Let me go through all these one by one.

#### SharePoint Online
You get **#SharePoint Online** in the background which provides the file storage capabilities of Microsoft Teams. You can find the link on the *Files* tab:

{{< figure src="/images/2018/12/Teams-SharePoint-behind.png" caption="Link to SharePoint Online." >}}

#### OneDrive
Also, you get **#OneDrive for Business** in the background. You can see it when you want to share a file with someone you **Chat** with

{{< figure src="/images/2018/12/Teams-OneDrive.png" caption="OneDrive behind Teams." >}}

#### Office 365 Admin  Center
I call this whole setup to **#Office365Lite** indicating that you cannot access the [Office Admin Center](https://admin.microsoft.com/AdminPortal/Home#/homepage) but there is a *workaround* and we will talk about it later in this post.

{{< figure src="/images/2018/12/office-admin-center-vs-msa.png" caption="Cannot log in into the Admin Center using MSA." >}}

#### Azure Active Directory
Every Office 365 Tenant have an **#AzureAD** in the background which provides the user and group managemet and a lot more other things. The good news is that you can access **#AzureAD** using the [https://aad.portal.azure.com/](https://aad.portal.azure.com/) URL. As you can see the green highlighting you got the [Azure AD for Office 365](https://support.office.com/en-us/article/understanding-office-365-identity-and-azure-active-directory-06a189e7-5ec6-4af2-94bf-a22ea225a7a9) package:

{{< figure src="/images/2018/12/AAD-behind-teams.png" caption="AAD behind Teams." >}}

##### User Management
With **#AzureAD** you can manage your users and guests in the Tenant. You can even create real <font style="color:purple">*Organizational accounts*</font> which are not mapped to any Microsoft Accounts.
As you can see <font style="color:green">your MSA account is mapped to this **admin@tenant.onmicrosoft.com**</font> account. *Which is a pretty nice solution, I was hoping to see this a long time now.* Technically your MSA is an alternative login name tied to this <font style="color:green">admin@tenant.onmicrosoft.com</font> account.
You can even create a brand new <font style="color:purple">**Global Administrator**</font> account which can be used to that previously mentioned **#workaround** later:

{{< figure src="/images/2018/12/Teams-aad-users.png" caption="Teams users in AAD." >}}

Last but not least, in my case there is one <font style="color:blue">**external user**</font> already in the Tenant, which was invited using Microsoft Teams.
### THE Workaround
Now with the new **Global Administrator** account you can try to access the [Office Admin Center](https://admin.microsoft.com/AdminPortal/Home#/homepage) and finally you will be able to log in. As you can see in the picture below I'm using the new Global Admin account and I can search for my other account as well.

And probably the most important thing is the <font style="color:red">**Compliance admin center!**</font> 

If you have someone at your organization responsible for **#GDPR** Compliance and **Cyber Security** they will need access to the [Security and Compliance Center](https://products.office.com/en/business/security-and-compliance)

{{< figure src="/images/2018/12/teams-global-admin-center.png" caption="Office 365 Admin Center." >}}

#### Security & Compliance Center
Just a quick look, I will write more about the SCC in a different post.

{{< figure src="/images/2018/12/Teams-SCC.png" caption="Security and Compliance Center." >}}



