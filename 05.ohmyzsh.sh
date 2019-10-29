#!/bin/bash -e

# Get the script directory
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
zshrc="$dir/.zshrc"

#sh -c "CHSH=yes RUNZSH=yes $(curl -fsSLk https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"

sh -c "$(curl -fsSLk https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"

cp -f $zshrc /home/$USER/

# Set the default shell to ZSH
sudo usermod -s $(which zsh) $(whoami)