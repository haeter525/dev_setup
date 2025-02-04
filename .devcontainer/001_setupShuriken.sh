#!/usr/bin/bash

# Install Shuriken
sudo apt-get update && sudo apt-get install -y cmake git default-jdk iputils-ping
pip install -v git+https://github.com/Fare9/Shuriken-Analyzer.git@main#subdirectory=shuriken/bindings/Python/