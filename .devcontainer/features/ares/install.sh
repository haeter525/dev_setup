#!/usr/bin/env bash
set -e

# Setup Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o /tmp/rustup.sh
sh /tmp/rustup.sh -y

. "$HOME/.cargo/env"

# Setup Ares
# Installation steps referenced from https://github.com/bee-san/Ares
cargo install project_ares
