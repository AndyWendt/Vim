#!/usr/bin/env bash

cp ./config/plugins.vim ~/.vim/plugins.vim
cp -R ./snippets ~/.vim/snippets
cp ./config/.vimrc ~/.vimrc

vim +PluginInstall +qall

echo "Installation Complete"
