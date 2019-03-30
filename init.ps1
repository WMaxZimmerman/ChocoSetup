# === Setup Directories ===
mkdir 'C:\temp'
mkdir 'C:\git'
mkdir 'C:\tools'

# === Install Chocolatey ===
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# === Download Repo ===
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
(New-Object Net.WebClient).DownloadFile('https://github.com/WMaxZimmerman/ChocoSetup/archive/master.zip','C:\temp\setup.zip');

# === Define Function to Unzip ===
Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

# === Unzip Repo ===
Unzip "C:\temp\setup.zip" "C:\temp\setup"

