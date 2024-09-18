# Dotfiles

## Install

Use [Stow](https://www.gnu.org/software/stow/manual/) to do the symlink.

```bash
sudo apt install stow
git clone https://github.com/matteotagliatti/dotfiles.git
stow -t $HOME dotfiles
fc-cache -fv # update font change
```
