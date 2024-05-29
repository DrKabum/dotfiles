# Kabum .dotfiles!

This is my personal configuration repo. For ease of use, here is how to apply them and track any changes.

## Dependencies to install first

- git
- eza
- zoxide
- python3.11
- fzf
- nvim
- thefuck
- bun
- zsh-autosuggestions
- zsh-syntax-highlighting

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

