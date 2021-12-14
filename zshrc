# Uncomment this line and the `zprof` line below to see what's holding things up
# zmodload zsh/zprof

. ~/.zsh/aliases.zsh
. ~/.zsh/bindings.zsh
. ~/.zsh/config.zsh
. ~/.zsh/completions.zsh
. ~/.zsh/fasd.zsh
. ~/.zsh/fzf.zsh
. ~/.zsh/heroku.zsh
. ~/.zsh/history.zsh
# . ~/.zsh/golang.zsh #TODO slow, install Go with brew or not?
. ~/.zsh/java.zsh
. ~/.zsh/prompt.zsh
. ~/.zsh/rbenv.zsh
. ~/.zsh/nvm.zsh
. ~/.zsh/vimify.zsh
. ~/.zsh/yarn.zsh

# zprof
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
