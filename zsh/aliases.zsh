# cd
alias ..='cd ..'

# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

# git
alias g='git'
alias gst='git status'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gd='git diff | mate'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -v -a -m'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'

# so rake doesn't choke on zsh square brackets
alias rake='noglob rake'

# rails
alias tlog='tail -f log/development.log'

# bundler
alias bx='bundle exec'
