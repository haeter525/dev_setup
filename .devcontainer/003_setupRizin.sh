#!/usr/bin/bash
sudo apt install -y meson

sudo install -o vscode -g vscode -m 755 -d /workspaces/rizin/
git clone https://github.com/rizinorg/rizin /workspaces/rizin/
cd /workspaces/rizin/
git checkout v0.7.3
meson setup build
meson compile -C build
sudo meson install -C build
sudo ldconfig -v
cd -