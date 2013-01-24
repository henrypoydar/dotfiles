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

