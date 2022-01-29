+++
author = "David Sass"
categories = ["Office365", "GDPR", "OME", "Azure Information Protection", "AIP", "Message encryption", "Exchange Online"]
date = 2018-06-08T18:41:00Z
description = ""
draft = false
slug = "changes-to-your-azure-information-protection-configuration"
tags = ["Office365", "GDPR", "OME", "Azure Information Protection", "AIP", "Message encryption", "Exchange Online"]
title = "Changes to your Azure Information Protection configuration"

+++


> **Plan for change** 

> We are making some changes to your Azure Information Protection (AIP) configuration. Starting July 1, 2018, we will be enabling the protection features in Azure Information Protection to customers with the eligible Office 365 licenses.

During the fall of 2017 MSFT announced some features for **Microsoft 365** to help their customers to meet the requirements of **GDPR**. 

The original announcement is located here: [New Microsoft 365 features to accelerate GDPR compliance](https://cloudblogs.microsoft.com/microsoftsecure/2017/09/25/new-microsoft-365-features-to-accelerate-gdpr-compliance/) and this post is about this small part of the announcement:
> Also, we are announcing the **general availability** of improvements to **Office 365 message encryption**, which makes it easier to share protected emails with anybody – inside or outside of your organization. Recipients can view protected Office 365 emails on a variety of devices, using common email clients or even consumer email services such as Gmail, Outlook.com, and Live.com.

MSFT started to roll out the updated Message encryption capabilities back in February of 2018.

If you are interested about the technical details and how OME actually works you can find the details here: [Encrypt only rolling out starting today in Office 365 Message Encryption](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Encrypt-only-rolling-out-starting-today-in-Office-365-Message/ba-p/162718)

One *fun fact*, ```if you are using AD RMS in your environment you should opt-out before 2018-06-30```.

> **If you are using AD RMS**

>If your organization is using AD RMS, then you must opt-out of this change. To opt-out, please connect to Exchange Online PowerShell as a user with the global administrator role (see https://aka.ms/exopowershell) and run the following code after authenticating:

>```Set-IRMConfiguration -AutomaticServiceUpdateEnabled $false```

>If you wish to enable the new Office 365 Message Encryption capabilities, please view our [documentation on migrating to Azure Information Protection](https://docs.microsoft.com/azure/information-protection/plan-design/migrate-from-ad-rms-to-azure-rms).



