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

1. [Chrome Extension Developer Tools](https://marketplace.visualstudio.com/items?itemName=aaravb.chrome-extension-developer-tools) `aaravb.chrome-extension-developer-tools`
2. [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments) `aaron-bond.better-comments`
3. [Astro](https://marketplace.visualstudio.com/items?itemName=astro-build.astro-vscode) `astro-build.astro-vscode`
4. [Color Info](https://marketplace.visualstudio.com/items?itemName=bierner.color-info) `bierner.color-info`
5. [Shell Syntax](https://marketplace.visualstudio.com/items?itemName=bmalehorn.shell-syntax) `bmalehorn.shell-syntax`
6. [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client) `bmewburn.vscode-intelephense-client`
7. [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) `bradlc.vscode-tailwindcss`
8. [Hugo Language and Syntax Support](https://marketplace.visualstudio.com/items?itemName=budparr.language-hugo-vscode) `budparr.language-hugo-vscode`
9. [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense) `christian-kohler.npm-intellisense`
10. [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) `christian-kohler.path-intellisense`
11. [Go to Character Position](https://marketplace.visualstudio.com/items?itemName=davidfreer.go-to-character-position) `davidfreer.go-to-character-position`
12. [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) `dbaeumer.vscode-eslint`
13. [Docker DX](https://marketplace.visualstudio.com/items?itemName=docker.docker) `docker.docker`
14. [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory) `donjayamanne.githistory`
15. [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) `eamodio.gitlens`
16. [EditorConfig](https://marketplace.visualstudio.com/items?itemName=editorconfig.editorconfig) `editorconfig.editorconfig`
17. [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) `esbenp.prettier-vscode`
18. [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) `formulahendry.code-runner`
19. [GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat) `github.copilot-chat`
20. [Go](https://marketplace.visualstudio.com/items?itemName=golang.go) `golang.go`
21. [Todo Tree](https://marketplace.visualstudio.com/items?itemName=gruntfuggly.todo-tree) `gruntfuggly.todo-tree`
22. [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=james-yu.latex-workshop) `james-yu.latex-workshop`
23. [Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox) `jdinhlife.gruvbox`
24. [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock) `johnpapa.vscode-peacock`
25. [Gruvbox Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=jonathanharty.gruvbox-material-icon-theme) `jonathanharty.gruvbox-material-icon-theme`
26. [AHK++ (AutoHotkey Plus Plus)](https://marketplace.visualstudio.com/items?itemName=mark-wiemer.vscode-autohotkey-plus-plus) `mark-wiemer.vscode-autohotkey-plus-plus`
27. [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv) `mechatroner.rainbow-csv`
28. [Highlight on Copy](https://marketplace.visualstudio.com/items?itemName=mguellsegarra.highlight-on-copy) `mguellsegarra.highlight-on-copy`
29. [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv) `mikestead.dotenv`
30. [Container Tools](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-containers) `ms-azuretools.vscode-containers`
31. [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) `ms-azuretools.vscode-docker`
32. [Kubernetes](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools) `ms-kubernetes-tools.vscode-kubernetes-tools`
33. [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) `ms-python.black-formatter`
34. [Python Debugger](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy) `ms-python.debugpy`
35. [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) `ms-python.python`
36. [Python Environments](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-python-envs) `ms-python.vscode-python-envs`
37. [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) `ms-vscode-remote.vscode-remote-extensionpack`
38. [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) `ms-vscode.cmake-tools`
39. [C/C++ DevTools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpp-devtools) `ms-vscode.cpp-devtools`
40. [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) `ms-vscode.cpptools-extension-pack`
41. [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools) `ms-vscode.makefile-tools`
42. [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.powershell) `ms-vscode.powershell`
43. [Remote - Tunnels](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-server) `ms-vscode.remote-server`
44. [Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare) `ms-vsliveshare.vsliveshare`
45. [Rosé Pine](https://marketplace.visualstudio.com/items?itemName=mvllow.rose-pine) `mvllow.rose-pine`
46. [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight) `naumovs.color-highlight`
47. [autoDocstring - Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) `njpwerner.autodocstring`
48. [Java](https://marketplace.visualstudio.com/items?itemName=oracle.oracle-java) `oracle.oracle-java`
49. [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=pkief.material-icon-theme) `pkief.material-icon-theme`
50. [Language Support for Java(TM) by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java) `redhat.java`
51. [XML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml) `redhat.vscode-xml`
52. [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) `redhat.vscode-yaml`
53. [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer) `rust-lang.rust-analyzer`
54. [Partial Diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff) `ryu1kn.partial-diff`
55. [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) `samuelcolvin.jinjahtml`
56. [Liquid](https://marketplace.visualstudio.com/items?itemName=sissel.shopify-liquid) `sissel.shopify-liquid`
57. [Svelte for VS Code](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode) `svelte.svelte-vscode`
58. [Even Better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml) `tamasfe.even-better-toml`
59. [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake) `twxs.cmake`
60. [GitHub Copilot modernization](https://marketplace.visualstudio.com/items?itemName=vscjava.migrate-java-to-azure) `vscjava.migrate-java-to-azure`
61. [Gradle for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-gradle) `vscjava.vscode-gradle`
62. [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) `vscjava.vscode-java-pack`
63. [GitHub Copilot modernization - upgrade for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-upgrade) `vscjava.vscode-java-upgrade`
64. [Live Server (Five Server)](https://marketplace.visualstudio.com/items?itemName=yandeu.five-server) `yandeu.five-server`
65. [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) `yzhang.markdown-all-in-one`
