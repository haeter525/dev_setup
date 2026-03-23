#!/usr/bin/env bash
set -e

apt-get update && apt-get install -y meson

install -m 755 -d /workspaces/rizin/
git clone https://github.com/rizinorg/rizin /workspaces/rizin/
cd /workspaces/rizin/
git checkout v0.7.3
meson setup build
meson compile -C build
meson install -C build
ldconfig -v
