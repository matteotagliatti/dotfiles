#!/bin/bash

# Exit on error
set -e

echo "Starting Ubuntu setup script..."

# Update system
sudo apt update && sudo apt upgrade -y

# Create Dev directories
mkdir -p ~/Dev/{personal,work,test}

# Install basic dependencies
sudo apt install -y \
    git \
    curl \
    wget \
    unzip \
    zsh \
    tmux \
    build-essential \
    pkg-config \
    libssl-dev \
    stow \
    ripgrep \
    fd-find \
    bat

# Install fzf from git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# Install Zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# Install Node Version Manager (fnm)
curl -fsSL https://fnm.vercel.app/install | bash

# Install Bun
curl -fsSL https://bun.sh/install | bash

# Install Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
mkdir -p "$(dirname $ZINIT_HOME)"
git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# Install Oh My Posh
curl -s https://ohmyposh.dev/install.sh | bash -s

# Install Neovim (latest)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar xzf nvim-linux64.tar.gz -C /opt
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
rm nvim-linux64.tar.gz

# Install LazyGit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz

# Install Docker
echo "Installing Docker..."
# Add Docker's official GPG key
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker packages
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add user to docker group to run docker without sudo
sudo usermod -aG docker $USER

# Install LazyDocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# Install TPM (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Ghostty
curl -fsSL https://pkg.ghostty.dev/key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/ghostty-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ghostty-archive-keyring.gpg] https://pkg.ghostty.dev/ubuntu jammy main" | sudo tee /etc/apt/sources.list.d/ghostty.list
sudo apt update
sudo apt install -y ghostty

# Install fonts from dotfiles
echo "Installing fonts..."
mkdir -p ~/.local/share/fonts
cp -r ~/Dev/personal/dotfiles/.fonts/* ~/.local/share/fonts/
fc-cache -f -v

# Stow config files
stow -t $HOME ~/Dev/personal/dotfiles

# Make tmux-sessionizer executable
chmod +x ~/.config/tmux/tmux-sessionizer

# Set ZSH as default shell
chsh -s $(which zsh)

echo "Setup complete! Please follow these steps:"
echo "1. Log out and log back in to apply the shell change to zsh"
echo "2. After logging back in:"
echo "   - Run 'tmux source ~/.config/tmux/tmux.conf' to load tmux configuration"
echo "   - Install your preferred Node.js version: 'fnm install <version>'"
echo "   - Open tmux and press 'prefix + I' to install tmux plugins"
echo "3. For Docker to work without sudo, either:"
echo "   - Log out and log back in, or"
echo "   - Run 'newgrp docker' in your terminal"
