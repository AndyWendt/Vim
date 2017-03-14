filetype off                  " required

call plug#begin('~/.vim/bundle')

" Misc
Plug 'flazz/vim-colorschemes'
Plug 'editorconfig/editorconfig-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fugitive'

" Copy Pasta
Plug 'svermeulen/vim-easyclip'
Plug 'tpope/vim-repeat'


" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Coding
Plug 'vim-syntastic/syntastic'
Plug 'Valloric/YouCompleteMe'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


" Navigation
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

" Text editing and search
Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'
Plug 'garbas/vim-snipmate'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'

" https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'

" PHP
Plug 'stephpy/vim-php-cs-fixer'
Plug 'arnaud-lb/vim-php-namespace'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'StanAngeloff/php.vim'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" VueJS
Plug 'posva/vim-vue'

" Distraction Free Writing
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'

call plug#end()
filetype plugin indent on    " required
