## INSTALLING WSL
Open PowerShell terminal with admin priviliges and run
```
wsl --install --distribution Ubuntu-24.04
```

## INSTALLING ZSH
```
sudo apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc
Now open WSL terminal and configure the theme.

## INSTALLING NEOVIM
```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y neovim
sudo update-alternatives --config editor
sudo update-alternatives --config vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
Open neovim and configure it.
