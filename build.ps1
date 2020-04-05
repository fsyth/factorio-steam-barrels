$info = Get-Content '.\src\info.json' | Out-String | ConvertFrom-Json

$folder = "$($info.name)_$($info.version)"
echo $folder

$intermediate = ".\build\$folder"
$output = ".\build\$($info.factorio_version)\$folder.zip"

if (Test-Path $output) {
    Remove-Item -Path $output
}

Copy-Item '.\src' -Destination $intermediate -Recurse
Compress-Archive -Path $intermediate -Update -DestinationPath $output
Remove-Item -Path $intermediate -Recurse
Copy-Item $output -Destination "$($env:APPDATA)\Factorio\mods"
