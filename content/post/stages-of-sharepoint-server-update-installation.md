---
author: David Sass
date: "2019-01-13T18:04:59Z"
description: ""
draft: true
slug: stages-of-sharepoint-server-update-installation
title: Stages of SharePoint Server Update Installation
---


In the world of the SharePoint CU updates we can distinct a couple of stages during the installation process.

1. Binary installation
2. Farm upgrade

### 1. Binary installation
In this stage you simply install the update (CU or PU doesn't matter) on all of your SharePoint Servers in the Farm.

Installing the binaries will extract the installation package and update the necessary files on the files system. This process can be extremely slow if your Farm is running.

Encourage you to read Russ Maxwell's post, [Why SharePoint 2013 Cumulative Update takes 5 hours to install?](https://blogs.msdn.microsoft.com/russmax/2013/04/01/why-sharepoint-2013-cumulative-update-takes-5-hours-to-install/)

> **Note**  
> The binaries will only be updated in the *Program Files* and *Windows* folders. Your IIS folders will sill contain the old **.DLL** files after you finish installing the update package. This means you need to complete the second stage of the process as well.

### 2. Farm upgrade
Now the Farm update stage contains multiple sub-stages:

* Configuration database upgrade
* Service Application database upgrade
* Updating binaries in ISS folders
* Content database upgrade



