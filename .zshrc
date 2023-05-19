
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#remove
source /home/happycod3r/.xeta/dev/debug.sh
#/////////

source $HOME/.xeta/xenv/startup/startup.zsh

export XETA="$HOME/.xeta"

XTHEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="%F{cyan}.....%f" #=true for default. 

#export LANG=en_US.UTF-8
if [[ -z "$LANG" ]]; then
    eval "$(locale)"
fi

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi

source $HOME/.xeta/.xeta

# Point builtin extensions to their dependencies in $XBIN/dependencies

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
