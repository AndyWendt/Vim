filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'  
Plugin 'garbas/vim-snipmate'  
Plugin 'tpope/vim-surround'  
Plugin 'StanAngeloff/php.vim'  
Plugin 'arnaud-lb/vim-php-namespace'  
Plugin 'ervandew/supertab'  
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin '2072/PHP-Indenting-for-VIm'

call vundle#end()            " required
filetype plugin indent on    " required
