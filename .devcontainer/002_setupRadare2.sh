#!/usr/bin/bash
sudo install -o vscode -g vscode -m 755 -d /workspaces/radare2/
git clone -b 5.9.0 https://github.com/radareorg/radare2 /workspaces/radare2/
/workspaces/radare2/sys/install.sh --without-pull