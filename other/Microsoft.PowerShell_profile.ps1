# File generally goes in C:\Users\<user-name>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# Use `echo $PROFILE` to find the exact path on the system

Invoke-Expression (&starship init powershell)
Function ManageEnv {
    If ($args[0]) {
        Get-ChildItem -Path "env:$($args[0])" | Select-Object -ExpandProperty Value
    }
    Else {
        Get-ChildItem -Path env:
    }
}
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1
Set-Alias -Name ls -Value lsd
Set-Alias -Name printenv -Value ManageEnv