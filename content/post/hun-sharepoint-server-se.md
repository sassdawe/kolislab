---
author: David Sass
categories:
- SharePoint
- SharePoint Server
- vnext
- "2022"
date: "2021-08-01T18:05:16Z"
description: ""
draft: false
image: __GHOST_URL__/content/images/2021/08/GetImage-1-.png
slug: hun-sharepoint-server-se
summary: Itt az új SharePoint Server Subscription Edition előzetes kiadása
tags:
- SharePoint
- SharePoint Server
- vnext
- "2022"
title: SharePoint Server új napra ébredt
---


Rendhagyó módon, most magyarul posztolok mert a téma közel áll hozzám! Július 20-án a Microsoft kiadta a mostanra 20 éves SharePoint Server következő kiadásának előzetes verzióját! Az angol bejelentést [itt](https://techcommunity.microsoft.com/t5/microsoft-sharepoint-blog/a-new-day-for-sharepoint-server/ba-p/2556404) lehet elolvasni

## Mit is érdemes tudni?

### SharePoint Server Subscription Edition

Új név és új licensz model, amiről még mindig nem sokat tudni.

### Mindig a legfrissebb verzió

Ezen új verzióval eddig még sosem látott szintű megbízhatóságot és sebességet, illetve újabb és újabb funkciókat kapunk majd. 

### Folyamatos frissítések

A dolgok jelen állása szerint ez lesz az utolsó SharePoint Server verzió, ugyanis minden verzió-frissítés erre fog rátelepülni automatikusan. (Igaz valami ilyet mondtak a Windows 10-ről is).

### Frissíts arról a verzióról, amit most használsz

Mindkét jelenleg támogatott verzióról támogatott a közvetlen frissítés, tételesen a 2016-os és 2019-es verziókról. Nem kell 2019-re frissíteni a 2016-os verziót.

### Biztonságos kommunikáció

Windows Server 2022-re telepíve nem csak a legújabb biztonsági funkciókat használhatjuk ki az operációs rendszerből, hanem alapértelmezetten megkapjuk a TLS 1.3 támogatását is.

### Nekünk tervezve

Kapunk OpenID Connect támogatást, és át lett írva a névválasztó is, így külső komponensek nélkül integrálható ezen új verzió például az Azure Active Directory-val.

Továbbá az OpenID Connect (OIDC) 1.0 támogatásnak köszönhetően házirend alapú biztonsági szabályokat is lehet használni, például többfaktoros hitelesítést (MFA).

## Futottak még

### InfoPath Form Services

Továbbra is a rendszer része az **InfoPath Form Service**, legalábbis ebben az előzetes kiadásban benne hagyták.

### SharePoint Designer

Úgy tűnik a mindenki által szeretet vagy éppen utált **SharePoint Designer** 2013 továbbra is az életünk része marad.

### .NET Framework 3.5

Jó hír, hogy nem kell többé **.NET Framework 3.5** a SharePoint Server Subscription Edition telepítéséhez. \o/

### Windows Server Core támogatás

Azok számára lehet jó hír, akik hajlandóak egy kis kényelmet feláldozni a biztonság oltárán, hogy mostantól a GUI mentes Windows Server Core kiadásra is telepíthető lesz ezen új verzió.

Ami azt jelenti kevesebb Windows frissítést kell majd telepíteni, ami jobb mindenki számára. 

### Új modul Windows PowerShell-hez

Mivel továbbra is .NET Framework alapokra épül a SharePoint Server így nem használhatjuk az új kereszt-platformos PowerShell verziót. Viszont, hogy a SharePoint adminok ne legyenek nagyon szomorúak a korábbá Snap-in helyet immár egy igazi Windows PowerShell Modult használhatunk, ami minden Windows PowerShell konzolban automatikus elérhető lesz. Nem kell többé begépelni az `Add-PSSnapin Microsoft.SharePoint.PowerShell` parancsot. 

## Linkek

További információt az újdonságokról [https://go.microsoft.com/fwlink/?linkid=2168262](https://go.microsoft.com/fwlink/?linkid=2168262)

Letöltéshez [https://go.microsoft.com/fwlink/?linkid=2168051](https://go.microsoft.com/fwlink/?linkid=2168051), nyelvi csomaghoz [https://go.microsoft.com/fwlink/?linkid=2168052](https://go.microsoft.com/fwlink/?linkid=2168052)

Kérdésekhez és visszajelzésekhez [https://go.microsoft.com/fwlink/?linkid=2167959](https://go.microsoft.com/fwlink/?linkid=2167959)



