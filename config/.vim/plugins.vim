filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Misc
Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'


" Visual
Plugin 'itchyny/lightline.vim'

" Coding
Plugin 'vim-syntastic/syntastic'


" Navigation
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

" Text editing and search
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'  
Plugin 'garbas/vim-snipmate'  
Plugin 'tpope/vim-surround'  
Plugin 'ervandew/supertab'

" https://github.com/terryma/vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'

Plugin 'maxbrunsfeld/vim-yankstack'

" PHP 
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'arnaud-lb/vim-php-namespace'  
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'StanAngeloff/php.vim'  

" Distraction Free Writing
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'

call vundle#end()            " required
filetype plugin indent on    " required
