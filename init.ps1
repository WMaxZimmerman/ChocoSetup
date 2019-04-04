# === Setup Directories ===
mkdir 'c:/git'
mkdir 'c:/tools'

# === Install Chocolatey ===
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# === Download Repo ===
invoke-webrequest -uri https://github.com/WMaxZimmerman/ChocoSetup/archive/master.zip -outfile c:/temp/setup.zip

# === Define Function to Unzip ===
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory('c:/temp/setup.zip', 'c:/temp/setup')

# === Execute Next Scripts ===
& 'c:/temp/setup/ChocoSetup-master/baseinstalls.ps1'
& 'c:/temp/setup/ChocoSetup-master/chocosteps.ps1'
