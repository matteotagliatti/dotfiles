alias pacu='sudo pacman -Syu'  # Update system
alias yu='yay -Syu'  # Update system and AUR packages
alias autoremove='sudo pacman -Rns $(pacman -Qtdq)'  # Remove orphaned packages