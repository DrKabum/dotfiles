#!/usr/bin/env bash

brew install antigen \
    eza \
    zoxide \
    python@3.10 \
    fzf \
    neovim \
    thefuck \
    bat \
    lazygit

# install curl
curl -fsSL https://bun.sh/install | bash

# install nvm (node is a dependency of neovim's LSP
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash  
