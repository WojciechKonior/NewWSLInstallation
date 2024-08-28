#!/bin/bash

sudo sh -c "wget -O - https://dl.openfoam.org/gpg.key > /etc/apt/trusted.gpg.d/openfoam.asc"
sudo add-apt-repository http://dl.openfoam.org/ubuntu
sudo apt update
sudo apt -y install openfoam12
echo ". /opt/openfoam12/etc/bashrc" >> $HOME/.zshrc
