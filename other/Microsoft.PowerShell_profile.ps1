# File generally goes in C:\Users\<user-name>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# Use `echo $PROFILE` to find the exact path on the system

Invoke-Expression (&starship init powershell)
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1
Set-Alias -Name ls -Value lsd