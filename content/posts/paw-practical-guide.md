+++
author = "David Sass"
categories = ["Azure", "AzureAD", "Security", "PAW", "Admin", "MFA"]
date = 2019-05-26T14:22:22Z
description = ""
draft = false
image = "/images/2019/05/__DEFCON-1.jpg"
slug = "paw-practical-guide"
tags = ["Azure", "AzureAD", "Security", "PAW", "Admin", "MFA"]
title = "Practical guide to manage the PAW machines"

+++


## Where we are

We already have some quality materials - like the [Microsoft Cybersecurity Reference Architecture](https://gallery.technet.microsoft.com/Cybersecurity-Reference-883fb54c) - about the security best practices of the Azure Cloud including possibly everything related to *Cybersecurity* but I feel that something is missing and I'll tell you why in a moment.
![_ReferenceArch](/content/images/2019/05/_ReferenceArch.jpg)
If you take a closer look at the reference material you'll see a <font style="color:red">red bar</font> titled: `Privileged Admin Workstations (PAWs)` and in the right side of that bar you'll see *ESAE Admin Forest* which is described here [ESAE Administrative Forest Design Approach](https://docs.microsoft.com/en-us/windows-server/identity/securing-privileged-access/securing-privileged-access-reference-material#esae-administrative-forest-design-approach) 

> ESAE stands for **Enhanced Security Administrative Environment**

Stop for a moment and think about why would we need a dedicated admin forest to manage the PAW boxes? The answer is in the [Active Directory administrative tier model](https://docs.microsoft.com/en-us/windows-server/identity/securing-privileged-access/securing-privileged-access-reference-material) which is described at the top of the article.
![paw_rm_fig4](/content/images/2019/05/paw_rm_fig4.jpg)

## The challenge

The challenge we face here is that someone has to manage the PAW machines which are used to conduct highly privileged activities but the group responsible for the PAWs should not be the same group which manages the productivity devices of the rest of the organization. But as of today (5/26/2019) we cannot do that using Azure AD and Intune. The Device Administrator role has rights to manage all Intune managed devices, which does not meet the requirements of the previously mentioned tier model.

> Within larger or more security focused companies there is a clear segregation of duties and segregation of infrastructure elements as well. Not because we don't trust our admins but because they are the targets of attackers. In an unfortunate event where a machine or an account used by an admin gets compromised the attacker will have much better odds to achieve its goals.

## The solution

Following the Reference Architecture, we must segregate the PAW boxes from the rest of the organization and the only option to do that is to create the cloud version of the ESAE Admin Forest.

> I like to call it `Red Cloud`

### In practice

1. We've to create a new Azure AD environment, I suggest purchasing *Microsoft 365 E5* licenses for this environment and something lightweight like the Surface Pro 6 to be used as the PAWs. Using M365 E5, the PAW machines can run Windows 10 Enterprise, be managed by Intune and be protected by Microsoft Defender ATP and everything else which is suggested or will be suggested by these pages [Defender Secure Score](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/overview-secure-score) and [Level 1 enterprise administrator workstation security configuration (work in progress)](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-security-configuration-framework/level-1-enterprise-administrator-security).

2. We've to invite these Red Cloud accounts into our Production Tenant as B2B guest accounts and convert them into members using the AzureAD PowerShell module and the following cmdlet: `Set-AzureADUser -UserType Member`.

3. We'll have to grant them licenses in the Production Tenant. I suggest the followings: AAD Premium P1 & P2, Azure Advanced Threat Protection, Azure Information Protection Premium P1 & P2, Microsoft Azure Multi-Factor Authentication, Microsoft Cloud App Security, Microsoft Intune, Windows 10 Enterprise, Windows Defender ATP.

4. Using Azure Active Directory Privileged Identity Management (PIM), we can grant the required roles for the Red Cloud accounts. These roles can be: Global Admin, Security Administrator, etc.

### Limitations

Not everything works together nicely with the Red Cloud approach, based on my experience the [Azure AD Portal](https://aad.portal.azure.com) and the **Azure ATP** portal works just fine, but the __Microsoft Cloud App Security__ and the __Microsoft Defender ATP__ portal do not support the guest accounts, I hope this will change in the future.

> Fortunately, these limitations do not affect our goal here :)

We wanted to have the ability to manage the PAWs from a different Tenant and not from the Production environment where the productivity devices are located, and we achieved this. We can logon to the PAW boxes and access the Production AAD using our Red Cloud IDs and leverage PIM to elevate our access level and manage the Tenant as we see fit.

In the other way around, the Device Administrators of the Production Tenant cannot control the PAW boxes and we'll be protected in case an attacker manages to breach any of our device administrators of the Production Tenant.



