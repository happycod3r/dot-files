
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.xeta/xenv/startup.zsh

export XETA="$HOME/.xeta"
export GT="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"

XTHEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="%F{cyan}.....%f" #=true for default. 

if [[ -z "$LANG" ]]; then
    eval "$(locale)"
fi

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi

source $HOME/.xeta/.xeta

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
