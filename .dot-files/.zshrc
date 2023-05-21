
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.xeta/xenv/startup.zsh

export XETA="$HOME/.xeta"

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
source /mnt/chromeos/GoogleDrive/MyDrive/dev/projects/shell/zsh/fzf-tools/fzf-tools.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
