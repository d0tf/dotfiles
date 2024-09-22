Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
Invoke-Expression (& { (zoxide init powershell | Out-String) })
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/robbyrussell.omp.json" | Invoke-Expression

# custom functions
function ssh-copy-id ($machine) {
  type $env:USERPROFILE\.ssh\id_rsa.pub | ssh $machine "cat >> .ssh/authorized_keys"
}

function ln ($target, $link) {
  New-Item -Path $link -ItemType SymbolicLink -Value $target
}

function open ($path) {
  explorer $path
}

function rmf ($path) {
  Remove-Item -Recurse -Force $path
}

function fopen () {
  explorer $(fzf --height -3 --exact)
}

function fcd () {
  cd $(Get-ChildItem -Directory -Name | fzf --height -3 --exact)
}

function frm () {
  Remove-Item -Recurse -Force $(fzf --height -3 -m --exact)
}

# Aliases
Set-Alias -Name pbcopy -Value Set-Clipboard
Set-Alias -Name grep -Value Select-String
Set-Alias -Name touch -Value New-Item

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
