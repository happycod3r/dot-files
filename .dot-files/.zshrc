# Uncomment if using p10k.
#if [[ ! -n $POWERLEVEL9K_* ]]; then
#    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" 
#    ]]; then
#        builtin source 
#        "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#    fi
#fi

# You can place the .xeta folder anywhere you want, just make sure
# you update the $XETA environment variable to point to your custom
# location. Default is $HOME/.xeta
export XETA="${${(%):-%x}:h}/.xeta"

# Source .xeta once a home directory has been chosen
[[ -f "${XETA}/.xeta" ]] && source "${XETA}/.xeta"

# Define $LANG based on the current location
if [[ -z "$LANG" ]]; then
    eval "$(locale)"
fi

# Choose a default editor for SSH connections
if [[ -n "$SSH_CONNECTION" ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi

# git config --global credential.helper cache
# git config --global credential.helper 'store --file "$XCONFIG/.git-credentials"'
#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
