. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/appearance
. ~/.zsh/terminal

# Use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  
