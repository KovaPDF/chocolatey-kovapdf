# Made by integrations/windows-packages/update.mjs from release.json. Do not edit by hand.
$ErrorActionPreference = 'Stop'

# The installer is not bundled: it is downloaded from KovaPDF's server and checked against this SHA256.
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://downloads.kovapdf.com/desktop/KovaPDF-Desktop-App-1.0.5.exe'
  checksum64     = '99664d6960672a2c49458f8443fa83132b70f9eb5cf5ec3e01639f1fd0548c24'
  checksumType64 = 'sha256'
  softwareName   = 'kovaPDF*'
  # electron-builder NSIS installer, one click, per user: /S is silent.
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
