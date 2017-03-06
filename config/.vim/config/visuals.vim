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

" remove whitebar at bottom of window while in fullscreen
:set guiheadroom=0
:set guioptions-=e

hi LineNr guibg=bg