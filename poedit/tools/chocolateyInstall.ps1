$ErrorActionPreference = 'Stop'

$packageName    = $env:ChocolateyPackageName
$installerType  = 'exe'
$url            = 'https://download.poedit.net/Poedit-2.1.1-setup.exe'
$silentArgs     = '/verysilent /norestart'
$checksum       = 'E8354F55944969C402C62BD456C400891D0E263D8FE7B9C1D726FEB1B06BDED0'
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
