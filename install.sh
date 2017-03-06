#!/usr/bin/env bash

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "Installed Vundle"
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    cp ./config/.gtkrc-2.0 ~/.gtkrc-2.0
    echo "Copied .gtkrc-2.0"
fi

cp ./config/install-vimrc ~/.vimrc
echo "Copied Temp Install vimrc to ~/.vimrc"

# install plugins
vim +PluginInstall +qall

echo "Installation Starting"

cp -R ./config/.vim/* ~/.vim/
echo "Copied files to ~/.vim"

cp ./config/vimrc ~/.vimrc
echo "Copied ~/.vimrc"

echo "Installation Complete"
