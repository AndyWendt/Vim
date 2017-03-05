#!/usr/bin/env bash

cp -R ./config/.vim/* ~/.vim/
cp ./config/.vimrc ~/.vimrc

vim +PluginInstall +qall

echo "Installation Complete"
