# Vim

## Resources 

### Guides and Tips

* https://medium.com/hacking-and-gonzo/10-vim-tricks-you-should-know-6393842b3537#.6jldhnolk
* http://nvie.com/posts/how-i-boosted-my-vim/
* https://duckduckgo.com/?ia=cheatsheet&iax=1&q=vim+cheat+sheet

### Search and Regex
* http://vim.wikia.com/wiki/Search_and_replace
* http://vimregex.com/#substitute
* http://stackoverflow.com/questions/594448/how-can-i-add-a-string-to-the-end-of-each-line-in-vim

### Navigation and editing
* http://stackoverflow.com/questions/8750275/vim-super-fast-navigation
* http://superuser.com/questions/147715/vim-insert-empty-line-above-current-line-not-open-i-e-without-entering-inser
* http://stackoverflow.com/questions/7406949/vim-faster-way-to-select-blocks-of-text-in-visual-mode
* http://stackoverflow.com/questions/253380/how-do-i-insert-text-at-beginning-of-a-multi-line-selection-in-vi-vim
* http://vim.wikia.com/wiki/Moving_lines_up_or_down

## Commands 



## Vim-Fugitive Git

https://github.com/tpope/vim-fugitive

```vim
:Gstatus
:Gedit
:Gcommit
:Gblame
:Ggrep
:Gbrowse
:Gdiff
:Gmove
```

### Status mode

In status mode, use `-` to add a file to the stage. 

Use `U` to revert a file. 


## Buffer

https://github.com/maxbrunsfeld/vim-yankstack

`meta-p` - cycle backward through your history of yanks
`meta-shift-p` - cycle forwards through your history of yanks

See yanks by `:Yanks`



## Comments

`:gcc`
`:gcgc`


## File commands 

* Write file `:w <fileName>`
* Write file and quit `:wq`
* Edit a file `:e <filename>` (tab autocomplete works)
* `wa` for writing all files
* `:e!` revert to last save
* `!rm %` remove file
* `:e .` show the files & current in the current directory



## Modes 

Vim has several different modes

* `esc` to get to Normal mode
* `i` insert mode
* `v` visual (for selecting sections of text by the keyboard to be operated on)
* `V` visual selecting by lines


## Misc

* command mode `:`
* Current working directory `:pwd`
* `:source ~/.vimrc` to source a .vimrc
* Source current file `:so %`
* `.` references last command
* `,ev` edit vim config
* `:!<command>` to run commandline command
* `:reg` to registers (clipboard etc)

