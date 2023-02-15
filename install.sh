#!/bin/bash

########
# nvim #
########
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim"

#######
# X11 #
#######
rm -rf "$HOME/.config/X11"
mkdir -p "$HOME/.config/X11"
ln -sf "$HOME/dotfiles/X11/xinitrc" "$HOME/.config/X11/.xinitrc"
ln -sf "$HOME/dotfiles/X11/Xresources" "$HOME/.config/X11/.Xresources"

######
# i3 #
######
rm -rf "$HOME/.config/i3"
mkdir -p "$HOME/.config/i3"
ln -sf "$HOME/dotfiles/i3/config" "$HOME/.config/i3/config"
ln -sf "$HOME/dotfiles/i3/i3status.conf" "$HOME/.config/i3/i3status.conf"

#######
# zsh #
#######

# .zshenv is intended to be symlinked to $HOME
rm "$HOME/.zshenv"
ln -sf "$HOME/dotfiles/zsh/zshenv" "$HOME/.zshenv"

# all other zsh dotfiles are placed in .config/zsh
rm -rf "$HOME/.config/zsh"
mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/zshrc" "$HOME/.config/zsh/.zshrc"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
ln -sf "$HOME/dotfiles/zsh/scripts.sh" "$HOME/.config/zsh/scripts.sh"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh/external"

