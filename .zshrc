[[ -s /home/brb/.autojump/etc/profile.d/autojump.sh ]] && source /home/brb/.autojump/etc/profile.d/autojump.sh

autoload -U promptinit && promptinit
autoload -U compinit && compinit -u

PROMPT=$'$%~ %D{[%I:%M:%S]}\
> '

export PATH="$PATH:$GOPATH/bin:$HOME/sandbox/bin:$HOME/sandbox/dotfiles/bin"

alias rm="rm -i"
alias wiki="cd ~/wiki && vim index.md && cd -"
alias wwiki="cd ~/wwiki && vim index.md && cd -"
alias todo="vim ~/todo.txt"
alias slog="vim ~/slog.txt"
alias music="vim ~/wiki/music/todo.md"
alias gg="git grep"
alias gch="git checkout"
alias gco="git commit -v"
alias 2k="vim ~/wiki/personal/2017.md"
alias god="go doc"
alias pinigai="vim $HOME/Dropbox/Expenses/`date +%Y_%m`.txt"
alias ydl="docker run -v $(pwd):/download --rm ydl"
alias trl="translate-shell lt:eng"
alias tre="translate-shell eng:lt"
alias ldn="anki-add $HOME/Documents/Anki/brb/collection.anki2 ldn"
alias reads="vim $HOME/Dropbox/reads.md"

## History

if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.history
fi

HISTSIZE=10000
SAVEHIST=10000

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt inc_append_history

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

## Bindings

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
