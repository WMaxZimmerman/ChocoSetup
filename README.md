# ChocoSetup
A set of scripts to setup the programs and tools I want on a new computer.

Start the process by running the script
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
invoke-webrequest -uri https://raw.githubusercontent.com/WMaxZimmerman/ChocoSetup/master/init.ps1 -outfile "c:/temp/init.ps1"

