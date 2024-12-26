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

1. [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments) `aaron-bond.better-comments`
2. [Color Info](https://marketplace.visualstudio.com/items?itemName=bierner.color-info) `bierner.color-info`
3. [Shell Syntax](https://marketplace.visualstudio.com/items?itemName=bmalehorn.shell-syntax) `bmalehorn.shell-syntax`
4. [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) `bradlc.vscode-tailwindcss`
5. [Hugo Language and Syntax Support](https://marketplace.visualstudio.com/items?itemName=budparr.language-hugo-vscode) `budparr.language-hugo-vscode`
6. [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense) `christian-kohler.npm-intellisense`
7. [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) `christian-kohler.path-intellisense`
8. [Go to Character Position](https://marketplace.visualstudio.com/items?itemName=davidfreer.go-to-character-position) `davidfreer.go-to-character-position`
9. [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) `dbaeumer.vscode-eslint`
10. [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory) `donjayamanne.githistory`
11. [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) `eamodio.gitlens`
12. [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=editorconfig.editorconfig) `editorconfig.editorconfig`
13. [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) `esbenp.prettier-vscode`
14. [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot) `github.copilot`
15. [GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat) `github.copilot-chat`
16. [Go](https://marketplace.visualstudio.com/items?itemName=golang.go) `golang.go`
17. [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=james-yu.latex-workshop) `james-yu.latex-workshop`
18. [Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox) `jdinhlife.gruvbox`
19. [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock) `johnpapa.vscode-peacock`
20. [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv) `mechatroner.rainbow-csv`
21. [Highlight on Copy](https://marketplace.visualstudio.com/items?itemName=mguellsegarra.highlight-on-copy) `mguellsegarra.highlight-on-copy`
22. [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv) `mikestead.dotenv`
23. [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) `ms-azuretools.vscode-docker`
24. [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) `ms-python.black-formatter`
25. [Python Debugger](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy) `ms-python.debugpy`
26. [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) `ms-python.python`
27. [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) `ms-vscode-remote.vscode-remote-extensionpack`
28. [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) `ms-vscode.cmake-tools`
29. [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) `ms-vscode.cpptools-extension-pack`
30. [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools) `ms-vscode.makefile-tools`
31. [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.powershell) `ms-vscode.powershell`
32. [Remote - Tunnels](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-server) `ms-vscode.remote-server`
33. [Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare) `ms-vsliveshare.vsliveshare`
34. [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight) `naumovs.color-highlight`
35. [autoDocstring - Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) `njpwerner.autodocstring`
36. [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=pkief.material-icon-theme) `pkief.material-icon-theme`
37. [Language Support for Java(TM) by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java) `redhat.java`
38. [XML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml) `redhat.vscode-xml`
39. [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) `redhat.vscode-yaml`
40. [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer) `rust-lang.rust-analyzer`
41. [Partial Diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff) `ryu1kn.partial-diff`
42. [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) `samuelcolvin.jinjahtml`
43. [Liquid](https://marketplace.visualstudio.com/items?itemName=sissel.shopify-liquid) `sissel.shopify-liquid`
44. [Svelte for VS Code](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode) `svelte.svelte-vscode`
45. [Even Better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml) `tamasfe.even-better-toml`
46. [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake) `twxs.cmake`
47. [IntelliCode API Usage Examples](https://marketplace.visualstudio.com/items?itemName=visualstudioexptteam.intellicode-api-usage-examples) `visualstudioexptteam.intellicode-api-usage-examples`
48. [IntelliCode](https://marketplace.visualstudio.com/items?itemName=visualstudioexptteam.vscodeintellicode) `visualstudioexptteam.vscodeintellicode`
49. [Gradle for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-gradle) `vscjava.vscode-gradle`
50. [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) `vscjava.vscode-java-pack`
51. [Live Server (Five Server)](https://marketplace.visualstudio.com/items?itemName=yandeu.five-server) `yandeu.five-server`
52. [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) `yzhang.markdown-all-in-one`
rkdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) `yzhang.markdown-all-in-one`
