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

# antigen configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    source $HOMEBREW_PREFIX/share/antigen/antigen.zsh
    eval $(fzf --zsh)
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    source ~/antigen.sh
    export PATH="$PATH:/opt/nvim-linux64/bin" 
    export PATH="$PATH:$HOME/.local/bin"
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
fi
## install plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting # keep last
## apply theme
antigen theme romkatv/powerlevel10k
## install/apply
antigen apply

# powerlevel1k setup
## instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bat
export BAT_THEME="1337"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# aliases
## ---- Eza (better ls) -----
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"
## zoxide
alias cd="z"
eval "$(zoxide init zsh)"
## Python
alias python="python3.11"
## thefuck
eval $(thefuck --alias)
eval $(thefuck --alias fichtre)
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
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
