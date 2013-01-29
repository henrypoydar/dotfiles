# Dotfiles

Sets up my OSX configuration preferences and dependencies for zsh, vim, 
and other dot-configured packages.

Originally forked from @ryanb, with pastes from @robbyrussell's 
oh-my-zsh effort, @devjj's vim-config, @holman, @skwp's YADR and open 
sourced dotfiles from various other nerds.

## Prerequisites

* Mac OSX 10.8+
* Homebrew installed
* zsh as default shell

### Setting shell to use the latest version of zsh

    brew install zsh
    chsh -s /user/local/bin/zsh $USER

Then login again. `which zsh` should read `/usr/local/bin/zsh`

## Installation

    git clone git://github.com/hpoydar/dotfiles ~/dotfiles
    cd ~/dotfiles
    rake install

## Highlights

Customed tailored for me. YMMV.

### General

* Install task invokes homebrew for updates and dependent packages
* Install task invokes `osx` script, which sets up sane OSX preferences 
* Install task installs fonts, most notably _Source Code Pro_
* Pry instead of IRB everywhere

### Zsh

* Simple, custom prompt with a right-hand display of current Ruby version (assumes rbenv)
* "Fasd" fast directory switching tool
* Vimified command line (you start in insert mode)
* Git key bindings (see `zsh/bindings.zsh`)

### Vim

* Single, simple and well-commented `vimrc` - it's all there, including plugin selection
* Special "writing mode" - toggle with `,w`
* Rspecs (or Ruby code) will run out-of-band in Terminal.app via `Cmd+r`
* Custom IR Black variant for MacVim color scheme (solarized is used outside of gui presence)

