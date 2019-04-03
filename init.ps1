# === Setup Directories ===
mkdir 'C:/temp'
mkdir 'C:/git'
mkdir 'C:/tools'

# === Install Chocolatey ===
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# === Download Repo ===
invoke-webrequest -url https://github.com/WMaxZimmerman/ChocoSetup/archive/master.zip -outfile C:/temp/setup.zip

# === Define Function to Unzip ===
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory('C:/temp/setup.zip', 'C:/temp/setup')

# === Execute Next Script ===
& 'C:/temp/setup/ChocoSetup-master/install-base-packages.ps1'
