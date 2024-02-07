+++
author = "David Sass"
date = 2019-01-13T18:13:02Z
description = ""
draft = true
slug = "how-to-move-sharepoint-artifacts-between-environments"
title = "How to move SharePoint Artifacts between environments"

+++


You need to move SharePoint Artifacts between Dev, UAT and Production but you don't know how to start and what tools can be used in which situation?

Don't worry, this post was written to help you get started.

#### Options
You have the following options:

 - Move with **#ContentDatabase**
 - Backup and restore **#SPSite**
 - Export/import **#SPSite**
 - Export/import **#SPWeb** or **#SPList**
 - Save as Template **#SPWeb** or **#SPList**
 - Save as Provisioning Template **#SPWeb**
 - Use custom **#PowerShell** script

Lets go into the details

##### Move with **#ContentDatabase**
Permissions
  To move a SQL database you need access to the SQL Server with the appropriate permissions or you need to ask the Database Administrators' help.
Complexity
  I would say medium. 
Limitations
Pros
Cons

##### Backup and restore **#SPSite**
Permissions
Complexity
Limitations
Pros
Cons



