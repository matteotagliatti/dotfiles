# Dotfiles

My personal dotfiles repository containing configurations for various development tools and system settings.

## 📦 Managing Dotfiles with Stow

This repository uses [GNU Stow](https://www.gnu.org/software/stow/) to manage dotfiles. Stow creates symlinks from your home directory to the files in this repository.

### Basic Usage

To stow all configurations:

```bash
stow -t $HOME .
```

To stow specific configuration from dotfiles root:

```bash
mkdir ~/.config/nvim
cd .config
stow -t $HOME/nvim nvim
```

### Unstowing

To remove symlinks:

```bash
stow -D -t $HOME .    # Remove all symlinks
stow -D -t $HOME/nvim nvim # Remove only Neovim symlink from inside .config
```

### Restowing

To update symlinks after changes:

```bash
stow -R -t $HOME .    # Restow all configurations
```
