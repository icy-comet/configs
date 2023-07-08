import subprocess
import urllib.request
from re import findall
from pathlib import Path
from textwrap import dedent
from difflib import unified_diff
from argparse import ArgumentParser, RawTextHelpFormatter

script_loc = Path(__file__).absolute()

ANSI_PREFIX = "\033["
RED = ANSI_PREFIX + "0;31m"
GREEN = ANSI_PREFIX + "0;32m"
BLUE = ANSI_PREFIX + "0;34m"
RESET = ANSI_PREFIX + "0m"
LIST_FILE = script_loc.parent / "README.md"
DIFF_IGNORE_FILE = script_loc.parent / "diff.ignore"


class Extension:
    def __init__(self, id: str) -> None:
        self.id = id
        self.url = "https://marketplace.visualstudio.com/items?itemName=" + id

    def fetch_name(self):
        try:
            rawHtml: str = urllib.request.urlopen(self.url).read().decode("utf8")
            # tried using python's built-in html.parser
            name_span_txt = "<span class=\"ux-item-name\">"
            name_start_idx = rawHtml.find(name_span_txt) + len(name_span_txt)
            name_end_idx = name_start_idx + rawHtml[name_start_idx:].find("</span>") - 1
            self.name = rawHtml[name_start_idx : name_end_idx + 1]
        except:
            return None

    def construct_entry(self):
        self.fetch_name()
        entry = f"[{self.name}]({self.url}) `{self.id}`"
        return entry


def parse_diff_ignore() -> list[str]:
    global DIFF_IGNORE_FILE

    if DIFF_IGNORE_FILE.exists():
        with open(DIFF_IGNORE_FILE, "r", encoding="utf-8", errors="surrogateescape") as f:
            ignore_lines = f.readlines()

        return [line.strip() for line in ignore_lines]
    else:
        return None


def parse_list_file() -> list[str]:
    global LIST_FILE

    if LIST_FILE.exists():
        with open(LIST_FILE, "r", encoding="utf-8", errors="surrogateescape") as f:
            list_file_content = f.read()
        return sorted(
            [
                ext.strip("`")
                for ext in findall(r"(`[a-zA-Z0-9-._]+`)", list_file_content)
            ]
        )
    else:
        print(RED, "Could not parse extensions. Is the list file missing?", RESET)
        return None


def update_list_file():
    global LIST_FILE

    if LIST_FILE.exists():

        installed_extenions = parse_installed_extensions()
        ignored_extensions = [x.lstrip("+-") for x in parse_diff_ignore()]

        write_data = "### List\n\n"

        if installed_extenions:
            ignore_count = 0
            for i, ext in enumerate(installed_extenions):
                if not ext in ignored_extensions:
                    write_data += (
                        f"{i+1-ignore_count}. {Extension(ext).construct_entry()}\n"
                    )
                else:
                    ignore_count += 1

        with open(LIST_FILE, "r+", encoding="utf-8", errors="surrogateescape") as f:
            file_contents = f.read()

            list_start = file_contents.find("### List")
            write_data = file_contents[:list_start] + write_data

            f.seek(0, 0)
            f.write(write_data)
    else:
        print(RED, "List file missing!", RESET)


def install_exts():

    extensions = parse_list_file()

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
                    print(RED, e.stderr, RESET)
                except:
                    print(RED, "Something went wrong.", RESET)
                break


def list_exts() -> None:
    extensions = parse_list_file()

    if extensions:
        for extension in extensions:
            print(extension)


def parse_installed_extensions() -> list[str]:
    try:
        process = subprocess.run(
            "code --list-extensions",
            shell=True,
            check=True,
            capture_output=True,
            text=True,
        )

        return sorted(process.stdout.splitlines())
    except Exception as e:
        try:
            print(RED, e.stderr, RESET)
        except:
            print(RED, "Something went wrong.", RESET)

        return None


def comapre_exts():

    installed_extensions = parse_installed_extensions()
    listed_extensions = parse_list_file()
    ignore_lines = parse_diff_ignore()

    if listed_extensions and installed_extensions:
        diff = unified_diff(
            listed_extensions,
            installed_extensions,
            fromfile="extensions in readme",
            tofile="extensions reported by code binary",
        )
        for line in diff:
            if ignore_lines and (line in ignore_lines):
                continue

            if line.startswith("+"):
                print(GREEN, line, RESET)
            elif line.startswith("-"):
                print(RED, line, RESET)
            elif line.startswith("@@"):
                # the numbers reported would be useless
                # because of diff ignore
                continue
            else:
                print(line)


parser = ArgumentParser(
    description="a simple python script to make managing VS Code extensions easier",
    formatter_class=RawTextHelpFormatter,
)

parser.add_argument(
    "-d",
    "--do",
    choices=["install", "list", "compare", "update-list"],
    required=True,
    metavar="xxxx",
    help=dedent(
        """\

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
                                to ignore those names\
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
    elif action == "update-list":
        update_list_file()


if __name__ == "__main__":
    main()
