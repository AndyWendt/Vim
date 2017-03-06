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

" Copy Pasta
Plugin 'svermeulen/vim-easyclip'
Plugin 'tpope/vim-repeat'


" Status Line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Coding
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


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

" PHP
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'StanAngeloff/php.vim'

" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'


" Distraction Free Writing
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'

call vundle#end()            " required
filetype plugin indent on    " required
