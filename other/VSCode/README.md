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
                                  can be ignored with `diff.ignore` file
                                  copy the lines from the diff output to this file
                                  to ignore those names
```

### List

1. [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag) `formulahendry.auto-close-tag`
2. [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight) `naumovs.color-highlight`
3. [Color Info](https://marketplace.visualstudio.com/items?itemName=bierner.color-info) `bierner.color-info`
4. [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv) `mikestead.dotenv`
5. [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) `dbaeumer.vscode-eslint`
6. [Even Better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml) `tamasfe.even-better-toml`
7. [Hugo Language and Syntax Support](https://marketplace.visualstudio.com/items?itemName=budparr.language-hugo-vscode) `budparr.language-hugo-vscode`
8. [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) `yzhang.markdown-all-in-one`
9. [npm](https://marketplace.visualstudio.com/items?itemName=eg2.vscode-npm-script) `eg2.vscode-npm-script`
10. [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense) `christian-kohler.npm-intellisense`
11. [Prettier - Code Formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) `esbenp.prettier-vscode`
12. [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) `ms-python.python`
13. [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) `njpwerner.autodocstring`
14. [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) `bradlc.vscode-tailwindcss`
15. [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) `redhat.vscode-yaml`
16. [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig) `EditorConfig.EditorConfig`
17. [Shell Syntax](https://marketplace.visualstudio.com/items?itemName=bmalehorn.shell-syntax) `bmalehorn.shell-syntax`
18. [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock) `johnpapa.vscode-peacock`
19. [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) `ms-azuretools.vscode-docker`
20. [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) `ms-vscode-remote.vscode-remote-extensionpack`
21. [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.powershell) `ms-vscode.powershell`
22. [Nunjucks](https://marketplace.visualstudio.com/items?itemName=ronnidc.nunjucks) `ronnidc.nunjucks`
23. [Partial Diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff) `ryu1kn.partial-diff`
24. [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) `samuelcolvin.jinjahtml`
25. [Liquid](https://marketplace.visualstudio.com/items?itemName=sissel.shopify-liquid) `sissel.shopify-liquid`
26. [Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) `sumneko.lua`
27. [Live Server (Five Server)](https://marketplace.visualstudio.com/items?itemName=yandeu.five-server) `yandeu.five-server`

### Color Themes

1. [Tokyo Night](https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night) `enkia.tokyo-night`
2. [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.material-theme) `zhuangtongfa.material-theme`

### File Icon Themes

1. [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) `PKief.material-icon-theme`
2. [Bearded Icons](https://marketplace.visualstudio.com/items?itemName=beardedbear.beardedicons) `BeardedBear.beardedicons`

### Product Icon Themes

1. [Carbon Product Icons](https://marketplace.visualstudio.com/items?itemName=antfu.icons-carbon) `antfu.icons-carbon`