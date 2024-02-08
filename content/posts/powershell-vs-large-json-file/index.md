+++
author = "David Sass"
categories = ["PowerShell", "JSON", "ConvertFrom-Json", "Get-Content"]
date = 2020-02-27T21:44:55Z
description = ""
draft = false
image = "Annotation-2020-03-01-191825.png"
slug = "powershell-vs-large-json-file"
summary = "How to process a large json file and get its content out with PowerShell"
tags = ["PowerShell", "JSON", "ConvertFrom-Json", "Get-Content"]
title = "PowerShell vs a really huge JSON file"

+++


I had to face a log file in a JSON format, which managed to grow over 700MB with 1 million plus entries in it, and my regular code wasn't able to process it any more. So I was in trouble.

<script src="https://gist.github.com/sassdawe/60a7e872356e571e3c8773df3dd234c5.js"></script>

## Solution

I turned to a search engine and started looking for a solution, and I run into this awesome article from 2014 from the Happy SysAdmin [Reading large text files with PowerShell](http://www.happysysadm.com/2014/10/reading-large-text-files-with-powershell.html), and the `[System.IO.File]::ReadAllLines()` code look really promising.

[System.IO.File]::ReadAllLines()

Using this standard .NET method it was easy, and really fast to get the content of the file into the memory. But I still had to convert it into `[PSCustomObject[]]` and I knew that I cannot simply pass over a 1o million plus lines of text to `ConvertFrom-JSON` because PowerShell would probably just laugh into my face. **And it did**.

### How to deal with 10 millions of lines of JSON code?

I was lucky, I knew that all entries in my JSON structure look the same, 9 properties, always. And it was a well formatted file, so I could iterate over the lines and parse it by the number of lines. And this `Get-JsonContentX` was born.

<script src="https://gist.github.com/sassdawe/7caf25d05bd3dc094c272e86922a9734.js"></script>



