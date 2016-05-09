
"----------Terminal Vim changes
set nocompatible


"----------- Pull in plugins ------------------
so ~/.vim/plugins.vim


"------------General----
syntax enable
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ',' 						    	"The default is \, but a comma is much better.
set number								"Let's activate line numbers.




"-------------Visuals--------------"
colorscheme desert

set t_CO=256								"Use 256 colors. This is useful for Terminal Vim.
set guifont=Source\ Code\ Pro\ 13						"Set the default font family and size.
set linespace=12 							"Macvim-specific line-height.

set guioptions -=m							"disable menu bar
set guioptions -=T							"disable toolbar 

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R




"-------------Search--------------"
set hlsearch								"Highlight all matched terms.
set incsearch								"Incrementally highlight, as we type.




"-------------Split Management--------------"
set splitbelow 								"Make splits default to below...
set splitright								"And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

map <A-v> "+gP					"control shift v for pasting from system clipboard
map <A-c> "+y					"control shift c for copying to system clipboard

"-------------Plugins--------------"

"
" Control P 
"
nmap <c-R> :CtrlPBufTag<cr>			"show the symbols or tags in file 
nmap <c-E> :CtrlPMRUFiles<cr>			"show recently used files
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"
" Nerd Tree 
"
nmap <A-1> :NERDTreeToggle<cr>				"Toggle Nerd Tree

let NERDTreeHijackNetrw = 0

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
