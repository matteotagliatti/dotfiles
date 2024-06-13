export ZSH="$HOME/.oh-my-zsh" # path to oh-my-zsh
ZSH_THEME="robbyrussell"
source ~/.config/zsh/catppuccin-mocha-zsh-syntax-highlighting.zsh # Source zsh-syntax-highlighting theme
plugins=(fzf fzf-tab nvm z zsh-autosuggestions zsh-syntax-highlighting)
fpath+="${ZSH_CUSTOM:-"$ZSH/custom"}/plugins/zsh-completions/src" # As docs suggested
source $ZSH/oh-my-zsh.sh

bindkey -s ^f "~/.config/tmux/tmux-sessionizer\n" # open tmux sessionizer with ctrl+f

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive completion

source ~/.config/zsh/personal-alias.zsh 
source ~/.config/zsh/work-alias.zsh 

# Bun
[ -s "/home/matteo/.bun/_bun" ] && source "/home/matteo/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/usr/local/go/bin # Go

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
