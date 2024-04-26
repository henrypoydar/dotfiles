# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

. ~/.zsh/aliases.zsh
. ~/.zsh/asdf.zsh
. ~/.zsh/bindings.zsh
. ~/.zsh/config.zsh
. ~/.zsh/docker.zsh
. ~/.zsh/completions.zsh
. ~/.zsh/fasd.zsh
. ~/.zsh/fzf.zsh
. ~/.zsh/history.zsh
. ~/.zsh/vimify.zsh
. ~/.zsh/yarn.zsh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
