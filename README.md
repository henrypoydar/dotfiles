# Dotfiles

Sets up my OSX configuration preferences and dependencies for zsh, vim, 
and other dot-configured packages.

Originally forked from @ryanb, with pastes from @robbyrussell's 
oh-my-zsh effort, @devjj's vim-config, @holman, @skwp's YADR and open 
sourced dotfiles from various other nerds.

## Installation

    git clone git://github.com/hpoydar/dotfiles ~/dotfiles
    cd ~/dotfiles
    rake install

## Vim

Currently using the http://vim.spf13.com/ distribution,
so this repo contains customizations to that for Vim, and assumes
it's installed.

### Installing/updating bundles

The spf13 distribution uses vundle for bundle customization. Changes should
be made in `vimrc.bundles.local`. Afterwards, you'll have to cleanup the 
local installation of the bundles with a combination of:

    vim +BundleClean +q
    vim +BundleInstall! +q

## TODO

* Prompt to include unsaved files
* Need commented stuff in zsh/config?
* OSX / Mountain Lion setup script
* Sublime setup (maybe - still back with Vim now)
* None of the bash stuff is verified (I'm on zsh)
* On install pull in a private repo of ssh aliases into ssh/config
