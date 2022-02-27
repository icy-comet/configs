# File generally goes in C:\Users\<user-name>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# Use `echo $PROFILE` to find the exact path on the system

Invoke-Expression (&starship init powershell)
Function CheckGitStatus { git status }
Function CheckGitDiff { git diff }
Function GitClone { git clone $args[0] }
Function GitAddAll { git add . }
Set-Alias -Name gst -Value CheckGitStatus
Set-Alias -Name gcl -Value GitClone
Set-Alias -Name gdf -Value CheckGitDiff
Set-Alias -Name gaa -Value GitAddAll
$env:VIRTUAL_ENV_DISABLE_PROMPT=1
Set-Alias -Name ls -Value lsd
