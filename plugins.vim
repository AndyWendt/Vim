filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'  
Plugin 'msanders/snipmate.vim'  
Plugin 'tpope/vim-surround'  
Plugin 'StanAngeloff/php.vim'  
Plugin 'arnaud-lb/vim-php-namespace'  
Plugin 'ervandew/supertab'  


call vundle#end()            " required
filetype plugin indent on    " required
