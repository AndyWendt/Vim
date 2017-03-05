#!/usr/bin/env bash

echo "Installation Starting"

cp -R ./config/.vim/* ~/.vim/
echo "Copied files to ~/.vim"

cp ./config/.vimrc ~/.vimrc
echo "Copied ~/.vimrc"

cp ./config/.gtkrc-2.0 ~/.gtkrc-2.0
echo "Copied .gtkrc-2.0"

# install plugins
vim +PluginInstall +qall

echo "Installation Complete"
