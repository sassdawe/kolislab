throw "This must be run with F8"
# first convert the pages into folders and then move the files into the folders

ls -File | %{ $null = new-item $_.BaseName -ItemType Directory; git mv $_.FullName ".\$($_.BaseName)\index.md"  }

# detect the header images and find those files and move them into the folders

Get-ChildItem -path .\content\posts -File -recu *.md | ForEach-Object {
    $fullPath = $_.FullName
    $folder = $_.Directory
    Get-Content $_.FullName | ? {$_.Contains("image = ")}  | ForEach-Object {
        $headerPath = (join-path "." "assets" ($_.Split('=')[1].Trim().Trim('"').Replace('__GHOST_URL__','').Replace('/content','')))
        $headerFile = (split-path $headerPath -leaf)
        if ( test-path $headerPath ) {
            git mv $headerPath (join-path $folder $headerFile)
        }
    }
}

# update the image paths in the markdown files
Get-ChildItem -path .\content\posts -File -recu *.md | ForEach-Object {
    $toReplace = (Get-Content $_.FullName | ? {$_.Contains("image = ")} | ForEach-Object {
        $_.Split('=')[1].Trim().Trim('"')
    })
    $toReplace
    ((Get-Content $_.FullName)).Replace($toReplace, (Split-Path $toReplace -leaf)) | Set-Content $_.FullName
}

# move images from assets to the content/posts folder
Get-ChildItem -path .\content\posts -File -recu *.md | ForEach-Object {
    $fullPath = $_.FullName
    $folder = $_.Directory
    Get-Content $_.FullName | ? {$_.Contains("{{< figure src=")}  | ForEach-Object {
        $imagePath = (join-path "." "assets" ($_.Split('"')[1]))
        if ( test-path $imagePath ) {
            git mv $imagePath (join-path $folder (split-path $imagePath -leaf))
        }
    }
}

# update the image paths in the markdown files
Get-ChildItem -path .\content\posts -File -recu *.md | ForEach-Object {
    $fullPath = $_.FullName
    $toReplace = @(Get-Content $_.FullName | ? {$_.Contains("{{< figure src=")}  | ForEach-Object { $_ })
    foreach ($line in $toReplace) {
        # convert from `{{< figure src="/images/2020/06/image.png" caption="Windows Defender working on Windows Server 2019" >}}` to `![Windows Defender working on Windows Server 2019](image.png)`
        $caption = $line.Split('"')[3]
        $filename = (split-path $line.Split('"')[1] -leaf)
        $newLine = "![${caption}](${filename})"
        ((Get-Content $fullPath)).Replace($line, $newLine) | Set-Content $fullPath
    }
}

# move images from assets to the content/posts folder
Get-ChildItem -path .\content\posts -File -recu *.md | ForEach-Object {
    $fullPath = $_.FullName
    $folder = $_.Directory
    Get-Content $fullPath | ? {$_.Contains("](/content")}  | ForEach-Object {
        $imagePath = (join-path "." "assets" ($_.Split('(')[1].TrimEnd(')')).Replace('/content',''))
        if ( test-path $imagePath ) {
            git mv $imagePath (join-path $folder (split-path $imagePath -leaf))
        }
    }
}

# update the image paths in the markdown files
Get-ChildItem -path .\content\posts -File -recu *.md | ForEach-Object {
    $fullPath = $_.FullName
    $toReplace = @(Get-Content $_.FullName | ? {$_.Contains("](/content")}  | ForEach-Object { $_ })
    foreach ($line in $toReplace) {
        # remove folder path form image path `![prompt-demo](/content/images/2019/01/prompt-demo.jpg)` to `![prompt-demo](prompt-demo.jpg)` but keep caption
        $filename = (split-path $line.Split('(')[1].TrimEnd(')') -leaf)
        $caption = $line.Split('[')[1].Split(']')[0]
        $newLine = "![${caption}](${filename})"
        $newLine
        ((Get-Content $fullPath)).Replace($line, $newLine) | Set-Content $fullPath
    }
}
