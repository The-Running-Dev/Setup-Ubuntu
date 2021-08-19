#!/bin/bash -e

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
zshConfig="$dir/.zshrc"

echo "Installing Oh My ZSH..."
sh -c "$(curl -fsSLk https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"

echo "Copying ZSH Config..."
cp -f $zshConfig /home/$USER/

# Set the default shell to ZSH
sudo usermod -s $(which zsh) $(whoami)

# opkg install zsh git git-http
# mv /root/.oh-my-zsh/ /share/CACHEDEV3_DATA/System/
# mv .zshrc /share/CACHEDEV3_DATA/System/
# ln -s /share/CACHEDEV3_DATA/System/.zshrc .zshrc
# ln -s /share/CACHEDEV3_DATA/System/.oh-my-zsh .oh-my-zsh
# sudo usermod -s $(which zsh) $(whoami)