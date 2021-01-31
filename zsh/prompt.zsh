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

local vi_insert_indicator='%F{gray}▸'
local vi_normal_indicator='%F{white}▸'
local return_code="%(?,${vi_insert_indicator},%F{red}▸)"

setopt prompt_subst

# Default prompt
PROMPT=' %F{white}%c %F{green}${vcs_info_msg_0_}%f%{$reset_color%}$ '

# Change the prompt for Vi modes
function zle-line-init zle-keymap-select {
  local_vi_mode="${${KEYMAP/vicmd/${vi_normal_indicator}}/(main|viins)/${vi_insert_indicator}}"
  PROMPT='${local_vi_mode} %F{white}%c %F{green}${vcs_info_msg_0_}%f%{$reset_color%}$ '
  zle reset-prompt
  }

function zle-keymap-select zle-line-init zle-line-finish {
  case $KEYMAP in
    vicmd)      print -n -- "\E]50;CursorShape=0\C-G";; # block cursor
    viins|main) print -n -- "\E]50;CursorShape=1\C-G";; # line cursor
  esac

  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select