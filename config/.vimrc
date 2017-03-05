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

"-------------Visuals--------------"
" colorscheme atom-dark
colorscheme Monokai

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
nmap <Leader>es :e ~/.vim/snippets/

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

nmap <Leader>f :tag<space>				"search for a tag using ctags

vnoremap <A-v> "+gP					"alt v for pasting from system clipboard
 "alt v for pasting from system clipboard
inoremap <A-v> <C-r>+ 
vnoremap <A-c> "+y					"alt c for copying to system clipboard
"alt c for copying to system clipboard

" write file
nmap <Leader>w :w<cr>

" select all
nmap <A-a> ggVG

map <A-v> "+gP					"alt v for pasting from system clipboard
map <A-c> "+y					"alt c for copying to system clipboard

nmap <Leader>f :tag<space>
nmap <Leader>ct :!ctags -R --exclude=node_modules --exclude=bower_components --exclude=public --PHP-kinds=+cf<cr>

" Indent the file
nmap <Leader>if     gg=G<cr>


" move line mappings
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"-------------Plugins--------------"

"
" commentary.vim
"
"nmap <c-R> :gcc<cr>


"
" Lightline
"

set laststatus=2
" get rid of the extraneous default vim mode information
set noshowmode


"
" Syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'


"
" stephpy/vim-php-cs-fixer 
"
let g:php_cs_fixer_level = "psr2" 
nnoremap <silent><leader>pf :call PhpCsFixerFixDirectory()<CR>

"
" PHP indent 
"
let g:PHP_vintage_case_default_indent = 1 


"-------------Laravel Helpers--------------"
nmap <Leader>lr :e app/http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader>lfa :CtrlP<cr>app/

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"------------- Php improvements --------------"

"organize namespaces by length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-"}'<cr> 

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
