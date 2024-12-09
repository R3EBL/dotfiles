export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color
ZSH_THEME="alanpeabody"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias pp='python3'
alias ..="cd .."
alias ...="cd ../.."
alias vis="vi ~/.vimrc"
alias vi="nvim"
[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env"

(cat ~/.cache/wal/sequences)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source /home/r3ebl/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#man() {
#  /usr/bin/man $* | \
#    col -b | \
#   vim -R -c 'set ft=man nomod nolist' -
#}
#
