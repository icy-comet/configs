# The file lives in ~/Documents/WindowsPowershell/
oh-my-posh --init --shell pwsh --config ~/M365Princess.omp.json | Invoke-Expression
Enable-PoshTransientPrompt
Function CheckGitStatus { git status }
Function CheckGitDiff { git diff }
Function GitClone { git clone $args[0] }
Function GitAddAll { git add . }
Set-Alias -Name gst -Value CheckGitStatus
Set-Alias -Name gcl -Value GitClone
Set-Alias -Name gdf -Value CheckGitDiff
Set-Alias -Name gaa -Value GitAddAll
$env:VIRTUAL_ENV_DISABLE_PROMPT=1
