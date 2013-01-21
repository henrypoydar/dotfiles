autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '▴'
zstyle ':vcs_info:*' unstagedstr '▴'
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git
precmd () {
  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
    zstyle ':vcs_info:*' formats '%b%c%u '
  } else {
    zstyle ':vcs_info:*' formats '%b%c%u▴ '
  }
  vcs_info
}

function ruby_prompt_info() {
  rbenv version | awk '{print $1}'
}

local return_code='%(?,%F{gray}▸,%F{red}▸)'

setopt prompt_subst
PROMPT='${return_code} %F{white}%. %F{green}${vcs_info_msg_0_}%{$reset_color%}%B$%b '
RPROMPT='%F{red}$(ruby_prompt_info)%{$reset_color%}'
