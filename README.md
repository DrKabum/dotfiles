# Kabum .dotfiles!

This is my personal configuration repo. For ease of use, here is how to apply them and track any changes.

## Dependencies
### packages to install

- Some nerd fonts (like [that one](https://www.nerdfonts.com/))
- git (version control for this repo. Yes)
- curl
- homebrew
- [antigen](https://github.com/zsh-users/antigen/wiki/Installation) (plugin manager for zsh, install in $HOME)
- [eza](https://github.com/eza-community/eza) (replacement for `ls`)
- [zoxide](https://github.com/ajeetdsouza/zoxide) (replacement for `cd`)
- [python3.11](https://www.python.org/) (optional as an alias is configured for it, remove it if necessary)
- [fzf](https://github.com/junegunn/fzf) (fuzzy finder for quick jump to file)
- [nvim](https://neovim.io/) (this is now you IDE)
- [thefuck](https://github.com/nvbn/thefuck) (helps rephrase missed commands)
- [bun](https://bun.sh/) (optional as an alias is configured for it, remove it if necessary)
- [bat](https://github.com/sharkdp/bat) (syntax highlighting in `cat`)
- [LazyGit](https://github.com/jesseduffield/lazygit) (optional as an alias is configured for it, remove it if necessary)

### Other

1. Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

2. Install Alacritty themes and add coolnight

```bash
mkdir ~/.config/alacritty
cd ~/.config/alacritty
git clone https://github.com/alacritty/alacritty-theme themes
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/.config/alacritty/themes/themes/coolnight.toml --output ~/.config/alacritty/themes/themes/coolnight.toml
```

## Out of scope (you might want to create manually)

- `.zshenv`

## Apply configuration

1. Add the following alias to `.zshrc` or your terminal session

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

2. Ignore clone folder to avoid weird recursion issues

```bash
alias echo ".cfg" >> .gitignore
```

3. Clone the dotfiles 

```bash
git clone --bare git@github.com:DrKabum/dotfiles.git $HOME/.mycfg
```

4. Define the `config` alias for git in this bare repo

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

5. Checkout actual content of the remote into $HOME:

```bash
config checkout 
```

>[!TIP]
> If the above fails, it's because some of the config files from this repository are already present by default. Move them to a backup folder or delete them.

