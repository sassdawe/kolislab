---
author: David Sass
categories:
- Compliance
- Security
- Office365
- GDPR
date: "2019-01-19T20:08:17Z"
description: ""
draft: false
image: /images/2019/01/images.png
slug: vet-the-apps
tags:
- Compliance
- Security
- Office365
- GDPR
title: How do I vet the third party applications
---


There are lots of third party software vendors focusing on applications and services to extend the functionality of Office 365. There is even a marketplace called [AppSource](https://appsource.microsoft.com/) where you can shop from these apps and services.

{{< figure src="/images/2019/01/AppSource.png" caption="AppSource" >}}

There are hundreds of applications in each category from where you just have to pick those you like and add them to **Office 365** but bare in mind that these apps will *ask for permissions* in the same way how apps are asking for permissions on your mobile device.

In this example you can see an Outlook Add-in and the permissions it requires, I highlighted some of them:

{{< figure src="/images/2019/01/add-in-permissions.png" caption="add-in-permissions" >}}

And a different but still Outlook Add-in:

{{< figure src="/images/2019/01/add-in-permissions-2.png" caption="add-in-permissions-2" >}}

### This is how I vet the applications

When I'm considering an application I want to try or use, I consider multiple things.

#### What do I know about the Creator of the app?

- How old is the company?
- How big or small the company?
- Did they have a Security Breach before? How long ago?
- Which company is using their products?
- Is the community talking about them or their Apps?

#### What does the App do?

- Does the App require more permissions then necessary to do its job?
- How can someone misuse the required permissions? (*What can happen if the Vendor is breached?*)

#### How the legal stuff looks like?

- Will my data be stored on the Vendor's servers?
- In which country they host their service?
- Was the App or the Vendor certified by anyone?
- What does **Office 365 Cloud App Security** tell me about the App or Service?

{{< figure src="/images/2019/01/Cloud-App-Sec.png" caption="Office 365 Cloud App Security" >}}

#### What is my overall impression?

After knowing the size of the company, their history, their legal and the publicly available information about their security stack... for me the key is **what my gut tells me?**

I know my data which is stored in my Office 365 Tenant, I know what value I'm expecting to get from the App or Service. At the end everything comes down to **Trust**.

### Difference between Companies and me

Probably the biggest difference between any Company and me is that I'm only responsible for  my Data and my Personal Information but the Companies have employees and usually stakeholders as well and the Companies are responsible for their proprietary information  and their employees Personal Information and in the EU we have #GDPR.
