
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    builtin source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XETA="$HOME/.xeta"

[[ -f "${XETA}/xenv/startup.zsh" ]] && builtin source "${XETA}/xenv/startup.zsh"

if [[ -z "$LANG" ]]; then
    eval "$(locale)"
fi

if [[ -n "$SSH_CONNECTION" ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi

[[ -f "${XETA}/.xeta" ]] && builtin source "${XETA}/.xeta"


