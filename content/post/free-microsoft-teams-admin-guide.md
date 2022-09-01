---
author: David Sass
categories:
- MicrosoftTeams
- AzureAD
- Office365
- Admin
- MFA
- Check list
date: "2020-03-06T22:10:00Z"
description: ""
draft: false
slug: free-microsoft-teams-admin-guide
tags:
- MicrosoftTeams
- AzureAD
- Office365
- Admin
- MFA
- Check list
title: Admin Guide for your Free Microsoft Teams Subscription (Updated)
---




## Microsoft Teams - The Admin's Check List
What do you want to do is to make sure that you've completed the following checklist:

* You're highly encouraged to create **additional Global Admin** accounts.
* You're highly encouraged to turn on the **Multi-Factor Authentication** for the Admin accounts.
* You're highly encouraged to **change the default technical contact** to a distribution group.
* You're highly encouraged to **update the Privacy Contact information**.
* You're highly encouraged to **turn on the Auditing**.

## Lets do this

### Create additional Global administrators
When you subscribed for the Free Microsoft Teams offering you were using a Microsoft Account and therefore you cannot access the [Office 365 Admin Center](https://admin.microsoft.com/AdminPortal/Home#/homepage). To overcome this situation you need to use the [Azure Active Directory admin center](https://aad.portal.azure.com/) to create a new - so called - organizational account. 

#### Create a new Azure Active Directory user
1. Log in to the Azure portal.
2. Select **Azure Active Directory** > **Users and groups** > **All users** > **New user**.
3. Enter details for the user, like **Name** and **User name**.  
4. Note the user’s full name and temporary password.
5. Select **Directory role**.
6. Assign role Global Administrator.
7. Log out of Azure and then log back in with the account you just created.You are prompted to change the user’s password.

*Now your new Global Admin account is ready.*

### Turn on the Multi-factor Authentication (Updated)
~~There is a new Conditional Access policy called **Baseline policy: Require MFA for admins** (Currently in preview on 23/07/2018). This is a free conditional access policy which doesn't require Azure AD Premium Subscription.~~

> [~~Announcement blog post~~](https://cloudblogs.microsoft.com/enterprisemobility/2018/06/22/baseline-security-policy-for-azure-ad-admin-accounts-in-public-preview/).
  
~~Staying in the [Azure AD portal](https://aad.portal.azure.com/), Select **Azure Active Directory** > **Conditional access** > **Baseline policy: Require MFA for admins** > **Use policy immediately** and **Save.**~~

Microsoft retried the Baseline Conditional Access Policies in February 2020, and replaced them with [**Security Defaults**](https://techcommunity.microsoft.com/t5/azure-active-directory-identity/introducing-security-defaults/ba-p/1061414).

Security Defaults will do followings:

* Enforce MFA for the privileged admin accounts
* Enforce MFA for all other user accounts too
* Block legacy authentication
* Requre MFA for accessing the priviliged adminstrative tools

Turning on security defaults is quite easy, you just have to open the [Azure AD admin center](https://aad.portal.microsoft.com) navigate to the Properties of your Azure AD, click on Manage Secrutiy Defaults, and enable security defaults.

> If your tenant was created on or after October 22nd, 2019, it’s possible you are experiencing the new secure-by-default behavior and already have security defaults enabled

{{< figure src="/images/2020/03/Annotation-2020-03-08-084432.jpg" caption="Security defaults control hidden with the tenant properties" >}}

Next time when a user tries to sign-in they will be redirected to a page to set up  Multi-factor authentication.

## Change the Contact information
Staying in the [Azure AD portal](https://aad.portal.azure.com/), Select **Azure Active Directory** > **Properties** and change the **Technical contact** and the **Global privacy contact**.

In the rare case when there is a breach in your **#Office365** subscription **@Microsoft** will use the **Global privacy contact** information to inform your organization. 
> Learn more about [Office 365 Breach Notification Under the GDPR](https://docs.microsoft.com/en-us/microsoft-365/compliance/gdpr-breach-office365)

## Turn on Auditing

Using one of the new Global Admins you need to navigate to the [Office 365 Admin Center](https://admin.microsoft.com/AdminPortal/Home#/homepage) and from the left navigation choose  **Admin center** > **Security & Compliance**
When you're on the [**Security & Compliance**](https://protection.office.com/?rfr=AdminCenter#/homepage) open the **Search & investigation** > **Audit log search** page and on the yellow top banner there should be a button to **Turn on Auditing**

{{< figure src="/images/2018/12/SCC-Auditing-1.png" >}}

After you successfully enabled the Audit log collection it could take up to 24 hours until you can use the Search capabilities of the portal.



