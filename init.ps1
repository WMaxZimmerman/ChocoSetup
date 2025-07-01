# === Setup Directories ===
mkdir 'c:/bench'
mkdir 'c:/bench/git'
mkdir 'c:/bench/tools'

# === Install Scoop ===
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh -outfile '~/install.ps1'
& '~/install.ps1' -ScoopDir 'C:\bench\tools\scoop' -ScoopGlobalDir 'C:\bench\tools\scoop-installs' -NoProxy

# === Download Repo ===
invoke-webrequest -uri https://github.com/WMaxZimmerman/ChocoSetup/archive/master.zip -outfile c:/temp/setup.zip

# === Define Function to Unzip ===
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory('c:/temp/setup.zip', 'c:/temp/setup')

# === Execute Next Scripts ===
& 'c:/temp/setup/ChocoSetup-master/scoopsteps.ps1'
