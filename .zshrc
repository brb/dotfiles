export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="3den"

plugins=(git)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit
promptinit

[[ -s /home/brb/.autojump/etc/profile.d/autojump.sh ]] && source /home/brb/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

export PATH="$PATH:$GOPATH/bin:$HOME/sandbox/bin:$HOME/sandbox/misc/dotfiles/bin"

alias rm="rm -i"
alias wiki="cd ~/wiki && vim index.md && cd -"
alias wwiki="cd ~/wwiki && vim index.md && cd -"
alias todo="vim ~/todo.txt"
alias slog="vim ~/slog.txt"
alias music="vim ~/wiki/misc/music.md"
alias gg="git grep"
alias gch="git checkout"
alias gco="git commit -v"
alias 2k="vim ~/wiki/personal/2016.md"
alias vestuves="vim ~/wiki/misc/vestuvesm.md"
alias god="go doc"
alias pinigai="vim $HOME/Dropbox/Expenses/`date +%Y_%m`.txt"
alias ydl="docker run -v $(pwd):/download --rm ydl"
alias trl="trans lt:eng"
alias tre="trans eng:lt"
alias ldn="anki-add $HOME/Documents/Anki/brb/collection.anki2 ldn"
