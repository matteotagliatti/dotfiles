# zmodload zsh/zprof

# zinit init
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

source ~/.config/zsh/catppuccin-mocha-zsh-syntax-highlighting.zsh

# plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase # erase duplicates in history
setopt appendhistory # append history to the history file rather than overwriting it
setopt sharehistory # share history between all sessions
setopt hist_ignore_space # ignore commands that start with a space
setopt hist_ignore_all_dups # ignore all duplicates in history
setopt hist_save_no_dups # do not save duplicates in history
setopt hist_ignore_dups # ignore duplicates in history
setopt hist_find_no_dups # do not display duplicates in history

bindkey '^p' history-search-backward # Ctrl-p to search backward
bindkey '^n' history-search-forward # Ctrl-n to search forward
bindkey -s ^f "~/.config/tmux/tmux-sessionizer\n" # open tmux sessionizer with ctrl+f

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # colorize completion list
zstyle ':completion:*' menu no # no menu selection
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # preview directory content

# aliases
alias v=nvim
alias t=tmux
alias ta='tmux attach'
alias g=lazygit
alias c=clear
alias e=exit
alias ls='ls --color'
alias ll='ls -l --color'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# work aliases
alias dr="sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0 && systemctl --user restart docker-desktop"
alias gl="gulp 'launch services'"
alias gi="gulp 'install services'"

source ~/.fzf.zsh
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/catpuccin.json)"

###

# Bun
[ -s "/home/matteo/.bun/_bun" ] && source "/home/matteo/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/usr/local/go/bin # Go

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# zprof
