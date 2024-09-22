# Windows
## Requirements
- choco
```sh
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
- zoxide & fzf
```sh
choco install zoxide fzf
```
## Apply as a default profile
```sh
curl https://raw.githubusercontent.com/d0tf/dotfiles/refs/heads/master/profile.ps1 -o $PROFILE
```
