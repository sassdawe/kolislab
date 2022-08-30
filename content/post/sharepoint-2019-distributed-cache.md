---
author: David Sass
categories:
- DistributedCache
- SharePoint
- "2019"
- Error
- PowerShell
date: "2019-01-20T18:13:03Z"
description: ""
draft: false
image: /images/2019/01/sps2019-dc-errors.png.jpg
slug: sharepoint-2019-distributed-cache
tags:
- DistributedCache
- SharePoint
- "2019"
- Error
- PowerShell
title: SharePoint 2019 and Distributed Cache failure
---


In some rare cases, right after the creation of a SharePoint 2019 farm, the Distributed Cache service could crash producing:
- **.NET Runtime Error** with Event Id **1026**
- **Application Error** with Event Id **1000**

And none of the other solutions are able to fix the service. In this case try to:

  1. stop the cache cluster
  2. export the cache cluster settings
  2. edit the settings by changing the partition count
  3. import the settings 
  4. start and stop the service again
  5. revert back the configuration and start the cluster

with following scripts:

``` powershell
  Use-CacheCluster

  # Stop the Caching Services on all cache hosts in the cluster.
  Stop-CacheCluster

  # Export existing cache cluster configuration
  Export-CacheClusterConfig -File c:\temp\appfabconfig.txt
  
  # make a copy of "appfabconfig.txt" and name it "appfabconfig2.txt"
  # Edit appfabconfig2.txt
  # Change <caches partitionCount="256" to "128"

  # Import the changes.
  Import-CacheClusterConfig c:\temp\appfabconfig2.txt

  # Start the Caching Services on all cache hosts in the cluster.
  Start-CacheCluster
  
  # Stop the Caching Services on all cache hosts in the cluster.
  Stop-CacheCluster

  # Import the original settings
  Import-CacheClusterConfig c:\temp\appfabconfig.txt

  # Start the Caching Services on all cache hosts in the cluster.
  Start-CacheCluster
```
  
This should fix it. Reference [Distributed Cache crashing under SharePoint 2019 running on WS2019](https://techcommunity.microsoft.com/t5/SharePoint/Distributed-Cache-crashing-under-SharePoint-2019-running-on/m-p/319683)



