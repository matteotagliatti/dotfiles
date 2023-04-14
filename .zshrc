export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh # Source zsh-syntax-highlighting theme
plugins=(git z nvm zsh-autosuggestions zsh-syntax-highlighting fzf)
source $ZSH/oh-my-zsh.sh

# Aliases
alias nvim=vim