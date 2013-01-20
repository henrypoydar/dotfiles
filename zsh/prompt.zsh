autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
  vcs_info
}

ZSH_GIT_PROMPT_DIRTY="▴"
ZSH_GIT_PROMPT_CLEAN=""

ZSH_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_GIT_PROMPT_SUFFIX=" %{$reset_color%}"

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_GIT_PROMPT_SUFFIX"
}

function ruby_prompt_info() {
  rbenv version | awk '{print $1}'
}

function parse_git_dirty() {
  if [[ $((git status 2> /dev/null) | tail -n1) != "nothing to commit, working directory clean" ]]; then
    echo "$ZSH_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_GIT_PROMPT_CLEAN"
  fi
}

local return_code="%(?,%{$fg[gray]%}▸%{$reset_color%},%{$fg[red]%}▸%{$reset_color%})"
 
setopt prompt_subst
PROMPT="${return_code} %{$fg[white]%}%.%{$reset_color%} ${vcs_info_msg_0_}%{$reset_color%}%B$%b "
#PROMPT='${vcs_info_msg_0_}%# '
RPROMPT="%{$fg[red]%}$(ruby_prompt_info)%{$reset_color%}%"

