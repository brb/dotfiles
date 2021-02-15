[[ -s /home/brb/.autojump/etc/profile.d/autojump.sh ]] && source /home/brb/.autojump/etc/profile.d/autojump.sh

autoload -U promptinit && promptinit
autoload -U compinit && compinit -u

PROMPT=$'$%~ %D{[%I:%M:%S]}\
> '

export PATH="$PATH:$GOPATH/bin:$HOME/sandbox/bin:$HOME/sandbox/dotfiles/bin:$HOME/bin:$HOME/.local/bin"

alias rm="rm -i"
alias wiki="cd ~/wiki && vim index.md && cd -"
alias cwiki="cd ~/cwiki && vim index.md && cd -"
alias todo="vim ~/todo.txt"
alias slog="vim ~/slog.txt"
alias music="vim ~/wiki/music/todo.md"
alias gg="git grep"
alias gch="git checkout"
alias gco="git commit -v"
alias 2k="vim ~/wiki/personal/2020.md"
alias god="go doc"
alias pinigai="vim $HOME/Dropbox/Expenses/`date +%Y_%m`.txt"
alias ydl="docker run -v $(pwd):/download --rm ydl"
alias trl="trans lt:eng"
alias tre="trans eng:lt"
alias trd="trans de:eng"
alias trede="trans eng:de"
alias ldn="anki-add $HOME/Documents/Anki/brb/collection.anki2 ldn"
alias k="kubectl"

## History

if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.history
fi

HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt inc_append_history

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey -v
bindkey '^R' history-incremental-search-backward

## Bindings

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

## kubectl
source <(command kubectl completion zsh)
# kubectl () {
#    command kubectl $*
#    if [[ -z $KUBECTL_COMPLETE ]]
#    then
#        source <(command kubectl completion zsh)
#        KUBECTL_COMPLETE=1
#    fi
#}

alias k="kubectl"
alias ks="kubectl -n kube-system"

export EDITOR=vim
