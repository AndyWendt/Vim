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
colorscheme atom-dark

set t_CO=256								"Use 256 colors. This is useful for Terminal Vim.
set guifont=Source\ Code\ Pro\ 13						"Set the default font family and size.
set linespace=12 							"Macvim-specific line-height.

set guioptions -=m							"disable menu bar
set guioptions -=T							"disable toolbar 

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi LineNr guibg=bg

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

nmap <Leader>f :tag<space>				"search for a tag using ctags

vnoremap <A-v> "+gP					"alt v for pasting from system clipboard
vnoremap <A-c> "+y					"alt c for copying to system clipboard
map <A-a> ggVG						"select all

map <A-v> "+gP					"alt v for pasting from system clipboard
map <A-c> "+y					"alt c for copying to system clipboard

nmap <Leader>f :tag<space>
nmap <Leader>ct :!ctags -R --exclude=node_modules --exclude=bower_components --exclude=public<cr>



"-------------Plugins--------------"

"
" Control P 
"

" show buffer tags and symbols in the file
nmap <c-R> :CtrlPBufTag<cr>		

" show recently used files
nmap <c-E> :CtrlPMRUFiles<cr>

" ignore certain files and directories
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|idea\|bower_components'

" reorder the match window and place it at the top
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"
" Nerd Tree 
"
nmap <A-1> :NERDTreeToggle<cr>				"Toggle Nerd Tree

let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1				"Enable hidden files here but not in ctrl+p.  Need to see them somewhere



"
" greplace 
"

set grepprg=ag						"use ag for search
let g:grep_cmd_opts = '--line-numbers --noheading'

"-------------Auto-Commands--------------"
nmap <Leader>lr :e app/http/routes.php<cr>
nmap <Leader>lm :!php artisan make:


"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
