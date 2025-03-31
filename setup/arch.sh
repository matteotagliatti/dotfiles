#!/bin/bash

# Exit on error
set -e

echo "Starting Arch Linux setup script..."

# Update system
sudo pacman -Syu --noconfirm

# Create Dev directories
mkdir -p ~/Dev/{personal,work,test}

# Install basic dependencies
sudo pacman -S --noconfirm \
    git \
    curl \
    wget \
    unzip \
    zsh \
    tmux \
    base-devel \
    pkg-config \
    openssl \
    stow \
    ripgrep \
    fzf \
    neovim \
    lazygit \
    docker \
    docker-compose \
    ghostty

# Install AUR helper (yay)
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
fi

# Install AUR packages
yay -S --noconfirm lazydocker

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

# Install TPM (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install fonts from dotfiles
echo "Installing fonts..."
mkdir -p ~/.local/share/fonts
cp -r ~/Dev/personal/dotfiles/.fonts/* ~/.local/share/fonts/
fc-cache -f -v

# Start and enable Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Add user to docker group to run docker without sudo
sudo usermod -aG docker $USER

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
