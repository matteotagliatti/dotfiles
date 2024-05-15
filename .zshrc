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

alias today='date +%Y-%m-%d'
alias vt='nvim $(today).md'
alias yesterday='date -d "yesterday 13:00" +%Y-%m-%d'
alias vy='nvim $(yesterday).md'

