
#////// * ENABLE/DISABLE COMPLETIONS FUNCTIONALITY *//////
#Compdef is basically a function used by zsh for load the auto-completions. The completion #system needs to be activated. If you’re using something like oh-my-zsh then this is #already taken care of, otherwise you’ll need to add the following to uncomment
#the following.
#autoload -Uz compinit
#compinit
#//////

#////// * ENABLE/DISABLE INSTANT PROMPT * //////
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#//////

#////// * $PATH VARIABLE VALUES * //////
# If you come from bash you might have to change your $PATH.
#//////

#////// * OH-MY-ZSH INSTALLATION PATH * //////
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#//////

#////// * XCONFIG * //////
export XETA="$HOME/.xeta"
export XFILES="$XETA/xfiles"
export XPLUGS="$XETA/xplug_ins"
#//////

#////// * ZSH THEME * //////
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
#robbyrussell, rkj-repos, agnoster, fino-time, steeef, bira, gnzh, jonathan
#//////

#////// * CASE SENSITIVE COMPLETION * //////
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
#//////

#////// * HYPHEN INSENSITIVE COMPLETION * //////
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
#//////

#////// * UPDATE SETTINGS * //////
# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13
#//////

#////// * DISABLE/ENABLE MAGIC FUNCTIONS * //////
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
#//////

#////// * DISABLE LS COLORS * //////
# Uncomment the following line to disable colors in ls
# DISABLE_LS_COLORS="true"
#//////

#////// * ENABLE/DISABLE AUTO TITLE * //////
# Uncomment the following line to disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"
#//////

#////// * ENABLE/DISABLE AUTO-CORRECTION * //////
# Uncomment the following line to enable command auto-correction
# ENABLE_CORRECTION="true"
#//////

#////// * ENABLE/DISABLE WAITING RED DOTS * //////
# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"
#//////

#////// * ENABLE/DISABLE MARKING UNTRACKED FILES * //////
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
#//////

#////// * CHANGE COMMAND EXECUTION TIME * //////
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
#//////

#////// * CUSTOM ZSH FOLDER/S * //////
# Would you like to use another custom folder other than $ZSH/custom?
#ZSH_CUSTOM=~/.xeta/.xplug_ins/
#//////

#////// * ENABLE/DISABLE PLUGINS * //////
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup
plugins=(git github node react-native)
#//////

#////// * XPLUGINS * //////
if [ -f $XFILES/.xfunctions ]; then
    . $XFILES/.xfunctions
fi
if [ -f $XFILES/.xplugins ]; then
    . $XFILES/.xplugins
fi
#//////

#////// * SOURCE * //////
source $ZSH/oh-my-zsh.sh
#//////

#////// * MANPATH * //////
# export MANPATH="/usr/local/man:$MANPATH"
#//////

#////// * LANGUAGE * //////
# You may need to manually set your language environment
export LANG=en_US.UTF-8
#//////

#////// * PREFERRED EDITOR * //////
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi
#//////

#////// * COMPILATION FLAGS * //////
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#//////

#////// * PERSONAL FILES * //////
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
if [ -f $XFILES/.xaliases ]; then
    . $XFILES/.xaliases
fi
if [ -f $XFILES/.xjump_points ]; then
    . $XFILES/.xjump_points
fi
if [ -f $XFILES/.xpath ]; then
    . $XFILES/.xpath
fi
if [ -f $XFILES/.xkey_binds ]; then
    . $XFILES/.xkey_binds
fi
#//////

#////// * CUSTOMIZE PROMPT * //////
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#//////

#////// ZSH SYNTAX HIGHLIGHTER
source $XPLUGS/zsh_syntax_highlighting/zsh_syntax_highlighting.plug
#//////

#////// * COMMANDS TO EXECUTE BEFORE PROMPT * //////
#task ls
#//////
