#!/bin/bash

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/grappas/dotfiles $HOME/dotfiles
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

sed -i 's/ZSH_THEME="robbyrussell/ZSH_THEME="powerlevel10k\/powerlevel10k/' $HOME/.zshrc 
sed -i 's/plugins=(/plugins=(gh colorize nmap rsync ripgrep tmux ssh-agent fzf sudo autojump zsh-syntax-highlighting zsh-autosuggestions /' $HOME/.zshrc
echo 'export FZF_BASE=/path/to/fzf/install/dir' >> $HOME/.zshrc
echo "search() { find $2 -name $1 | xargs file }" >> $HOME/.zshrc
