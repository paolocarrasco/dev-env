REM Installation of chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin


choco install git -y
choco install vagrant -y
choco install virtualbox -y
choco install heroku-toolbelt -y
