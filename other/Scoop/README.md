## Export the List
```powershell
scoop list | cut -d " " -f 1 | tail -n +4 | head -n -1 > .\other\Scoop\pkglist.txt
```

## Install the list
```powershell
gc pkglist.txt |% {scoop install $_}
```