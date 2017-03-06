#!/usr/bin/env bash
echo "Installation Starting"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    cp ./config/.gtkrc-2.0 ~/.gtkrc-2.0
    echo "Copied .gtkrc-2.0"
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "Installed Vundle"
fi

cp -R ./config/.vim/* ~/.vim/
echo "Copied files to ~/.vim"


cp ./config/install-vimrc ~/.vimrc
echo "Copied Temp Install vimrc to ~/.vimrc"

# install plugins
vim +PluginInstall +qall

cp ./config/vimrc ~/.vimrc
echo "Copied ~/.vimrc"

echo "Installation Complete"
