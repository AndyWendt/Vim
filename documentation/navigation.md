# Navigation and Movement

### Distraction Free Writing

`:Goyo` to open distraction free writing

### Navigation 

#### Vinegar

* `-` show files in current directory using vinegar plugin 
	* `-` again to go up a level
* `d` create directory
* `D` delete directory or file
* `%` for new file

#### NERDTree

* `NERDTreeToggle`
* `?` find options
* `m` move node
* `a` add node
* `d` delete node
* `c` copy node
* `r` refresh listing
## Folds

* `zR` open all folds

## Movement

* `zz` current line middle of screen
* j,h,k,l for traversing
* left `h`
* right `l`
* up `k`
* down `j`
* top `gg`
* `ctrl+^` go back to previous edit point or location
* `ctrl+d` page down
* `$` move to end of line
* `^` move to first not blank character on line
* `0` to move to first column of line
* `f<char>` move forward to first instance of character
* `<number>f<char>` move forward to Nth character
* `w` forward word
* `b` back word
* `alt+j` move line up
* `alt+k` move line down
* `42G` or `42gg` or `:42` to go to line number
* http://vim.wikia.com/wiki/Go_to_line


## Viewing

* `/<search>` for search

### Buffers
* `:bp` buffer previous
* `:ls` list all buffers
* `:b3` third buffer (found via list)
* `:bd` close tab (buffer)  buffer delete
* `:bp` previous buffer
* `:+up` to cycle through previous commands
* `:bufdo bd!` close every buffer
* `ctrl+wo` make current buffer full screen

### Splits

* `:q` to close out split
	* `ctrl+w` then `q` to close out split
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
		* `:s/<query>/<replace>` to replace the first match on each line
		* `:s/<query>/<replace>/g` to replace all matches on all lines
		* `:Greplace` to run the replace

#### Autocomplete for substitution

http://stackoverflow.com/questions/19730567/vim-auto-completion-on-substitutions-and-searches-in-the-command-line

* visually select for the substitution
* enter normal mode `esc`
* `ctrl+f` to enter commandline window
* start typing substitution and hit `ctrl+p` when needed to autocomplete.  e.g.: `s/star..`

### Ctags

* `:!ctags -R`
* `:tag` to search for a tag (method)
* `:tn` to go to next tag
* `:tp` to go to previous tag
* `:ts` to select from all of the tags available
* `ctrl+]` to go to method from usage. e.g. `$this->myMethod()` goes to `myMethod()` definition
* `,ct` for rebuilding tag cache

