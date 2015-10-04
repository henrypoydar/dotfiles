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

function node_prompt_info() {
  nvm version | awk '{print $1}'
}

local vi_insert_indicator='%F{gray}▸'
local vi_normal_indicator='%F{white}▸'
local return_code="%(?,${vi_insert_indicator},%F{red}▸)"

setopt prompt_subst

# Default prompt
PROMPT='${return_code} %F{white}%. %F{green}${vcs_info_msg_0_}%{$reset_color%}%B$%b '
RPROMPT='%F{red}$(ruby_prompt_info) %F{blue}$(node_prompt_info)%{$reset_color%}'

# Change the prompt for Vi modes
function zle-line-init zle-keymap-select {
  local_vi_mode="${${KEYMAP/vicmd/${vi_normal_indicator}}/(main|viins)/${vi_insert_indicator}}"
  PROMPT='${local_vi_mode} %F{white}%. %F{green}${vcs_info_msg_0_}%{$reset_color%}%B$%b '
  zle reset-prompt
  }

zle -N zle-line-init
zle -N zle-keymap-select