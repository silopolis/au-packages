$ErrorActionPreference = 'Stop'

$packageName    = $env:ChocolateyPackageName
$installerType  = 'exe'
$url            = 'https://download.poedit.net/Poedit-3.0.6387-setup.exe'
$silentArgs     = '/verysilent /norestart'
$checksum       = '43A3ECBF91C8FDF8BDCF2144321F0DEC6E560F5A76D8C237EE0D7FE7A0FEE33F'
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
