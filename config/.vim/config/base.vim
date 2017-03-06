"----------Terminal Vim changes
set nocompatible


"----------- Pull in plugins ------------------
so ~/.vim/plugins.vim


"------------General----
syntax enable
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ',' 						    	"The default is \, but a comma is much better.
set number								"Let's activate line numbers.

set nowrap

set autowriteall                                                        "automatically save all files
set complete=.,w,b,u                                                    "set desired autocompletion

set expandtab
set tabstop=4
set shiftwidth=4