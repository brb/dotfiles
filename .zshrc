export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="3den"

plugins=(git)

#export PATH=$HOME/bin:/usr/local/bin:$HOME/sandbox/bin:$PATH
source $ZSH/oh-my-zsh.sh

autoload -U promptinit
promptinit

[[ -s /home/brb/.autojump/etc/profile.d/autojump.sh ]] && source /home/brb/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

#export GOPATH="$HOME/sandbox/go"
#
export PATH="$PATH:$GOPATH/bin:$HOME/sandbox/bin"

alias rm="rm -i"
alias wiki="cd ~/wiki && vim index.md && cd -"
alias todo="vim ~/todo.txt"
alias slog="vim ~/slog.txt"
alias music="vim ~/wiki/misc/music.md"
alias gg="git grep"
alias gch="git checkout"
alias gco="git commit -v"
alias 2k="vim ~/wiki/personal/2016.md"
alias god="go doc"
alias pinigai="vim $HOME/Dropbox/Expenses/`date +%Y_%m`.txt"
#alias gob="~/sandbox/go/misc/go-brb/bin/go"
#alias gob="~/sandbox/go/misc/builds/go-1.5beta-bf/bin/go"
#alias gobf="GOOS=barrelfish gob build -x -ldflags \"-v -linkmode external '-extldflags=-static -nostdlib'\""
#export PATH=$PATH:$GOPATH/bin
