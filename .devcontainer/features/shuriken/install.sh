#!/usr/bin/env bash
set -e

# Install dependencies
apt-get update && apt-get install -y cmake git default-jdk iputils-ping

# Install Shuriken Python bindings
pip install -v git+https://github.com/Fare9/Shuriken-Analyzer.git@main#subdirectory=shuriken/bindings/Python/
