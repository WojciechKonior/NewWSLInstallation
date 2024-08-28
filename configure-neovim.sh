#!/bin/bash

sudo update-alternatives --config editor
sudo update-alternatives --config vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
mv $HOME/.config/nvim $HOME/.config/nvim.old
ln -s $HOME/dotfiles/lazynvim $HOME/.config/nvim
rm -rf ~/.config/nvim/.git
