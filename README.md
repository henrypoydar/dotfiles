# Dotfiles

Sets up my OSX configuration preferences and dependencies for zsh, vim,
and other dot-configured packages.

Originally forked from @ryanb, with pastes from @robbyrussell's
oh-my-zsh effort, @devjj's vim-config, @holman, @skwp's YADR and open
sourced dotfiles from variols other nerds.

Tested with MacOS 12.1, "Monetery", as of this writing. 

Customed tailored for me. YMMV.

## Development Assumptions

Previously, this setup assumed that local version management would be needed for things like Ruby (rbenv), Node (nvm), and PostgreSQL (postgres.app).

Now the assumption is that version management is controlled at the project level with [Docker](https://www.docker.com/) or [asdf](https://github.com/asdf-vm/asdf).
## Installation

### Prep

- Install XCode
- Install XCode command line tools: `xcode-select --install`
- Launch XCode and accept terms
### Install

- Git clone this repo into `~/dotfiles` (uses system git, but we'll install a fresh one via Homebrew in the next step)
- Run the script with `rake install` (uses system Ruby)

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
