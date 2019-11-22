# Dotfiles

Sets up my OSX configuration preferences and dependencies for zsh, vim,
and other dot-configured packages.

Originally forked from @ryanb, with pastes from @robbyrussell's
oh-my-zsh effort, @devjj's vim-config, @holman, @skwp's YADR and open
sourced dotfiles from variols other nerds.

Tested with OSX 10.15, "Catalina", as of this writing. Catalina (and
presumably future versions) default to zsh instead of bash.

## Installation

### Prep

- Install XCode
- Install XCode command line tools: `xcode-select --install`
- Launch XCode and accept terms
- Install Postgres with http://postgresapp.com/ (not via homebrew)

### Install

- Git clone this repo into `~/dotfiles`
- Run the script with `rake install`

### After Install

- Use rbenv to install at globally set the latest Ruby version (homebrew)
- Install node and nvm with  http://yoember.com/nodejs/the-best-way-to-install-node-js/ (no brew)
- Use nvm to install and globally set the latest Node and npm version

## Highlights

Customed tailored for me. YMMV.

### General

* Install task invokes homebrew for updates and dependent packages
* Install task installs fonts, most notably _Source Code Pro_
* Pry instead of IRB everywhere

### Zsh

* Simple, custom prompt with a right-hand display of current Ruby and Node versions (assumes rbenv and nvm, which the script installs)
* "Fasd" fast directory switching tool
* Vimified command line (you start in insert mode)
* Git key bindings (see `zsh/bindings.zsh`)

### Vim

* Single, simple and well-commented `vimrc` - it's all there, including plugin selection
* Special "writing mode" - toggle with `,w`
* Rspecs (or Ruby code) will run out-of-band in Terminal.app via `Cmd+r`
