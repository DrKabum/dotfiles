# powerlevel1k setup
## instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# command history
## history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

## completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# plugins
## zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
## zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# bat
export BAT_THEME="1337"

# bun completions
[ -s "/Users/nico/.bun/_bun" ] && source "/Users/nico/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# aliases
## ---- Eza (better ls) -----
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"

## zoxide
alias cd="z"
eval "$(zoxide init zsh)"

## Python
alias python="python3.11"

## fzf
eval "$(fzf --zsh)"

## thefuck
eval $(thefuck --alias)
eval $(thefuck --alias fichtre)

## Neovim
alias vim='nvim'

## Git
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpo='git push origin'
alias gr='git branch -r'
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'
alias batdiff='git diff --name-only --relative --diff-filter=d | xargs bat --diff'
alias lg='lazygit'
alias config='/usr/bin/git --git-dir=/Users/nico/.mycfg/ --work-tree=/Users/nico'
