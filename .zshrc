export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh # Source zsh-syntax-highlighting theme
source ~/.profile
plugins=(git z nvm zsh-autosuggestions zsh-syntax-highlighting fzf)
source $ZSH/oh-my-zsh.sh

bindkey -s ^f "~/Dev/personal/dotfiles/tmux-sessionizer\n" # open tmux sessionizer with ctrl+f

alias v=nvim
alias t=tmux
alias ta='tmux attach'
alias g=lazygit


# bun completions
[ -s "/home/matteo/.bun/_bun" ] && source "/home/matteo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
