$ErrorActionPreference = 'Stop'

$packageName    = $env:ChocolateyPackageName
$installerType  = 'exe'
$url            = 'https://download.poedit.net/Poedit-2.0.8-setup.exe'
$silentArgs     = '/verysilent /norestart'
$checksum       = '460067E889051538A43102E06E0E95F42295E95630D5EE3E4C36C9C1775B7F86'
$checksumType   = 'sha256'
$validExitCodes = @(0)

$packageArgs = @{
  packageName    = $packageName
  fileType       = $installerType
  url            = $url
  url64bit       = $url
  silentArgs     = $silentArgs
  checksum       = $checksum
  checksum64     = $checksum
  checksumType   = $checksumType
  checksumType64 = $checksumType
  validExitCodes = $validExitCodes
}

Install-ChocolateyPackage @packageArgs
