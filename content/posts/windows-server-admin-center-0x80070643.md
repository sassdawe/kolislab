+++
author = "David Sass"
categories = ["Windows Admin Center", "WAC", "Domain Controller", "Error", "0x80070643"]
date = 2020-11-22T18:19:22Z
description = ""
draft = false
image = "/images/2020/11/Screenshot-2020-11-22-191719.png"
slug = "windows-server-admin-center-0x80070643"
summary = "If you're facing Windows Admin Center 2009 - Error 0x80070643 on your machine, which might be a domain controller, I've some bad news for you. "
tags = ["Windows Admin Center", "WAC", "Domain Controller", "Error", "0x80070643"]
title = "Windows Admin Center - 0x80070643"

+++


If you're facing `Windows Admin Center 2009 - Error 0x80070643` on your machine, which might be a domain controller, I've some bad news for you.

Windows Update might not be able to communicate properly, but the Admin Center have stopped supporting domain controller machines, bellow is the error message given by the standalone installer.

{{< figure src="/images/2020/11/image-1.png" caption="Error message - Windows Admin Center is not supported on domain controllers" >}}

