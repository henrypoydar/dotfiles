# Dotfiles

Sets up my OSX configuration preferences and dependencies for zsh, vim, and other dot-configured packages.

Originally forked from @ryanb, with pastes from @robbyrussell's oh-my-zsh effort, @devjj's vim-config, @holman, @skwp's YADR and open sourced dotfiles from various other nerds.

Tested with MacOS 14.4, "Sonoma", as of this writing.

Customed tailored for me. YMMV.

## Development assumptions

Language and packaging version management is controlled at the project level with [Docker](https://www.docker.com/) or [asdf](https://github.com/asdf-vm/asdf).

## Installation

### Prep

- Install XCode
- Install XCode command line tools: `xcode-select --install`
- Launch XCode and accept terms

### Install

- Git clone this repo into `~/dotfiles` (uses system git, but we'll install a fresh one via Homebrew in the next step)
- Run the script with `rake install` (uses system Ruby)

#### Post Install

Install [Docker desktop](https://www.docker.com/), install [asdf](http://asdf-vm.com/) -- we assume Homebrew for the latter.

Then:

    brew upgrade asdf

    asdf add plugin nodejs
    asdf install nodejs lts

    export RUBY_CONFIGURE_OPTS=--enable-yjit
    asdf add plugin ruby
    asdf install ruby latest

    asdf add plugin yarn
    asdf install yarn latest

    asdf global ruby 3.2.3
    asdf global nodejs lts
    asdf global yarn 1.22.17

_Modify versions as needed_

### General

* Install task invokes homebrew for updates and dependent packages
* Install task installs fonts

### Zsh

* Prompt from powerlevel10k
* "Fasd" fast directory switching tool
* Vimified command line (you start in insert mode)
* Git key bindings (see `zsh/bindings.zsh`)

### Vim

* Single, simple and well-commented `vimrc` - it's all there, including plugin selection
* Special "writing mode" - toggle with `,w`
* Rspecs (or Ruby code) will run out-of-band in Terminal.app via `Cmd+r`
