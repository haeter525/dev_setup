#!/usr/bin/env bash
set -e

# Install OpenSSL dependencies required by project_ares
apt-get update && apt-get install -y libssl-dev pkg-config

# Setup Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o /tmp/rustup.sh
sh /tmp/rustup.sh -y

. "$HOME/.cargo/env"

# Setup Ares
# Installation steps referenced from https://github.com/bee-san/Ares
# Install from git tag 0.11.0 as crates.io v0.12.0 has a candle-core/rand_distr build failure
cargo install --git https://github.com/bee-san/Ares --tag 0.11.0 --locked
