# VIM

* [.vimrc](.vimrc)
* [Plugins](plugins.vim)
* [Keyboard shortcuts and guide](documentation/vim.md)

## Useful

Helpful plugins: https://github.com/itchyny/lightline.vim

## Prerequisites

[Install Vundle](https://github.com/VundleVim/Vundle.vim)

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```


### Required System Packages

#### gvim

```bash
sudo apt install ctags
```

#### ctags

```bash
sudo apt install ctags
```


## Plugins

Plugins are in a different file sourced by the `.vimrc`. The location for this file is set to 
be `~/.vim/plugins.vim`. 

Plugin config files are to be put in `plugin-config` folder and sourced in the `.vimrc

Install Plugins:

Launch `vim` and run `:PluginInstall`

To install from command line: `vim +PluginInstall +qall`


## Optional System changes

* swap `esc` with `caps lock`
  * `dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"`



---

https://github.com/amix/vimrc
