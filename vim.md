# Vim

* https://danielmiessler.com/study/vim/
* http://stackoverflow.com/questions/8750275/vim-super-fast-navigation

## Folds

* `zR` open all folds

## File commands 

* Write file `:w <fileName>`
* Write file and quit `:wq`
* Edit a file `:e <filename>` (tab autocomplete works)
* `wa` for writing all files
* `:e!` revert to last save
* `!rm %` remove file

## Vinegar

* `-` show files in current directory using vinegar plugin 
	* `-` again to go up a level
* `d` create directory
* `D` delete directory or file
* `%` for new file

## NERDTree

* `NERDTreeToggle`
* `?` find options
* `m` move node
* `a` add node
* `d` delete node
* `c` copy node
* `r` refresh listing


## Buffers
* `:bp` buffer previous
* `:ls` list all buffers
* `:b3` third buffer (found via list)
* `:bd` close tab (buffer)  buffer delete
* `:bp` previous buffer
* `:+up` to cycle through previous commands
* `:bufdo bd!` close every buffer
* `ctrl+wo` make current buffer full screen


## Modes 

Vim has several different modes

* `esc` to get to Normal mode
* `i` insert mode
* `v` visual (for selecting sections of text by the keyboard to be operated on)
* `V` visual selecting by lines

### Visual mode sub commands

* `d` to delete

## Editing 

* `r` to replace under cursor (e.g. `r"'` to replace `"` with `'`)
* `J` to join bottom line to current line
* `o` line below
* `O` line above
* `shift+>` or `shift+<` for indenting visually selected

### Selecting 

* `vi` for selecting inside (quotes etc) so `vi"` to select inside `""`
* `va` for selecting all include delimeter so `va{` will select the braces and everything inside.

### Sorroundings

* `ci` change inside and puts you in insert mode (i.e. `ci"`)
* `ds` delete sorrounding
* `cs` change sorrounding
* `dst` delete sorrounding tag
* `cst` change sorrounding tag 
* `S` add sorrounding to visual selection


### Deleting

`di` stands for delete inside

* `di+(` for deleting everything in between paranthesis
* `di+"` for deleting everything in between quotes
* `di+'` for deleting everything in between single-quotes


## Movement

* left `h`
* right `l`
* up `k`
* down `j`
* top `gg`
* `ctrl+^` go back to previous edit point or location
* `ctrl+d` page down

## Misc

* command mode `:`
* Current working directory `:pwd`
* Source current file `:so %`
* `.` references last command
* `,ev` edit vim config
* `:!<command>` to run commandline command
* `:reg` to registers (clipboard etc)


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
* `sbuffer 3" split for buffer 3



## Search 
* search `/term`
* next `n`
* previous `N`
* turn off search `,space` actually leader but it works
* ':copen"  show all matches

### folder wide

* `:Ag '<search'` to search for occurence 

### Search and replace
* `:Gsearch` 
	* replace in results file
		* select all lines
		* `:s/<query>/<replace>`
		* `:Greplace` to run the replace

### Ctags

* `:!ctags -R`
* `:tag` to search for a tag (method)
* `:tn` to go to next tag
* `:tp` to go to previous tag
* `:ts` to select from all of the tags available
* `ctrl+]` to go to method from usage. e.g. `$this->myMethod()` goes to `myMethod()` definition
* `,ct` for rebuilding tag cache

## copy pasta
 **Visual Mode**

* `y` for yank (while in visual mode)
* `yy` for yank line
* `p` for paste
* `d` for cut
* `ddp` for switching lines of text


## CtrlP

* `ctrl+d` while in pane to search only for file names
* `ctrl+r` show symbols or tags while in the file
* `ctrl+e` show recently used files
* `F5` to refresh

## Mappings

* `nmap` = normal mode mapping
* `imap` = insert mode mapping
* 

## PHP

* `,su` sort namespaces by length in selection
* `,n` import namespace
* `,nf` use fully qualified namespace
* `ctrl+n` autocomplete choose item then keep typing
* `<Leader>pf` php cs fixer on directory

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
