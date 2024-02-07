+++
author = "David Sass"
categories = [ "Azure", "Azure CLI", "Pengwin", "WSL", "WSL2", "How to" ]
date = 2020-04-29T06:32:36.000Z
description = ""
draft = false
image = "/images/2020/04/Annotation-2020-04-26-202912.png"
slug = "install-azure-cli-on-pengwin-inside-wsl2"
summary = "Steps to install Azure CLI on Pengwin inside WSL2"
tags = [ "Azure", "Azure CLI", "Pengwin", "WSL", "WSL2", "How to" ]
title = "Install Azure CLI on Pengwin inside WSL2"
type = "default"
+++


To be honest, I didn't expect that I'll have to write this post when I started on my quest to get Azure CLI working in Pengwin. But here I'm sharing what I've learned. **#SharingIsCaring**

# Things that didn't work I expected

So I went to the [Install the Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) [] page as anyone else would do, and had a look at the options, I knew that Pengwin is built on top of Debian, so I started with the first option: _Install with apt..._

{{< figure src="/images/2020/04/image.png" >}}

## First try: Install with apt

The instructions on the [page](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt?view=azure-cli-latest) were clear: `curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash` easy as that, but the result was not what I expected:

{{< figure src="/images/2020/04/image-2.png" caption="Failed to install with official script" >}}

## Second try: Manual install instructions

I was still on the [Install Azure CLI with apt](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt?view=azure-cli-latest) page, but scrolled down to the manual instructions.

{{< figure src="/images/2020/04/image-6.png" >}}

And they worked, they really did, but **I ended up with a really old version** and I need the latest.

## Third try: Go back to the first option

I tried executing `curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash` again, but the result or really the error what I got stayed the same.

I knew I had to break out of this evil recursion, it didn't matter anymore if I wasn't able to install it on my own.

# The solution: Twitter and help from nice folks

It was clear to me that alone I'll never figure this one out, I'm just too deep into Windows, but smart people know their limits so I went to Twitter and started tweeting about my failures. Some might say I started to complain, which might be true, I'm human :)

[@AzureSupport](https://twitter.com/AzureSupport) was there for me, and later this nice guy [JMP](https://twitter.com/bureado) (@bureado) [] joined the conversation and explained the error message to me - a much needed help I must say 🙏 - and suggested to try to install from the [binary package](https://packages.microsoft.com/repos/azure-cli/pool/main/a/azure-cli/):

{{< figure src="/images/2020/04/image-4.png" caption="https://twitter.com/bureado/status/1254439777778032640?s=20" >}}

I already had an older version installed - _I don't know if this counts as an update or not, or if going straight to the binary would have worked without the older version or not..._ - so I just downloaded the matching file of my Pengwin version `azure-cli_2.4.0-1~buster_all.deb` and installed it using `dpkg` strait from the downloads folder of my Windows user - remember, I'm using Pengwin in WSL2.

And it worked!

{{< figure src="/images/2020/04/image-5.png" caption="Azure CLI installing from binary package" >}}

JMP, thanks again for your help!

