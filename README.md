
# Development Environment

This repository provides a clean environment for Quark-Engine development.

## Getting Started

1. Make sure you have Docker and VS Code installed
2. Install the "Dev Containers" extension for VS Code
3. Clone this repository
4. Open this workspace and click the `Reopen in Container` button in the left-bottom corner.
5. (Optional) Install all dependencies needed by Quark's unit tests.
```sh
ls -v .devcontainer/[0-9][0-9][0-9]_setup*.sh | xargs -I FILE sh FILE
```
