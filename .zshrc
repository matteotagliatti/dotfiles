export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh # Source zsh-syntax-highlighting theme
plugins=(fzf fzf-tab nvm z zsh-autosuggestions zsh-syntax-highlighting)
fpath+="${ZSH_CUSTOM:-"$ZSH/custom"}/plugins/zsh-completions/src" # As docs suggested
source $ZSH/oh-my-zsh.sh

bindkey -s ^f "~/Dev/personal/dotfiles/tmux-sessionizer\n" # open tmux sessionizer with ctrl+f

alias v=nvim
alias t=tmux
alias ta='tmux attach'
alias g=lazygit
alias c=clear

# Bun
[ -s "/home/matteo/.bun/_bun" ] && source "/home/matteo/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/usr/local/go/bin # Go
