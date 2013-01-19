ZSH_GIT_PROMPT_DIRTY="▴"              # Text to display if the branch is dirty
ZSH_GIT_PROMPT_CLEAN=""               # Text to display if the branch is clean

local return_code="%(?,%{$fg[gray]%}▸%{$reset_color%},%{$fg[red]%}▸%{$reset_color%})"
 
PROMPT='${return_code} %{$fg[white]%}%.%{$reset_color%} $(git_prompt_info)%{$reset_color%}%B$%b '
 
ZSH_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_GIT_PROMPT_SUFFIX=" %{$reset_color%}"

RPROMPT='%{$fg[red]%}$(ruby_prompt_info)%{$reset_color%}%'

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_GIT_PROMPT_SUFFIX"
}

function ruby_prompt_info() {
  rbenv version | awk '{print $1}'
}

function parse_git_dirty() {
  if [[ $((git status 2> /dev/null) | tail -n1) != "nothing to commit (working directory clean)" ]]; then
    echo "$ZSH_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_GIT_PROMPT_CLEAN"
  fi
}
