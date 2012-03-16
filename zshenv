# This is the only file that vim will source, so run the rvm scripts
# so rails.vim works.
# See: http://zsh.sourceforge.net/Guide/zshguide02.html#l9
# Explanation here:
# http://gabebw.wordpress.com/2010/08/02/rails-vim-rvm-and-a-curious-infuriating-bug/

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
