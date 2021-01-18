$ErrorActionPreference = 'Stop'

$packageName    = $env:ChocolateyPackageName
$installerType  = 'exe'
$url            = 'https://download.poedit.net/Poedit-2.4.2-setup.exe'
$silentArgs     = '/verysilent /norestart'
$checksum       = '9D93654D17091637A66CF7DCC27CE8B0215433C9917023A17A658A0FE5D8AB2B'
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
