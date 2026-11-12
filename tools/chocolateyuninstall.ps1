# Made by integrations/windows-packages/update.mjs from release.json. Do not edit by hand.
$ErrorActionPreference = 'Stop'

$softwareName = 'kovaPDF*'
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | ForEach-Object {
    # UninstallString looks like: "C:\Users\<you>\AppData\Local\Programs\kovaPDF\Uninstall kovaPDF.exe" /currentuser
    $file = $_.UninstallString -replace '^\s*"([^"]+)".*$', '$1'
    $packageArgs = @{
      packageName    = $env:ChocolateyPackageName
      fileType       = 'exe'
      silentArgs     = '/currentuser /S'
      validExitCodes = @(0)
      file           = $file
    }
    Uninstall-ChocolateyPackage @packageArgs
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$env:ChocolateyPackageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found. To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning 'Please tell the package maintainer that the following keys were matched:'
  $key | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
