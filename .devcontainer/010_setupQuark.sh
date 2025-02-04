#!/usr/bin/bash

sudo install -o vscode -g vscode -m 755 -d /workspaces/quark-engine/
git clone https://github.com/quark-engine/quark-engine /workspaces/quark-engine/

# Install Quark's dependencies
sudo apt-get update && sudo apt install -y graphviz
pip install pytest requests frida-tools importlib_resources prettytable langchain-core langchain-openai
pip install sphinx sphinx-rtd-theme
pip install -e /workspaces/quark-engine/