"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

nmap <Leader>f :tag<space>				"search for a tag using ctags

" vnoremap <A-v> "+gP					"alt v for pasting from system clipboard
 "alt v for pasting from system clipboard
"inoremap <A-v> <C-r>+
"vnoremap <A-c> "+y					"alt c for copying to system clipboard
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
