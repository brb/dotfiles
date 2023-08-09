[[ -s /home/brb/.autojump/etc/profile.d/autojump.sh ]] && source /home/brb/.autojump/etc/profile.d/autojump.sh

autoload -U promptinit && promptinit
autoload -U compinit && compinit -u

export EDITOR=nvim
export TERMINAL=alacritty
export PATH="$PATH:$GOPATH/bin:$HOME/sandbox/bin:$HOME/sandbox/dotfiles/bin:$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin"

alias rm="rm -i"
alias wiki="cd ~/wiki && nvim index.md && cd -"
alias cwiki="cd ~/cwiki && nvim index.md && cd -"
alias todo="nvim ~/todo.txt"
alias music="nvim ~/wiki/music/todo.md"
alias god="go doc"
alias trl="trans lt:eng"
alias tre="trans eng:lt"
alias trd="trans de:eng"
alias trede="trans eng:de"
alias k="kubectl"
alias v="nvim"
alias vimdiff='nvim -d'

## History

if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.history
fi

HISTSIZE=9999999999
SAVEHIST=$HISTSIZE

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt inc_append_history

#bindkey '^R' history-incremental-search-backward
#bindkey '^E' history-incremental-search-forward
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

## kubectl

source <(command kubectl completion zsh)
alias k="kubectl"
alias ks="kubectl -n kube-system"

## PROMPT

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '@ %b'
setopt PROMPT_SUBST
PROMPT=$'$%~ %D{[%I:%M:%S] ${vcs_info_msg_0_}\
> '

## fzf

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

gch() {
    git checkout $(git branch | fzf)
}

gg() {
    local tmp=$(git grep -n --color=always "$1" | fzf --ansi)
    if [ ! -z "$tmp" ]; then
        nvim +$(echo $tmp | cut -d: -f2) $(echo $tmp | cut -d: -f1)
    fi
}
