# Dotfiles

## Install

### Ubuntu / Arch

1. Make the setup script executable:

```bash
chmod +x setup/[os].sh
```

2. Run the setup script:

```bash
./setup/[os].sh
```

The setup script will:

- Create necessary directories
- Install all required dependencies
- Set up development tools (Node.js, Bun, etc.)
- Install and configure tools
- Install fonts
- Stow all configuration files

After the script completes:

1. Log out and log back in to:

   - Apply the shell change to zsh
   - Activate Docker group membership (to use Docker without sudo)

2. After logging back in:
   - Run `tmux source ~/.config/tmux/tmux.conf` to load tmux configuration
   - Install your preferred Node.js version: `fnm install <version>`
   - Open tmux and press `prefix + I` to install tmux plugins
