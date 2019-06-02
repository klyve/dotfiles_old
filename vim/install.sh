#!/bin/bash

set -e

# Install python3
brew install python3

# Make the nvim directory if it does not exist
echo "Creating nvim directory"
mkdir -p ~/.config/nvim

# Install virtualenv to containerize dependencies
echo "Installing virtualenv"
python3 -m pip install virtualenv
python3 -m virtualenv -p python3 ~/.config/nvim/env

# Install pip modules for Neovim within the virtual environment created
echo "Activate virtualenv and install libraries for async autocompletion"
source ~/.config/nvim/env/bin/activate
pip install neovim jedi psutil setproctitle yapf
deactivate

# Install plug
echo "Install plug for vim"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install fonts for airline bar
# echo "Downloading fonts"
# brew tap homebrew/cask-fonts
# brew cask install font-droidsansmono-nerd-font


echo "Recommended add an alias to from vim to nvim"
echo "alias vim='nvim'"

# Running plug install
sed '/call plug#end/q' init.vim > ~/.config/nvim/init.vim
nvim -c ':PlugInstall' -c ':UpdateRemotePlugins' -c ':qall'
rm ~/.config/nvim/init.vim

# Copy init.vim 
cp init.vim ~/.config/nvim/
