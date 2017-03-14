#!/usr/bin/env bash
echo "Installation Starting"
if [ ! -d ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "Installed Vim Plug"
fi

cp -R ./config/.vim/* ~/.vim/
echo "Copied files to ~/.vim"

cp ./config/install-vimrc ~/.vimrc
echo "Copied Temp Install vimrc to ~/.vimrc"

# install plugins
vim +PlugInstall +qall

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo apt install ctags
    echo "Installed ctags linux"

    sudo apt install golang
    echo "installed golang linux"

    sudo apt install python-dev python3-dev
    echo "installed python dev packages"

    sudo apt install build-essential cmake
    sudo apt install golang
    echo "installed cmake and go linux"

    cp ./config/.gtkrc-2.0 ~/.gtkrc-2.0
    echo "Copied .gtkrc-2.0"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install ctags
    echo "Installed ctags for mac"

    brew install cmake
    echo "Installed cmake for mac"

    brew install go
    echo "Installed go for mac"
fi

if [ ! -f ~/.vim/bundle/YouCompleteMe/installed ]; then
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --gocode-completer --tern-completer
    cd -
    echo "Installed ycm"
    touch ~/.vim/bundle/YouCompleteMe/installed
    echo "Installed YCM at $(date)" > ~/.vim/bundle/YouCompleteMe/installed
else
    echo "YCM already installed"
fi

npm install -g typescript

cp ./config/vimrc ~/.vimrc
echo "Copied ~/.vimrc"

echo "Installation Complete"
