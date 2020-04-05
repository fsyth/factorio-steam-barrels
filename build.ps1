# Build Script

# Need name, version, and factorio_version from info.json
$info = Get-Content '.\src\info.json' | Out-String | ConvertFrom-Json

# Mod must go in a folder named with this specific format
$folder = "$($info.name)_$($info.version)"
echo $folder

# Need an intermediate folder to arrange files before zipping to the output
$intermediate = ".\build\$folder"
$output = ".\build\$($info.factorio_version)\$folder.zip"

# Copy src to intermediate to be zipped to output, then clear up after
Copy-Item '.\src' -Destination $intermediate -Recurse
Compress-Archive -Path $intermediate -Force -DestinationPath $output
Remove-Item -Path $intermediate -Recurse

# Install output zip to mods folder
Copy-Item $output -Destination "$($env:APPDATA)\Factorio\mods"
