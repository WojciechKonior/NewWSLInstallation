#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y zsh neovim ripgrep fzf autojump neofetch htop mc cmake clang wine wine32 cifs-utils
