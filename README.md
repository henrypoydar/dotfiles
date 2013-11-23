# Dotfiles

Sets up my OSX configuration preferences and dependencies for zsh, vim,
and other dot-configured packages.

Originally forked from @ryanb, with pastes from @robbyrussell's
oh-my-zsh effort, @devjj's vim-config, @holman, @skwp's YADR and open
sourced dotfiles from various other nerds.

## OSX 10.9 Mavericks notes

### PostgreSQL

Install XCode CLT first, which is now a download from Apple Developer site.
Then don't forget to initialize a DB first (this isn't in the Homebrew post-install notes):

    initdb /usr/local/var/postgres -E utf8

### Java

Use Java 7 from Oracle at http://www.java.com

### General

Other hints: https://gist.github.com/g3d/2709563

## Prerequisites

* Mac OSX 10.8+
* Homebrew installed
* zsh as default shell

### Setting shell to use the latest version of zsh

    brew install zsh
    chsh -s /usr/local/bin/zsh $USER

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
