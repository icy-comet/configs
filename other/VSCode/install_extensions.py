from pathlib import Path
import subprocess
import re

list_file = Path("README.md")

with open(list_file, "r") as f:
    list_file_content = f.read()

extensions: list[str] = re.findall(r"(`[a-zA-Z-._]+`)", list_file_content)

for extension in extensions:
    try:
        process = subprocess.run(f"code --install-extension {extension.strip('`')}", shell=True, check=True, capture_output=True, text=True)
        print(process.stdout)
    except Exception as e:
        try:
            print(e.stderr)
        except:
            pass
        break