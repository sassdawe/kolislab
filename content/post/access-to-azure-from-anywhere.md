---
author: David Sass
categories:
- Azure
- Azure CLI
- Cloud Shell
- PowerShell
- Shell
- Red Team
- Security
date: "2019-02-12T06:00:00Z"
description: ""
draft: false
image: /images/2019/02/az-2.jpg
slug: access-to-azure-from-anywhere
tags:
- Azure
- Azure CLI
- Cloud Shell
- PowerShell
- Shell
- Red Team
- Security
title: Red Team type of Access to Azure from Anywhere
---


## ! Warning !
> **The content of this post might not be aligned with you company's internal IT security rules, I suggest to talk to your manager and request an approval before you try this out in any of your environments.**

## Introduction, setting the stage
*We should start with an overall picture of an imaginary Enterprise network*

**Imagine that your ADFS is sitting behind the corporate firewall and your users cannot access it from the Internet without VPN.**

Now continue.. **Imagine that your company is using Office 365** (or Microsoft 365) **with Federated Authentication which requires access to that ADFS server which is not accessible from anywhere except your company network.**

Just to keep things interested.. **Imagine that your users have to use Smart Cards to logon into their workstations** and this gives you Multi-factor Authentication.

Finally just to color the picture.. **Imagine that you're using Azure AD Privileged ID Management (PIM) from Privileged Admin Workstations.** But the regular user base has access to different Azure subscriptions running different part of your Corporate environment in the Cloud.

I'd say that we created a pretty good situation here from the security standpoint and a quite common one from the usage standpoint.

## Innovation happens
*In this section I'm trying to give you a picture about Microsoft's innovation*

In the past, before 2016 (give or take), our options to access and administer Azure were the [Portal](https://portal.azure.com), the Azure PowerShell module and Visual Studio. But slowly Microsoft is releasing new tools to help us with our jobs. 

Today we can use Azure App on our mobile devices, the **Azure Cloud Shell** in our browsers to create and manage resources and we can use the **Azure CLI** as well - which is a cross platform command line interface - running on most of the Operating Systems.

With these new tools we have new ways to do and automate our jobs and these tools use newer technologies under their hood.

## New technologies
One of these new technology is part of oAuth which helps with Authentication.

### Authentication with Azure Cloud Shell
When you open the Azure Cloud Shell it uses your browser's session to authenticate you seamlessly, you just have to wait a couple of seconds and you can start using it

![azure-cloud-shell.png-1](/content/images/2019/02/azure-cloud-shell.png-1.jpg)

The Azure Cloud Shell in the background is an Ubuntu Linux virtual machine running in Azure and it comes with the Azure CLI pre-installed as you can see it in the picture above. 

### Authentication with Azure CLI
We have a couple of options authenticating with the Azure CLI and because of the SSO we can skip the the authentication in the browser.

![az-login-h](/content/images/2019/02/az-login-h.jpg)

But from Azure CLI running on your machine you've to authenticate somehow, which is easy because using the `az login` command your browser will open where you can sign-in.

![az-login](/content/images/2019/02/az-login.jpg)

But if you're on a device without a browser or you want to connect to a different subscription from Azure Cloud Shell you need to use device code flow option:
`az login --use-device-code`

### Device Code Flow
On devices where the interactive login process isn't available the Device Code Flow lets you authenticate using a different machine and providing a generated code from the console session.

In the below picture try to imagine that the PowerShell console is running on a different machine where the only option to authenticate is the Device Code Flow.

{{< figure src="/images/2019/02/az-login-device-code.jpg" >}}

## Where are we going with this?
I hope you're still here, because this is the point where this post is starting to be interesting - at least for me.

In our situation that we all imagined a couple of minutes ago... We'd a stong dependenicy on our corporate network because we needed to use our ADFS service to authenticate, right? Right.

> *Did you realize that the Azure Cloud Shell is actually not running on your company network?* 

That's right. You're entry point is the browser running on your machine and exposing your browser's session to Azure Cloud Shell. Realizing this took me some time, so it's completly OK to learn this just now!

**The question: Can we use Azure CLI from the anywhere on internet to access our Azure resources, including Azure AD?**

**Yes, we can!** *Reminder, this is the point where you need to talk to your manager before you do something which isn't allowed by your company.*

## Exposures
### General Exposure
When you're using the Azure CLI you'll have the same level of access to all resources in Azure what you'd have using the Azure portal from your machine connected to the company network.
> If you've owner level of access to a subscription you'll have owner level of access and you can do anything with that subscription.

In case you're allowed to use the Azure CLI from the Internet you've to make sure your threat model is ready to deal with this situation.
### Attack vector I.
A different exposure or we can say attack vector is when someone creates a rouge Azure CLI version and starts distributing it, and with this malicious version when you initiate a connection, the Rouge CLI could connect to a C&C server and initiate a rouge connection from that C&C machine and give back the device code your Rouge CLI to show you. So when you're authenticating in your browser you're actually letting the C&C server in into your Azure Subscriptions with your access level.  
### Attack vector II.
The Azure CLI is caching the session token in your file system using encryption. If an attacker can extract your session token and decrypt it then you'll be having a really bad day.

## Mitigation
So far I didn't find anything. I'm not sure if we can prevent the usage of the Azure CLI and even if we can prevent it then we'd probably mess some things up with the Azure Cloud Shell as well.
*If I learn anything useful in the future I'll update this post.* 

## The whole process
You'll need at least two machines with Internet connection, one of them has to be located on the company network so you could access you ADFS server.
1. On the remote machine use the Azure CLI and the Device Code Flow to initiate a login process `az login --use-device-code` this will generate the required code.
2. On the company network connected machine open [https://microsoft.com/devicelogin](https://microsoft.com/devicelogin) and enter the code from the remote machine to authenticate.
3. On the remote machine the you'll gain access the Azure.



