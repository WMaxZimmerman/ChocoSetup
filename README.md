# ChocoSetup
A set of scripts to setup the programs and tools I want on a new computer.

Start the process by running the script
#+NAME: start script
#+BEGIN_SRC powershell
  Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/WMaxZimmerman/ChocoSetup/master/init.ps1'))
#+END_SRC

