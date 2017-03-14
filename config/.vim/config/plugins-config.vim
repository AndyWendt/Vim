"-------------Plugins--------------"

"
" commentary.vim
"
"nmap <c-R> :gcc<cr>

"
"" leafgarland/typescript-vim
"

autocmd FileType typescript :set makeprg=tsc
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"
"" YouCompleteMe ycm
"
let g:ycm_server_python_interpreter = '/usr/bin/python'


"
"" Quramy/tsuquyomi
"
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)

"
" Goyo
"
map <F10> :Goyo <bar> :Limelight!! <bar> :TogglePencil <CR>


"
" Vim-pencil
"
let g:pencil#wrapModeDefault = 'soft'

"
" Vim Markdown
"
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_disabled = 1

"
" Status Line
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
" EasyClip
"
set clipboard=unnamed,unnamedplus

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
