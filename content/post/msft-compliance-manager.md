---
author: David Sass
categories:
- Compliance
- Microsoft Cloud
- Office365
- Azure
- GDPR
date: "2019-02-03T22:24:52Z"
description: ""
draft: false
image: /images/2019/02/compliance-manager-tour.jpg
slug: msft-compliance-manager
tags:
- Compliance
- Microsoft Cloud
- Office365
- Azure
- GDPR
title: Microsoft Azure Compliance Manager
---


As you probably know **Microsoft** has a **[Service Trust Portal](https://servicetrust.microsoft.com/ViewPage/HomePage)** from where you can get the **#Compliance** related information for all Microsoft cloud cervices.

You can even download the [Security and Compliance Blueprints](https://servicetrust.microsoft.com/ViewPage/BlueprintOverview)

{{< figure src="/images/2019/02/blueprints.png-1.jpg" >}}

## Compliance Manager
One of the most helpful offering of the Service Trust Portal is the **Compliance Manager**, a workflow-based risk assessment tool in which you can get a good overview of your Compliance score which will reflect on how Microsoft understood the different regulations/certifications and the controls required to meet the requirements of these.

You can find more information in the [official documentation](https://docs.microsoft.com/en-us/office365/securitycompliance/meet-data-protection-and-regulatory-reqs-using-microsoft-cloud), like *48+ minutes to read* more information. 

As you can see on the bellow picture there are built in assessments in which there are controls managed by Microsoft and controls which are your responsibility as the customer:

{{< figure src="/images/2019/02/azure-compliance.jpg" caption="Compliance Manager Dashboard" >}}

## How to use the Compliance Manager

Because Compliance Manager is a Risk Assessment tool, you can work with the existing assessments and you can create new ones as well. The permission model of the portal offers different roles to manage who can access the portal and what actions they can perform:

{{< figure src="/images/2019/02/compliance-manager-rbac-1.jpg" caption="Role Based Access Control of a Compliance Manager Portal" >}}

Now lets take a closer look into one of the built in assessments.

## Azure - GDPR
This is the overview of the Azure - GDPR assessment. On picture you can see the services included. I highlighted those I'm using or used in the past

{{< figure src="/images/2019/02/Azure-GDPR-1.jpg" caption="Details of Azure GDPR Assessment&nbsp;" >}}

When you open down the Customer Managed controls there are a couple of categories in which you can find the individual controls grouped together

{{< figure src="/images/2019/02/Azure-GDPR-control-categories-1.jpg" caption="List of Customer Managed Controls" >}}

I'm going to open one of them from the *Data protection by design and by default* category to show the details, this one is called *Transmission controls*

As you can see there are a couple of interesting sections here:
* The details of the matching articles from GDPR
* Customer actions, written with simple English which is my personal favorite part
* Options to assign the control to a responsible person and manage the lifecycle 
* Text boxes to put the implementation details of the control

{{< figure src="/images/2019/02/Azure-GDPR-TransmissionControl.png-1.jpg" caption="Transmission control" >}}

## Conclusion
*I'm not a certified compliance officer that's true, but I think I can try to provide a summary As-Is, and I suggest to consult with a lawyer before you make any implementation decisions*

The GDPR Assessment related to Azure is an overall assessment. I believe if you start implementing different application hosted on Azure you'll need to create new assessments for each and every one of those applications and it doesn't matter if they're in-house developed apps or a 3rd party Vendor's cloud based offering. If you get an audit you'll need to provide the evidence of the *paperwork* you did to comply with the regulations.
I suggest to use the Compliance Manager as a single location to store all you're risk assessments especially if they're related to the Microsoft Cloud.





