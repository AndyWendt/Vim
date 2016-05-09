# Vim

## File commands 

* Write file `:w <fileName>`
* Write file and quit `:wq`
* Edit a file `:e <filename>` (tab autocomplete works)

## Vinegar

* `-` show files in current directory using vinegar plugin 
	* `-` again to go up a level
* `d` create directory
* `D` delete directory or file
* `%` for new file

## NERDTree

* `NERDTreeToggle`
* `?` find options

## Buffers
* `:bp` buffer previous
* `:ls` list all buffers
* `:b3` third buffer (found via list)
* `:bd` close tab (buffer)  buffer delete
* `:bp` previous buffer
* `:+up` to cycle through previous commands


## Modes 

Vim has several different modes

* `esc` to get to Normal mode
* `i` insert mode
* `v` visual (for selecting sections of text by the keyboard to be operated on)
* `V` visual selecting by lines

### Visual mode sub commands

* `d` to delete

## Movement

* left `h`
* right `l`
* up `k`
* down `j`
* top `gg`
* `ctrl+^` go back to previous edit point or location

## Misc

* command mode `:`
* Current working directory `:pwd`
* Source current file `:so %`
* `.` references last command
* `,ev` edit vim config


## Viewing

* `zz` current line middle of screen
* `:e .` show the files & current in the current directory
	* j,h,k,l for traversing
	* `/<search>` for search

### Splits

* `:q` to close out split
* `:sp` for split (default horizontal)
* switching default is `ctrl+w+<movementkey>`
* `:vsp` for vertical split
* `ctrl+w+|` split takes up full
* `ctrl+h+|` split takes up full
* `ctrl+w+=` to normalize

* `ctrl+h`  left split
* `ctrl+l`  right split



## Search 
* search `/term`
* next `n`
* turn off search `,space` actually leader but it works
* 

## copy pasta
 **Visual Mode**

* `y` for yank (while in visual mode)
* `yy` for yank line
* `p` for paste
* `d` for cut


## CtrlP

* `ctrl+d` while in pane to search only for file names
* `ctrl+r` show symbols or tags while in the file
* `ctrl+` show recently used files

## Mappings

* `nmap` = normal mode mapping
* `imap` = insert mode mapping

## vim special character mapping

you can only map one character with another followed by n sets

<BS>           Backspace
<Tab>          Tab
<CR>           Enter
<Enter>        Enter
<Return>       Enter
<Esc>          Escape
<Space>        Space
<Up>           Up arrow
<Down>         Down arrow
<Left>         Left arrow
<Right>        Right arrow
<F1> - <F12>   Function keys 1 to 12
#1, #2..#9,#0  Function keys F1 to F9, F10
<Insert>       Insert
<Del>          Delete
<Home>         Home
<End>          End
<PageUp>       Page-Up
<PageDown>     Page-Down
<bar>          the '|' character, which otherwise needs to be escaped '\|'