### INSTALLING WSL
Go to the `Turn Windows features on or off` in Control Panel and check the `Linux Subsystem for Linux`. Hit ok and restart.
Open PowerShell terminal with admin priviliges and run
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2
wsl --update
wsl --install --distribution Ubuntu-24.04
```

### INSTALLING UTILITIES
Run WSL Ubuntu 24.04 and bash prompt should appear. 

Now install some utils:
```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y zsh neovim ripgrep fzf autojump neofetch htop mc cmake clang wine wine32 cifs-utils
```

### CONFIGURING ZSH
```
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/grappas/dotfiles $HOME/dotfiles
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```
Modify:
```
ZSH_THEME="powerlevel10k/powerlevel10k
plugins=(gh colorize nmap rsync ripgrep tmux ssh-agent fzf sudo git autojump zsh-syntax-highlighting zsh-autosuggestions)
export FZF_BASE=/path/to/fzf/install/dir
```
in your .zshrc file. Now open WSL terminal and configure the theme.


### CONFIGURING NEOVIM
```
sudo update-alternatives --config editor
sudo update-alternatives --config vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
ln -s $HOME/dotfiles/lazynvim $HOME/.config/nvim
rm -rf ~/.config/nvim/.git
```
Open neovim and it's ready to go.

### INSTALLING NERD FONTS
Download https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/VictorMono.zip
and install it. Now you can change terminal fonts to VictorMono NF.

### INSTALLING OPENFOAM
```
sudo sh -c "wget -O - https://dl.openfoam.org/gpg.key > /etc/apt/trusted.gpg.d/openfoam.asc"
sudo add-apt-repository http://dl.openfoam.org/ubuntu
sudo apt update
sudo apt -y install openfoam11
echo ". /opt/openfoam11/etc/bashrc" >> $HOME/.zshrc
```

Getting started
```
mkdir -p $FOAM_RUN
cd $FOAM_RUN
cp -r $FOAM_TUTORIALS/incompressibleFluid/pitzDailySteady .
cd pitzDailySteady
blockMesh
foamRun
paraFoam
```
