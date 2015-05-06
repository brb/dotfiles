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
alias wiki="cd ~/wiki && vim index.md && cd -"
alias todo="vim ~/todo.txt"
alias slog="vim ~/slog.txt"
alias gg="git grep"
alias gch="git checkout"
alias gco="git commit -v"
alias gob="~/sandbox/go/misc/go-brb/bin/go"
alias gobf="GOOS=barrelfish gob build -x -ldflags \"-v -linkmode external '-extldflags=-static -nostdlib'\""
