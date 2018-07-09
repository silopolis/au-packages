$ErrorActionPreference = 'Stop'

$packageName = 'nvidia-profile-inspector'
$packageParams = Get-PackageParameters
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$packageInspector = 'http://download.orbmu2k.de/files/nvidiaInspector.zip'
$packageProfileInspector = 'https://ci.appveyor.com/api/buildjobs/3p8wd1syye8tugfv/artifacts/nspector%2Fbin%2FnvidiaProfileInspector.zip'
$shortcutPath = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs"
$shortcutInspector = "$shortcutPath\NVIDIA Inspector.lnk"
$shortcutProfileInspector = "$shortcutPath\NVIDIA Profile Inspector.lnk"

$inspectorArgs = @{
  packageName            = $packageName
  url                    = $packageInspector
  url64bit               = $packageInspector
  checksum               = 'A11222BDE0D30FD3E949E8D85B23EFAA964EAE68AA1F16C24B3B1D1877640A64'
  checksum64             = 'A11222BDE0D30FD3E949E8D85B23EFAA964EAE68AA1F16C24B3B1D1877640A64'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  unzipLocation          = $toolsPath
}
 
$profileInspectorArgs = @{
  packageName            = $packageName
  url                    = $packageProfileInspector
  url64bit               = $packageProfileInspector
  checksum               = '2F6EBEE56C7B912A22F2694281EC9F4D8E7806DF81E866B8E851CD5D41BC9931'
  checksum64             = '2F6EBEE56C7B912A22F2694281EC9F4D8E7806DF81E866B8E851CD5D41BC9931'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  unzipLocation          = $toolsPath
}

if (!$packageParams.NoInspector) {
  Write-Host 'NVIDIA Inspector will be installed. Use /NoInspector as parameter to drop it.'
  Install-ChocolateyZipPackage @inspectorArgs
  rm $toolsPath\nvidiaProfileInspector.exe
  rm $toolsPath\change.log
  Install-ChocolateyShortcut -shortcutFilePath "$shortcutInspector" -targetPath "$toolsPath\nvidiaInspector.exe"
}

Install-ChocolateyZipPackage @profileInspectorArgs
Install-ChocolateyShortcut -shortcutFilePath "$shortcutProfileInspector" -targetPath "$toolsPath\nvidiaProfileInspector.exe"

Write-Host "$packageName installed to $toolsPath"
