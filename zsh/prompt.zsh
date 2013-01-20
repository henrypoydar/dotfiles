autoload -Uz vcs_info
 
zstyle ':vcs_info:*' stagedstr '▴'
zstyle ':vcs_info:*' unstagedstr '▴'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
precmd () {
  zstyle ':vcs_info:*' formats '%b%c%u '
  vcs_info
}

function ruby_prompt_info() {
  rbenv version | awk '{print $1}'
}

local return_code='%(?,%F{gray}▸,%F{red}▸)'
 
setopt PROMPT_SUBST
PROMPT='${return_code} %F{white}%. %F{green}${vcs_info_msg_0_}%{$reset_color%}%B$%b '
RPROMPT="%F{red}$(ruby_prompt_info)%{$reset_color%}"

