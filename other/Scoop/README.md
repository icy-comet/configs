## Export the List
```powershell
scoop list | Select-Object -ExpandProperty Name > .\other\Scoop\pkglist.txt
```

## Install the list
```powershell
# |% is an alias for `ForEach-Object`
Get-Content pkglist.txt |% {scoop install $_}
```