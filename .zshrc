export HISTFILE=~/.zsh_history
export HISTSIZE=500000
export SAVEHIST=$HISTSIZE
PROMPT="%n@%M %c> "

set -o vi

export BROWSER=firefox
export EDITOR=vim

alias -s png=eog
alias -s jpg=eog
alias -s svg=eog
alias -s pdf=evince

alias -s gz='tar -xzfv'
alias -s bz2='tar -xjvf'
alias -s erl='vim'

alias rm='rm -i'

typeset -g -A key
bindkey '^?' backward-delete-char
bindkey '^[[7~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[8~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char
bindkey '^[[2~' overwrite-mode
bindkey '^R' history-incremental-search-backward
bindkey '^b' beginning-of-line
bindkey '^e' end-of-line
bindkey '^[f' forward-word
bindkey '^[b' backward-word

alias -s st='status'

function start_ssh-agent () {
    if (( `ps ax|grep -c "ssh-agent"` == 1 ))
    then
        ssh-agent | sed 's/^echo/#echo/' > ~/.ssh-env
    fi
    source ~/.ssh-env
}

start_ssh-agent

autoload -U compinit promptinit
compinit
promptinit

#prompt clint

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.profile
