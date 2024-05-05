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

1. [Color Info](https://marketplace.visualstudio.com/items?itemName=bierner.color-info) `bierner.color-info`
2. [Shell Syntax](https://marketplace.visualstudio.com/items?itemName=bmalehorn.shell-syntax) `bmalehorn.shell-syntax`
3. [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) `bradlc.vscode-tailwindcss`
4. [Hugo Language and Syntax Support](https://marketplace.visualstudio.com/items?itemName=budparr.language-hugo-vscode) `budparr.language-hugo-vscode`
5. [Catppuccin for VSCode](https://marketplace.visualstudio.com/items?itemName=catppuccin.catppuccin-vsc) `catppuccin.catppuccin-vsc`
6. [Catppuccin Icons for VSCode](https://marketplace.visualstudio.com/items?itemName=catppuccin.catppuccin-vsc-icons) `catppuccin.catppuccin-vsc-icons`
7. [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense) `christian-kohler.npm-intellisense`
8. [Go to Character Position](https://marketplace.visualstudio.com/items?itemName=davidfreer.go-to-character-position) `davidfreer.go-to-character-position`
9. [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) `dbaeumer.vscode-eslint`
10. [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory) `donjayamanne.githistory`
11. [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) `eamodio.gitlens`
12. [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=editorconfig.editorconfig) `editorconfig.editorconfig`
13. [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) `esbenp.prettier-vscode`
14. [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag) `formulahendry.auto-close-tag`
15. [Go](https://marketplace.visualstudio.com/items?itemName=golang.go) `golang.go`
16. [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=james-yu.latex-workshop) `james-yu.latex-workshop`
17. [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock) `johnpapa.vscode-peacock`
18. [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv) `mechatroner.rainbow-csv`
19. [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv) `mikestead.dotenv`
20. [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) `ms-azuretools.vscode-docker`
21. [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) `ms-python.black-formatter`
22. [Python Debugger](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy) `ms-python.debugpy`
23. [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) `ms-python.python`
24. [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) `ms-vscode-remote.vscode-remote-extensionpack`
25. [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) `ms-vscode.cmake-tools`
26. [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) `ms-vscode.cpptools-extension-pack`
27. [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools) `ms-vscode.makefile-tools`
28. [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.powershell) `ms-vscode.powershell`
29. [Remote - Tunnels](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-server) `ms-vscode.remote-server`
30. [Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare) `ms-vsliveshare.vsliveshare`
31. [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight) `naumovs.color-highlight`
32. [autoDocstring - Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) `njpwerner.autodocstring`
33. [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=pkief.material-icon-theme) `pkief.material-icon-theme`
34. [Language Support for Java(TM) by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java) `redhat.java`
35. [XML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml) `redhat.vscode-xml`
36. [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) `redhat.vscode-yaml`
37. [Partial Diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff) `ryu1kn.partial-diff`
38. [Gruvbox Material](https://marketplace.visualstudio.com/items?itemName=sainnhe.gruvbox-material) `sainnhe.gruvbox-material`
39. [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) `samuelcolvin.jinjahtml`
40. [Liquid](https://marketplace.visualstudio.com/items?itemName=sissel.shopify-liquid) `sissel.shopify-liquid`
41. [Svelte for VS Code](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode) `svelte.svelte-vscode`
42. [Even Better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml) `tamasfe.even-better-toml`
43. [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake) `twxs.cmake`
44. [IntelliCode API Usage Examples](https://marketplace.visualstudio.com/items?itemName=visualstudioexptteam.intellicode-api-usage-examples) `visualstudioexptteam.intellicode-api-usage-examples`
45. [IntelliCode](https://marketplace.visualstudio.com/items?itemName=visualstudioexptteam.vscodeintellicode) `visualstudioexptteam.vscodeintellicode`
46. [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) `vscjava.vscode-java-pack`
47. [Live Server (Five Server)](https://marketplace.visualstudio.com/items?itemName=yandeu.five-server) `yandeu.five-server`
48. [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) `yzhang.markdown-all-in-one`
ne](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) `yzhang.markdown-all-in-one`
