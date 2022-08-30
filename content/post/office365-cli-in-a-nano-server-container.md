---
author: David Sass
categories:
- Office365
- PnP
- PowerShell
- Docker
- CLI
- Office365-CLI
date: "2018-06-06T21:23:00Z"
description: ""
draft: false
slug: office365-cli-in-a-nano-server-container
tags:
- Office365
- PnP
- PowerShell
- Docker
- CLI
- Office365-CLI
title: Office365-CLI in a Nano Server Container
---


I'm in general interested in everything [OfficeDevPnP](https://aka.ms/officedevpnp) but I'm not a developer. I like to think that I'm a Hacker, the old school *"do something which wasn't designed"* type of hacker.

These days I'm experimenting with Docker and I wanted to play with the [Office365-CLI](https://github.com/SharePoint/office365-cli) and I thought why not run it from a **Docker** container. And maybe, just to make it more interesting run it from a Nano Server.

So these were my initial thoughts which lead to this blog post.

##### Prerequisites
Reading the installation guide on GitHub I realized that I'll need **npm** which means I need to install **Node.js**.

##### The first challenge
Ok, but how can I install the node.js on a Nano Server inside a container? It would be nice to have a package manager for Windows. 
Wait! There is one and it is called [Chocolatey](http://chocolatey.org/)

*I have to mention that you need to trust the author of the packages which might be not that easy for everyone.*

Also, I bet other methods are exist to install the prerequisites and I'm just not aware.

##### The steps
1. warm up the container
2. install Chocolatey
3. install node.js
4. install git
5. restart the container
6. install Office365-CLI
7. That's it

##### Detailed steps

###### Warm up the container
```PowerShell
docker run -i -t --name nano microsoft/powershell
docker start nano
docker exec -i -t nano pwsh
```
![pwsh 6.o](/content/images/2019/01/2018-06-06--5--1.png)
Trust me this is a Nano Server 2016

###### Install Chocolatey
As I mentioned above Chocolatey will be our Package manager for Windows
```PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
It will give some errors because we are running it on PowerShell Core. It's safe to ignore them.

###### Install Node.js and Git
Running the following commands the two prerequisite will be installed by Chocolatey.
You will need to consent during the installation, just hit ```y```
```PowerShell
choco install nodejs.install
choco install git.install
```
![Installing Git and Node.js](/content/images/2019/01/2018-06-06--4-.png)

###### Restart the container
Because we haven't created + started + connected just created + connected to the container when we exit - by typing in ```exit``` - the container will automatically stop. So we just need to start it again and connect to it.
```PowerShell
exit

docker start nano
docker exec -i -t nano pwsh
```

######Install Office365-CLI
Lets install the CLI using npm.
```PowerShell
npm i -g @pnp/office365-cli
```
After it was successfully installed you start using the CLI
```PowerShell
office365
```
![Office365-CLI in action](/content/images/2019/01/2018-06-06--6-.png)

##### Final thoughts
If you find a bug in the CLI please report it on GitHub.



