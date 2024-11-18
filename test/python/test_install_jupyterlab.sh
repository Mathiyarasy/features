set -e

user="$(whoami)"
check "user" grep vscode <<< "$user"

# Check for an installation of JupyterLab
check "version" jupyter lab --version