+++
author = "David Sass"
date = 2019-07-16T20:34:02Z
description = ""
draft = true
slug = "how-licensing-should-work-with-an-enterprise-agreement"
title = "How Office 365 licensing should work"

+++


I'm an Office 365 E1 subscriber for personal use and there is one thing which isn't ideal with Office 365 and that is the licensing. Let me describe my situation.

# My situation

I'm an IT professional and I really like using the best practices for everything therefor I'm trying to use Privileged Identity Management and Segregation of Duties together to access and manage my Office 365 Tenant.

This means I've multiple accounts for Office 365 while I'm the only (living, real life) individual who uses the service as a member in the Azure Active Directory. My accounts are the followings:

* My primary account used for everyday tasks, with License and Service Admin roles using PIM
* My admin account leveraging PIM with Global Admin and other roles as well
* My breakglass account with standing Global Admin and Privileged Administrator roles
* And I even had some test accounts but I didn't used them so they were deleted.

The challange I face is that I've to assing licenses to the each of the accounts because for some of the services they are hard requirements while for other services they're not really required. Or to be able to administer something I've to have a license assigmed for the admin account as welll.

# The challenge

As an individual who is using Office 365 for personal gains, I find it quite hard to accept that I've to purchance multiple licenses so I could use my tenant in a secure and professional way.

# The Enterprise Situation

Microsoft recommends a similar setup for enterprises

