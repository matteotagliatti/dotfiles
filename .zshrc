source ~/.config/zsh/zinit.zsh

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

source ~/.config/zsh/history.zsh
source ~/.config/zsh/catppuccin-mocha-zsh-syntax-highlighting.zsh

bindkey '^p' history-search-backward # Ctrl-p to search backward
bindkey '^n' history-search-forward # Ctrl-n to search forward
bindkey -s ^f "~/.config/tmux/tmux-sessionizer\n" # open tmux sessionizer with ctrl+f

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # colorize completion list
zstyle ':completion:*' menu no # no menu selection
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # preview directory content
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath' # preview directory content

source ~/.config/zsh/personal-alias.zsh
source ~/.config/zsh/work-alias.zsh

source ~/.fzf.zsh
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

###

# Bun
[ -s "/home/matteo/.bun/_bun" ] && source "/home/matteo/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/usr/local/go/bin # Go

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
