## Extensions

### Install

Run the python script from the same dir as the README.

```bash
py manage_extensions.py -h
```

```txt
usage: manage_extensions.py [-h] -d xxxx

a simple python script to make managing VS Code extensions easier

options:
  -h, --help          show this help message and exit
  -d xxxx, --do xxxx
                      specify the action to perform

                      list        print all extensions present in readme
                                  similar to `code --list-extensions`
                                  useful for comparison

                      update-list update the list with names of currently
                                  installed extensions

                      install     install all extensions listed in the readme
                                  names should be inside backticks (`)

                      compare     print a text-diff of extensions
                                  present in readme compared to
                                  those that are installed
                                  (determined using `code --list-extensions`)
                                  extensions part of a meta package
                                  can be ignored with 'diff.ignore' file
                                  copy the lines from the diff output to this file
                                  to ignore those names
```

### List

1. [Catppuccin for VSCode](https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc) `Catppuccin.catppuccin-vsc`
2. [Catppuccin Icons for VSCode](https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc-icons) `Catppuccin.catppuccin-vsc-icons`
3. [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig) `EditorConfig.EditorConfig`
4. [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) `PKief.material-icon-theme`
5. [IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode) `VisualStudioExptTeam.vscodeintellicode`
6. [Carbon Product Icons](https://marketplace.visualstudio.com/items?itemName=antfu.icons-carbon) `antfu.icons-carbon`
7. [Color Info](https://marketplace.visualstudio.com/items?itemName=bierner.color-info) `bierner.color-info`
8. [Shell Syntax](https://marketplace.visualstudio.com/items?itemName=bmalehorn.shell-syntax) `bmalehorn.shell-syntax`
9. [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) `bradlc.vscode-tailwindcss`
10. [Hugo Language and Syntax Support](https://marketplace.visualstudio.com/items?itemName=budparr.language-hugo-vscode) `budparr.language-hugo-vscode`
11. [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense) `christian-kohler.npm-intellisense`
12. [Go to Character Position](https://marketplace.visualstudio.com/items?itemName=davidfreer.go-to-character-position) `davidfreer.go-to-character-position`
13. [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) `dbaeumer.vscode-eslint`
14. [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory) `donjayamanne.githistory`
15. [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) `eamodio.gitlens`
16. [Tokyo Night](https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night) `enkia.tokyo-night`
17. [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) `esbenp.prettier-vscode`
18. [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag) `formulahendry.auto-close-tag`
19. [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) `formulahendry.code-runner`
20. [Go](https://marketplace.visualstudio.com/items?itemName=golang.go) `golang.go`
21. [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock) `johnpapa.vscode-peacock`
22. [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv) `mikestead.dotenv`
23. [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) `ms-azuretools.vscode-docker`
24. [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) `ms-python.black-formatter`
25. [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) `ms-python.python`
26. [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) `ms-vscode-remote.vscode-remote-extensionpack`
27. [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) `ms-vscode.cmake-tools`
28. [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) `ms-vscode.cpptools-extension-pack`
29. [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools) `ms-vscode.makefile-tools`
30. [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.powershell) `ms-vscode.powershell`
31. [Remote - Tunnels](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-server) `ms-vscode.remote-server`
32. [Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare) `ms-vsliveshare.vsliveshare`
33. [Rosé Pine](https://marketplace.visualstudio.com/items?itemName=mvllow.rose-pine) `mvllow.rose-pine`
34. [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight) `naumovs.color-highlight`
35. [autoDocstring - Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) `njpwerner.autodocstring`
36. [Language Support for Java(TM) by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java) `redhat.java`
37. [XML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml) `redhat.vscode-xml`
38. [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) `redhat.vscode-yaml`
39. [Partial Diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff) `ryu1kn.partial-diff`
40. [Gruvbox Material](https://marketplace.visualstudio.com/items?itemName=sainnhe.gruvbox-material) `sainnhe.gruvbox-material`
41. [Liquid](https://marketplace.visualstudio.com/items?itemName=sissel.shopify-liquid) `sissel.shopify-liquid`
42. [Svelte for VS Code](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode) `svelte.svelte-vscode`
43. [Even Better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml) `tamasfe.even-better-toml`
44. [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake) `twxs.cmake`
45. [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) `vscjava.vscode-java-pack`
46. [Live Server (Five Server)](https://marketplace.visualstudio.com/items?itemName=yandeu.five-server) `yandeu.five-server`
47. [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) `yzhang.markdown-all-in-one`
