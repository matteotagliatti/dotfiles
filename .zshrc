export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh # Source zsh-syntax-highlighting theme
plugins=(fzf nvm z zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
source $ZSH/oh-my-zsh.sh

bindkey -s ^f "~/Dev/personal/dotfiles/tmux-sessionizer\n" # open tmux sessionizer with ctrl+f

alias v=nvim
alias t=tmux
alias ta='tmux attach'
alias g=lazygit

alias today='date +%Y-%m-%d'
alias vt='nvim $(today).md'
alias yesterday='date -d "yesterday 13:00" +%Y-%m-%d'
alias vy='nvim $(yesterday).md'


# Bun
[ -s "/home/matteo/.bun/_bun" ] && source "/home/matteo/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/usr/local/go/bin # Go
