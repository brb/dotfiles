export HISTFILE=~/.zsh_history
export HISTSIZE=500000
export SAVEHIST=$HISTSIZE
PROMPT="%n@%M %c> "

export BROWSER=firefox
export EDITOR=vim

alias -s png=eog
alias -s jpg=eog
alias -s svg=eog
alias -s pdf=evince

alias -s gz='tar -xzfv'
alias -s bz2='tar -xjvf'

alias -g ecd='cd ~/sandbox/erlang'
alias -g scd='cd ~/sandbox/sumup'

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
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^[f' forward-word
bindkey '^[b' backward-word

#source ~/.autojump/etc/profile.d/autojump.zsh

alias -s st='status'

ssh-reagent () {
    for agent in /tmp/ssh-*/agent.*; do
        export SSH_AUTH_SOCK=$agent
        if ssh-add -l 2>&1 > /dev/null; then
             echo Found working SSH Agent:
             ssh-add -l
             return
        fi
    done
    echo Cannot find ssh agent - maybe you should reconnect and forward it?
}

export ERL_LIBS=/home/martynas/sandbox/erlang

source /home/martynas/.rvm/scripts/rvm

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PERL_LOCAL_LIB_ROOT="/home/martynas/perl5";
export PERL_MB_OPT="--install_base /home/martynas/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/martynas/perl5";
export PERL5LIB="/home/martynas/perl5/lib/perl5/x86_64-linux-gnu-thread-multi:/home/martynas/perl5/lib/perl5";
export PATH="/home/martynas/perl5/bin:$PATH";

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
