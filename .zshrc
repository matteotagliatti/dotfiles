# zmodload zsh/zprof

# zinit init
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

autoload -U compinit; compinit

# plugins
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

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
bindkey '^[[1;5D' backward-word # Ctrl + Arrow Left go back one word
bindkey '^[[1;5C' forward-word # Ctrl + Arrow Right go forward one word
bindkey -s ^f "~/.config/tmux/tmux-sessionizer\n" # open tmux sessionizer with ctrl+f

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # colorize completion list
zstyle ':completion:*' menu no # no menu selection
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # preview directory content

# set terminal title to current directory
precmd() {
  print -Pn "\e]0;%~\a"
}

# Git branch info
git_branch() {
  local branch dirty
  if git rev-parse --git-dir > /dev/null 2>&1; then
    branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
    # Check for uncommitted changes
    if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
      dirty="%F{red}*%f"
    fi
    echo " %F{yellow}(%F{red}$branch$dirty%F{yellow})%f"
  fi
}

# Custom prompt
setopt PROMPT_SUBST # evaluate the prompt
PROMPT=$'%F{blue}%1~%f$(git_branch) '

# aliases
alias v=nvim
alias t=tmux
alias ta='tmux attach'
alias g=lazygit
alias d=lazydocker
alias e=exit
alias ls='ls --color'
alias ll='ls -l --color'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

export PATH="$HOME/.local/bin:$PATH" # Add user bin directory to PATH

source ~/.fzf.zsh
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"

###

# Bun
[ -s "/home/matteo/.bun/_bun" ] && source "/home/matteo/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zprof
