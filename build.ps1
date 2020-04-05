$info = Get-Content '.\src\info.json' | Out-String | ConvertFrom-Json

$folder = "$($info.name)_$($info.version)"
echo $folder

$intermediate = ".\build\$folder"
$output = ".\build\$($info.factorio_version)\$folder.zip"

Copy-Item '.\src' -Destination $intermediate -Recurse
Compress-Archive -Path $intermediate -Force -DestinationPath $output
Remove-Item -Path $intermediate -Recurse
Copy-Item $output -Destination "$($env:APPDATA)\Factorio\mods"
