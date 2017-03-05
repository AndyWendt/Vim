#!/usr/bin/env bash

echo "Installation Starting"

cp -R ./config/.vim/* ~/.vim/

echo "Copied files to ~/.vim"

cp ./config/.vimrc ~/.vimrc

echo "Copied ~/.vimrc"

vim +PluginInstall +qall

echo "Installation Complete"
