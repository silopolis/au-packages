$packageName = 'nvidia-profile-inspector'
$shortcutPath = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs"
$shortcutInspector = "$shortcutPath\NVIDIA Inspector.lnk"
$shortcutProfileInspector = "$shortcutPath\NVIDIA Profile Inspector.lnk"

remove-item "$shortcutInspector" -Force -ErrorAction 'SilentlyContinue'
remove-item "$shortcutProfileInspector" -Force -ErrorAction 'SilentlyContinue'
