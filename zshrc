. ~/.zsh/aliases.zsh
. ~/.zsh/bindings.zsh
. ~/.zsh/config.zsh
. ~/.zsh/colors.zsh
. ~/.zsh/completions.zsh
. ~/.zsh/fasd.zsh
. ~/.zsh/history.zsh
. ~/.zsh/golang.zsh
. ~/.zsh/java.zsh
. ~/.zsh/prompt.zsh
. ~/.zsh/rbenv.zsh
. ~/.zsh/nvm.zsh
. ~/.zsh/vimify.zsh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Get any local environment variables in ~/.env
set -o allexport
source ~/.env
set +o allexport

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/sqlite/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
