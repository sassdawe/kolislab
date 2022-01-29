+++
author = "David Sass"
categories = ["Cloud", "Security", "Azure", "Admin", "Responsibility"]
date = 2019-10-13T06:58:29Z
description = ""
draft = false
image = "/images/2019/10/Annotation-2019-10-13-083720-1.jpg"
slug = "cloud-security-model"
tags = ["Cloud", "Security", "Azure", "Admin", "Responsibility"]
title = "Cloud Security & Responsibility"

+++


After seeing that some of us - if not most of us - is still able to mess up the configuration of the cloud hosted resources and therefor open up the possibility of some information disclosures, I thought that we need an updated diagram about our responsibilities.

{{< figure src="/images/2019/10/Annotation-2019-10-13-083720.jpg" caption="Updated Cloud Security Responsibility Model" >}}

The yellow items are my addition, and they show where most of the challenges are located. For a "capability team" which never had to deal with virtual networks and access management of the resources before the cloud era, I believe these are the parts of the cloud where most of the learning is needed, and could have an epic failure.

One example cloud be a **Storage account**, do you allow management portal access to your storage account to all of your people to read the access keys, and configuration? Do you allow unrestricted network access to your Storage account from the internet? I hope both of the answers are "no", because if anyone can get to the access keys and go home to download your company information from your storage account and do all of this without any audit trails you my friend have a problem.

