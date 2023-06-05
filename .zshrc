export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh # Source zsh-syntax-highlighting theme
plugins=(git z nvm zsh-autosuggestions zsh-syntax-highlighting fzf)
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim=nvim
alias j=jrnl
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs nvim"
alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"