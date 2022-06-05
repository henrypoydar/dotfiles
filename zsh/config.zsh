export EDITOR='vim'

export PATH="$HOME/bin:$HOME/.bin:$/HOME/.vim/bin:/usr/local/bin:/usr/local/git/libexec/git-core:/usr/local/sbin:/usr/local/mysql/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Increase open file limit
ulimit -n 8000

# Get any local environment variables in ~/.env
set -o allexport
source ~/.env
set +o allexport
