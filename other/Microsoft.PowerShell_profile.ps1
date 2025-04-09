# File generally goes in C:\Users\<user-name>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# Use `echo $PROFILE` to find the exact path on the system

Invoke-Expression (&starship init powershell)
fnm env --use-on-cd | Out-String | Invoke-Expression
# oh-my-posh init pwsh --config .ohmyposhtheme.json | Invoke-Expression

$env:VIRTUAL_ENV_DISABLE_PROMPT = 1
$env:LESSCHARSET='utf-8'

# The function emulates the `ln` command in *NIX for making symbolic links
Function ln {

  If (($args[0] -eq "-s" -or $args[0] -eq "--symbolic") -and $args.length -eq 3) {
    New-Item -ItemType SymbolicLink -Path $args[2] -Target $args[1]
    Return
  } ElseIf ($args.length -eq 2) {
    New-Item -ItemType HardLink -Path $args[1] -Target $args[0]
    Return
  }

  Write-Error -Message "Insufficient/Invalid arguments provided." -Category "InvalidArgument"

}

Function ll {
  param (
    $Location
  )
  lsd -l -a $Location
}
