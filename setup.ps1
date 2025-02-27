# Disable the firewall for all profiles
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

# Download and install Chrome Remote Desktop
$crdInstaller = Join-Path $env:TEMP 'chromeremotedesktophost.msi'
Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $crdInstaller
Start-Process -FilePath $crdInstaller -Wait
Remove-Item $crdInstaller -Force

# Download and install Google Chrome
$chromeInstaller = Join-Path $env:TEMP 'chrome_installer.exe'
Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $chromeInstaller
Start-Process -FilePath $chromeInstaller -ArgumentList '/install' -Verb RunAs -Wait
Remove-Item $chromeInstaller -Force
