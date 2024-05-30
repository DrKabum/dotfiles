#!/usr/bin/env bash

# install dependencies
brew install antigen \
    eza \
    zoxide \
    python@3.10 \
    fzf \
    neovim \
    thefuck \
    bat \
    lazygit

# install nvm (node is a dependency of neovim's LSP
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash  

 # get config
 alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
 echo ".cfg" >> .gitignore
 git clone --bare git@github.com:DrKabum/dotfiles.git $HOME/.cfg
 config checkout
