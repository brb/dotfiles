export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="3den"

plugins=(git)

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

autoload -U promptinit
promptinit

[[ -s /home/brb/.autojump/etc/profile.d/autojump.sh ]] && source /home/brb/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

alias rm="rm -i"
alias wiki="vim ~/wiki/index.md"
alias todo="vim ~/todo.txt"
