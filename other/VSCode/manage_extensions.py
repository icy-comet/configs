import subprocess
from re import findall
from pathlib import Path
from textwrap import dedent
from difflib import unified_diff
from argparse import ArgumentParser, RawTextHelpFormatter

NO_README_MSG = "Could not parse extensions."


def parse_file() -> list[str]:
    LIST_FILE = Path("README.md")

    if LIST_FILE.exists():
        with open(LIST_FILE, "r") as f:
            list_file_content = f.read()
        return sorted(
            [
                ext.strip("`")
                for ext in findall(r"(`[a-zA-Z0-9-._]+`)", list_file_content)
            ]
        )
    else:
        return None


def install_exts():

    extensions = parse_file()

    if extensions:
        for extension in extensions:
            try:
                process = subprocess.run(
                    f"code --install-extension {extension}",
                    shell=True,
                    check=True,
                    capture_output=True,
                    text=True,
                )
                print(process.stdout)
            except Exception as e:
                try:
                    print(e.stderr)
                except:
                    print("Something went wrong.")
                break
    else:
        print(NO_README_MSG)


def list_exts():
    extensions = parse_file()

    if extensions:
        for extension in extensions:
            print(extension)
    else:
        print(NO_README_MSG)


def comapre_exts():
    extensions_file = parse_file()
    if extensions_file:
        try:
            process = subprocess.run(
                "code --list-extensions",
                shell=True,
                check=True,
                capture_output=True,
                text=True,
            )
            extensions_installed = sorted(process.stdout.splitlines())
            diff = unified_diff(
                extensions_file,
                extensions_installed,
                fromfile="extensions in readme",
                tofile="extensions reported by code binary",
            )
            for line in diff:
                print(line)
        except Exception as e:
            try:
                print(e.stderr)
            except:
                print("Something went wrong.")
    else:
        print(NO_README_MSG)


parser = ArgumentParser(
    description="a simple python script to make managing VS Code extensions easier",
    formatter_class=RawTextHelpFormatter,
)

parser.add_argument(
    "-d",
    "--do",
    choices=["install", "list", "compare"],
    required=True,
    metavar="xxxx",
    help=dedent(
        """\

                    specify the action to perform

                    list        print all extensions present in readme
                                similar to `code --list-extensions`
                                useful for comparison

                    install     install all extensions listed in the readme
                                names should be inside backticks (`)

                    compare     print a text-diff of
                                extensions present in readme
                                compared to those that are installed
                                (determined using `code --list-extensions`)\
                    """
    ),
)


def main():
    action: str = parser.parse_args().do.lower().strip()

    if action == "install":
        install_exts()
    elif action == "list":
        list_exts()
    elif action == "compare":
        comapre_exts()


if __name__ == "__main__":
    main()
