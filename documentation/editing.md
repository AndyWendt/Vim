# Editing

* `r` to replace under cursor (e.g. `r"'` to replace `"` with `'`)
* `J` to join bottom line to current line
* `o` add line below and go into insert mode
* `O` add line above and go into insert mode
* `shift+>` or `shift+<` for indenting visually selected

### Insert mode

* `i` to place the cursor before the normal mode selection
* `a` to place the cursor after the normal mode selection
* `shift-I` place cursor before first character of the line
* `shift-A` place cursor after last character of the line

### Selecting 

* `vi` for selecting inside (quotes etc) so `vi"` to select inside `""`
* `va` for selecting all including delimeter so `va{` will select the braces and everything inside.
* `ci` change inside and puts you in insert mode (i.e. `ci"`)

### Sorroundings

* `ds` delete sorrounding
* `cs` change sorrounding
* `dst` delete sorrounding tag
* `cst` change sorrounding tag 
* `cit` change inside tag
* `S` add sorrounding to visual selection
* visual select + `:norm vss'` to sorround lines with `'`


### Deleting

* [deleting backwards tricks](http://stackoverflow.com/questions/1373841/vim-deleting-backword-tricks)

`di` stands for delete inside

* `di+(` for deleting everything in between paranthesis
* `di+"` for deleting everything in between quotes
* `di+'` for deleting everything in between single-quotes
* `x` delete character under cursor
* `3x` delete 3 characters forward.  Capital for reverse
* `^D` delete all characters on line starting from first non-whitespace
* `0D` delete all characters on line including whitespace		


