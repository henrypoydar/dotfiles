# Henry Poydar Dot Files

These are config files to set up a system the way I like it.

Forked from Ryan Bates, with pastes from Robby Russel's oh-my-zsh effort,
and devjj's vim-config effort.

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

## Privacy

There is some sensitive stuff in this repo, necessitated by convenience. Keep it private.
